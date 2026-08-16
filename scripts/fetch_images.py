# -*- coding: utf-8 -*-
"""
Lấy ảnh minh hoạ từ Unsplash cho các từ vựng CỤ THỂ, rồi sinh file SQL.

Vì sao phải chạy nhiều lần:
    App demo của Unsplash chỉ cho 50 request/giờ. Script này nhớ kết quả đã
    lấy vào .image_cache.json, nên cứ chạy lại là nó bỏ qua từ đã có và làm
    tiếp từ chưa có. Hết hạn mức thì dừng gọn, không mất dữ liệu.

Cách dùng (trong thư mục dự án):
    set UNSPLASH_ACCESS_KEY=xxx        (Windows CMD)
    export UNSPLASH_ACCESS_KEY=xxx     (Git Bash)
    python scripts/fetch_images.py

    python scripts/fetch_images.py --review   # xem lại ảnh đã lấy, không gọi API
    python scripts/fetch_images.py --drop tu1 tu2   # bỏ ảnh xấu để lấy lại

Chỉ lấy ảnh cho từ CỤ THỂ (con vật, đồ ăn, đồ vật...). Từ trừu tượng như
"although", "budget", "quality" thì ảnh không giúp nhớ mà còn gây nhiễu, nên
bỏ qua hẳn — xem SKIP bên dưới.
"""
import json, os, re, sys, time, urllib.parse, urllib.request

ROOT      = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SUPA      = os.path.join(ROOT, "supabase")
CACHE     = os.path.join(os.path.dirname(os.path.abspath(__file__)), ".image_cache.json")
OUT_SQL   = os.path.join(SUPA, "vocab_images.sql")
SEEDS     = ["vocab_seed_topics.sql", "vocab_seed_topics_02.sql",
             "vocab_seed_topics_03.sql", "vocab_seed_topics_04.sql"]

