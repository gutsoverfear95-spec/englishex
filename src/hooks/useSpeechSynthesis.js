import { useCallback, useEffect, useRef, useState } from 'react'

// ============================================================
// Bọc Web Speech API — SpeechSynthesis (Text-to-Speech)
// Dùng cho module NGHE: đọc transcript / câu chép chính tả.
//   - Tự chọn giọng en-US tốt nhất có sẵn trên máy user
//   - speak(text, { rate }): hủy câu đang đọc trước khi đọc câu mới
//   - speaking: state cho UI đổi nút Play/Stop
//   - Tự cancel khi unmount để không đọc "ma" khi rời trang
// ============================================================
export function useSpeechSynthesis() {
  const [speaking, setSpeaking] = useState(false)
  // SpeechSynthesis có mặt trên mọi trình duyệt hiện đại, check cho chắc
  const [supported] = useState(() => typeof window !== 'undefined' && 'speechSynthesis' in window)
  const voiceRef = useRef(null)

  useEffect(() => {
    if (!supported) return

    // Chrome load danh sách giọng BẤT ĐỒNG BỘ: getVoices() trả [] ở lần gọi
    // đầu tiên → phải nghe thêm event 'voiceschanged'
    function pickVoice() {
      const voices = window.speechSynthesis.getVoices()
      voiceRef.current =
        // Ưu tiên các giọng en-US chất lượng cao thường gặp
        voices.find((v) => v.lang === 'en-US' && /google|natural|microsoft/i.test(v.name)) ||
        voices.find((v) => v.lang === 'en-US') ||
        voices.find((v) => v.lang?.startsWith('en')) ||
        null
    }

    pickVoice()
    window.speechSynthesis.addEventListener('voiceschanged', pickVoice)
    return () => window.speechSynthesis.removeEventListener('voiceschanged', pickVoice)
  }, [supported])

  // Rời trang giữa chừng → dừng đọc
  useEffect(() => {
    if (!supported) return
    return () => window.speechSynthesis.cancel()
  }, [supported])

  const speak = useCallback(
    (text, { rate = 0.95 } = {}) => {
      if (!supported || !text) return
      window.speechSynthesis.cancel() // dừng câu trước nếu đang đọc dở

      const utterance = new SpeechSynthesisUtterance(text)
      utterance.lang = 'en-US'
      if (voiceRef.current) utterance.voice = voiceRef.current
      utterance.rate = rate // 1 = tốc độ thường, ~0.7 = chậm để nghe rõ

      utterance.onstart = () => setSpeaking(true)
      utterance.onend = () => setSpeaking(false)
      utterance.onerror = () => setSpeaking(false)

      window.speechSynthesis.speak(utterance)
    },
    [supported],
  )

  const cancel = useCallback(() => {
    if (!supported) return
    window.speechSynthesis.cancel()
    setSpeaking(false)
  }, [supported])

  return { speak, cancel, speaking, supported }
}
