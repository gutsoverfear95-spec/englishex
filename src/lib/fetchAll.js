// ============================================================
// Lấy HẾT các dòng của một truy vấn, theo từng trang 1000 dòng.
//
// Vì sao cần: Supabase (PostgREST) mặc định trả tối đa 1000 dòng mỗi lần và
// KHÔNG báo lỗi khi cắt bớt. Bảng words đã có 1.920 từ — đếm trên 1000 dòng
// đầu thì mọi con số tiến độ đều sai mà không ai hay.
//
// `build` phải trả về một truy vấn MỚI mỗi lần gọi và có .order() ổn định,
// nếu không các trang có thể trùng hoặc sót dòng.
// ============================================================
const PAGE = 1000

export async function fetchAll(build) {
  const rows = []
  for (let from = 0; ; from += PAGE) {
    const { data, error } = await build().range(from, from + PAGE - 1)
    if (error) return { data: rows, error }
    rows.push(...(data ?? []))
    if (!data || data.length < PAGE) return { data: rows, error: null }
  }
}