# ---------------------------------------------------------------------------
# CHỌN TỪ ĐỂ LẤY ẢNH
#   - Chỉ những chủ đề liệt kê ở đây mới lấy ảnh.
#   - "skip"  : từ trong chủ đề đó nhưng quá trừu tượng, bỏ qua.
#   - "query" : từ mà tra thẳng sẽ ra ảnh sai nghĩa → đổi từ khoá tìm kiếm.
#               Ví dụ "orange" ra ảnh màu cam, phải tra "orange fruit".
# ---------------------------------------------------------------------------
PLAN = {
 13: {"name": "Animals", "skip": ["wild", "bark", "feed", "insect"],
      "query": {"mouse": "small mouse rodent", "bear": "bear animal", "fish": "fish underwater",
                "fur": "animal fur close up", "wing": "bird wing", "tail": "cat tail",
                "nest": "bird nest", "pet": "pet dog cat", "farm": "farm barn field",
                "cage": "animal cage", "duck": "duck bird",
                # tra thang ra anh sai: "spider" ra truyen tranh, "goose" ra vit
                "spider": "spider arachnid web", "goose": "goose white bird",
                "feather": "single feather close up", "fox": "red fox wildlife",
                "animal": "wild animals herd"}},
 2:  {"name": "Food", "skip": ["delicious", "taste", "order", "spicy", "ingredient",
                               "leftover", "sweet", "sour", "salty", "fresh", "hungry"],
      "query": {"orange": "orange fruit", "meal": "meal on table", "recipe": "recipe cookbook",
                "beverage": "drinks beverages", "fry": "frying food pan", "boil": "boiling pot water",
                "oil": "cooking oil bottle", "meat": "raw meat", "salt": "salt bowl",
                "pepper": "black pepper", "sauce": "sauce bowl", "butter": "butter block"}},
 12: {"name": "Home", "skip": ["tidy", "messy", "rent", "neighborly", "home"],
      "query": {"room": "living space room", "floor": "wooden floor", "key": "house keys",
                "sink": "kitchen sink", "shelf": "bookshelf", "stove": "kitchen stove",
                "drawer": "open drawer", "yard": "house yard", "gate": "garden gate"}},
 11: {"name": "Clothes", "skip": ["wear", "fashion", "size"],
      "query": {"clothes": "clothes on rack", "cotton": "cotton fabric",
                "leather": "leather material", "silk": "silk fabric", "wool": "wool yarn",
                "vest": "vest clothing", "heel": "high heel shoe", "collar": "shirt collar",
                "sleeve": "shirt sleeve", "pocket": "jeans pocket", "button": "shirt button",
                "zipper": "zipper close up", "watch": "wrist watch", "ring": "gold ring"}},
 7:  {"name": "Nature", "skip": ["weather", "temperature", "climate", "season",
                                 "sunny", "cloudy", "windy", "humid", "wind"],
      "query": {"rock": "large rock stone", "ice": "ice block", "stream": "forest stream",
                "soil": "soil earth ground", "mud": "muddy ground", "sky": "blue sky clouds"}},
 8:  {"name": "City", "skip": ["crowded", "quiet", "downtown", "suburb", "neighborhood"],
      "query": {"square": "city square plaza", "corner": "street corner",
                "station": "train station", "bank": "bank building", "parking": "parking lot",
                "traffic": "city traffic", "alley": "narrow alley", "gym": "gym interior"}},
 18: {"name": "Transport", "skip": ["transport", "vehicle", "drive", "ride", "reverse",
                                    "accelerate", "speed", "speed limit", "fine", "toll",
                                    "fare", "repair", "breakdown", "license"],
      "query": {"trunk": "car trunk open", "tire": "car tire", "horn": "car horn",
                "brake": "car brake pedal", "engine": "car engine", "fuel": "fuel pump",
                "petrol": "petrol pump", "lane": "highway lane", "crash": "car crash",
                "accident": "car accident road", "van": "delivery van",
                "mechanic": "mechanic repairing car", "timetable": "bus timetable board"}},
 15: {"name": "Sports", "skip": ["sport", "win", "lose", "draw", "defeat", "victory",
                                 "practice", "training", "warm up", "workout", "score",
                                 "point", "game", "match", "tournament", "championship",
                                 "league", "champion", "opponent"],
      "query": {"net": "sports net", "field": "football field", "court": "tennis court",
                "track": "running track", "ball": "sports ball", "fan": "sports fans crowd",
                "team": "sports team", "goal": "football goal post"}},
 16: {"name": "Technology", "skip": ["technology", "internet", "website", "browser",
                                     "password", "account", "download", "upload", "software",
                                     "hardware", "app", "update", "install", "file", "folder",
                                     "data", "network", "wifi", "online", "offline", "digital",
                                     "social media", "message", "video call", "search", "click",
                                     "scroll", "share", "post", "comment", "artificial intelligence",
                                     "malware", "backup", "storage", "server", "code", "program",
                                     "device"],
      "query": {"screen": "computer screen", "charger": "phone charger",
                "battery": "batteries", "touchpad": "laptop touchpad"}},
 3:  {"name": "Travel", "skip": ["travel", "journey", "destination", "reservation",
                                 "sightseeing", "itinerary", "departure", "arrival", "delay",
                                 "customs", "check in", "check out", "book", "accommodation",
                                 "abroad", "foreign", "currency", "exchange", "insurance",
                                 "adventure", "explore", "vacation", "route", "trip", "flight"],
      "query": {"gate": "airport gate", "ticket": "travel ticket", "guide": "tour guide",
                "landmark": "famous landmark", "resort": "beach resort"}},
 6:  {"name": "Health", "skip": ["healthy", "illness", "disease", "pain", "recover",
                                 "appointment", "symptom", "breathe", "injury", "allergy",
                                 "infection", "treatment", "diet", "nutrition", "fitness",
                                 "dizzy", "checkup", "hygiene", "emergency", "exercise",
                                 "cold", "flu", "sore throat", "stomachache", "toothache",
                                 "headache", "fever", "sleep"],
      "query": {"blood": "blood test tube", "heart": "human heart anatomy",
                "lung": "lungs anatomy", "bone": "human bone", "muscle": "muscle anatomy",
                "stomach": "stomach anatomy", "pill": "pills medicine", "wound": "bandaged wound",
                "virus": "virus microscope", "vaccine": "vaccine syringe",
                "surgery": "surgery operating room", "prescription": "medical prescription"}},
 4:  {"name": "Work & School", "skip": ["job", "work", "career", "experience", "skill", "task",
                                        "project", "report", "email", "overtime", "break",
                                        "retire", "department", "customer", "meeting",
                                        "deadline", "homework", "schedule", "salary",
                                        "assignment", "promotion", "presentation", "teamwork",
                                        "colleague", "lesson", "subject", "exam", "test",
                                        "grade", "degree", "graduate", "study", "learn",
                                        "scholarship", "knowledge", "interview", "resume",
                                        "employee", "employer", "staff"],
      "query": {"boss": "business manager office", "manager": "office manager",
                "company": "office building company", "school": "school building",
                "university": "university campus", "student": "student studying",
                "teacher": "teacher classroom", "classroom": "empty classroom",
                "notebook": "notebook paper", "pen": "pen writing"}},
 1:  {"name": "Daily Life", "skip": ["routine", "errand", "chore", "commute", "bedtime",
                                     "housework", "get up", "get dressed", "make the bed",
                                     "clean", "shopping", "rest", "relax", "sleepy", "awake",
                                     "hobby", "habit", "free time", "busy", "hurry", "prepare",
                                     "arrive", "rush hour", "weekday", "chat", "wake up",
                                     "brush", "wash", "cook", "nap"],
      "query": {"bath": "bathtub", "soap": "soap bar", "shower": "shower head",
                "laundry": "laundry basket clothes", "iron": "clothes iron",
                "sweep": "broom sweeping", "mop": "mop floor cleaning",
                "vacuum": "vacuum cleaner", "trash": "trash bin", "dishes": "dirty dishes sink",
                "comb": "hair comb", "snack": "snack food", "lunch": "lunch plate",
                "dinner": "dinner table", "breakfast": "breakfast plate",
                "alarm clock": "alarm clock", "newspaper": "newspaper"}},
 17: {"name": "Shopping", "skip": ["shop", "store", "customer", "price", "cost", "cheap",
                                   "expensive", "discount", "sale", "bargain", "offer",
                                   "refund", "return", "warranty", "guarantee", "payment",
                                   "change", "total", "tax", "brand", "product", "goods",
                                   "item", "quality", "quantity", "stock", "delivery",
                                   "shipping", "wrap", "try on", "afford", "spend", "save",
                                   "budget", "window shopping", "checkout", "counter"],
      "query": {"receipt": "shopping receipt", "bill": "paper bill invoice",
                "cash": "cash money banknotes", "credit card": "credit card",
                "coupon": "discount coupon", "aisle": "supermarket aisle",
                "trolley": "shopping trolley cart", "basket": "shopping basket",
                "queue": "people queue line", "package": "delivery package box",
                "parcel": "parcel box", "cashier": "cashier counter store",
                "shopkeeper": "shopkeeper store", "fitting room": "fitting room store"}},
}

UA = "englishex-vocab/1.0"


def load_words():
    """Đọc từ vựng + id từ các file seed, gom theo số thứ tự chủ đề."""
    topic_name, by_topic = {}, {}
    for f in SEEDS:
        txt = open(os.path.join(SUPA, f), encoding="utf-8").read()
        for m in re.finditer(
            r"\('(e1000000-[0-9a-f-]+)', 'e0000000-[0-9a-f-]+', '((?:[^']|'')*)', (\d+)\)", txt):
            topic_name[m.group(1)] = int(m.group(3))
        for m in re.finditer(
            r"^\('([0-9a-f-]{36})', '(e1000000-[0-9a-f-]+)', '((?:[^']|'')*)'", txt, re.M):
            wid, tid, word = m.group(1), m.group(2), m.group(3).replace("''", "'")
            by_topic.setdefault(tid, []).append((word, wid))
    out = {}
    for tid, rows in by_topic.items():
        out[topic_name[tid]] = rows
    return out


def targets():
    """Danh sách (từ, word_id, từ khoá tìm ảnh) cần lấy ảnh."""
    allw = load_words()
    res = []
    for ti, cfg in PLAN.items():
        skip = set(cfg.get("skip", []))
        qmap = cfg.get("query", {})
        for word, wid in allw.get(ti, []):
            if word in skip:
                continue
            res.append((word, wid, qmap.get(word, word)))
    return res


def search(query, key, used_urls):
    """Lấy 5 kết quả rồi chọn ảnh ĐẦU TIÊN chưa dùng cho từ khác.

    Nếu chỉ lấy 1 kết quả thì các từ có nghĩa gần nhau (sheep/farm, fox/animal)
    rất hay nhận đúng cùng một tấm ảnh, nhìn vào tưởng app bị lỗi.
    """
    url = "https://api.unsplash.com/search/photos?" + urllib.parse.urlencode({
        "query": query, "per_page": 5, "orientation": "landscape", "content_filter": "high",
    })
    req = urllib.request.Request(url, headers={
        "Authorization": f"Client-ID {key}", "User-Agent": UA,
        "Accept-Version": "v1",
    })
    with urllib.request.urlopen(req, timeout=20) as r:
        remaining = r.headers.get("x-ratelimit-remaining")
        data = json.loads(r.read().decode("utf-8"))
    for p in (data.get("results") or []):
        if p["urls"]["small"] in used_urls:
            continue
        return {
            "url": p["urls"]["small"],
            "credit": p["user"]["name"],
            "credit_url": p["user"]["links"]["html"],
            "alt": p.get("alt_description") or "",
        }, remaining
    return None, remaining


def q(s):
    s = (s or "").strip()
    return "null" if not s else "'" + s.replace("'", "''") + "'"


def write_sql(cache, items):
    rows = []
    for word, wid, _ in items:
        c = cache.get(word)
        if not c:
            continue
        rows.append(f"update public.words set image_url = {q(c['url'])}, "
                    f"image_credit = {q(c['credit'])}, image_credit_url = {q(c['credit_url'])} "
                    f"where id = '{wid}';")
    head = [
        "-- ============================================================================",
        f"-- ẢNH MINH HOẠ CHO {len(rows)} TỪ VỰNG (nguồn: Unsplash)",
        "-- File này do scripts/fetch_images.py sinh ra — đừng sửa tay.",
        "-- Chạy thẳng file này là đủ, không cần chạy file nào trước.",
        "-- An toàn chạy lại nhiều lần.",
        "-- ============================================================================",
        "",
        "-- Tạo sẵn 2 cột ghi nguồn ảnh (Unsplash yêu cầu hiển thị tên tác giả).",
        "-- Gộp vào đây để khỏi phải nhớ thứ tự chạy file.",
        "alter table public.words add column if not exists image_credit     text;",
        "alter table public.words add column if not exists image_credit_url text;",
        "",
    ]
    open(OUT_SQL, "w", encoding="utf-8").write("\n".join(head + rows) + "\n")
    return len(rows)


def main():
    args = sys.argv[1:]
    cache = json.load(open(CACHE, encoding="utf-8")) if os.path.exists(CACHE) else {}
    items = targets()

    if "--drop" in args:
        for w in args[args.index("--drop") + 1:]:
            cache.pop(w, None)
            print("bo:", w)
        json.dump(cache, open(CACHE, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
        n = write_sql(cache, items)
        print(f"Con {len(cache)} anh, da ghi lai {n} lenh update. "
              f"Chay lai script (khong co --drop) de lay anh moi.")
        return

    todo = [t for t in items if t[0] not in cache]

    if "--review" in args:
        print(f"Da co anh: {len(cache)} | Con thieu: {len(todo)}")
        print("\nKiem tra mo ta anh co khop nghia khong (lech thi dung --drop de lay lai):")
        for word, _, _ in items:
            c = cache.get(word)
            if c:
                print(f"  {word:<22} {c['alt'][:58]}")
        return

    key = os.environ.get("UNSPLASH_ACCESS_KEY", "").strip()
    if not key:
        sys.exit("Thieu bien moi truong UNSPLASH_ACCESS_KEY.")

    print(f"Tong tu can anh: {len(items)} | da co: {len(cache)} | con lai: {len(todo)}")
    if not todo:
        print("Da lay du anh.")
        write_sql(cache, items)
        return

    done = 0
    used_urls = {c["url"] for c in cache.values()}
    for word, wid, query in todo:
        try:
            hit, remaining = search(query, key, used_urls)
        except Exception as e:
            print(f"  loi khi tra '{query}': {e}")
            break
        if hit:
            cache[word] = hit
            used_urls.add(hit["url"])
            done += 1
            print(f"  [{remaining:>3} con lai] {word:<22} <- {hit['alt'][:45]}")
        else:
            print(f"  khong tim thay anh cho '{query}' ({word})")
        json.dump(cache, open(CACHE, "w", encoding="utf-8"), ensure_ascii=False, indent=1)
        if remaining is not None and int(remaining) <= 1:
            print("\nHet han muc gio nay. Chay lai script sau 1 tieng de lam tiep.")
            break
        time.sleep(0.4)   # lịch sự với API

    n = write_sql(cache, items)
    print(f"\nLay them {done} anh. Tong {len(cache)}/{len(items)}.")
    print(f"Da ghi {n} lenh update vao supabase/vocab_images.sql")


if __name__ == "__main__":
    main()
