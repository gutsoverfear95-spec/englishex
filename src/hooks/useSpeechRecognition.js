import { useCallback, useEffect, useRef, useState } from 'react'

// ============================================================
// Bọc Web Speech API — SpeechRecognition (Speech-to-Text)
// Dùng cho module NÓI: ghi âm giọng user → chuyển thành văn bản.
//
// Lưu ý quan trọng:
//   - Chrome/Edge dùng prefix webkit; Firefox CHƯA hỗ trợ API này
//   - Cần quyền microphone + chạy trên localhost hoặc HTTPS
//   - continuous = false: tự dừng khi user ngừng nói (hợp với đọc 1 câu)
//   - interimResults = true: hiện chữ "nháp" ngay khi đang nói cho sinh động
// ============================================================

const SpeechRecognitionImpl =
  typeof window !== 'undefined'
    ? window.SpeechRecognition || window.webkitSpeechRecognition
    : undefined

// Dịch mã lỗi của API sang thông báo tiếng Việt dễ hiểu
const ERROR_MESSAGES = {
  'not-allowed':
    'Bạn chưa cho phép dùng microphone. Hãy bấm vào biểu tượng ổ khoá trên thanh địa chỉ và cấp quyền.',
  'no-speech': 'Không nghe thấy giọng nói nào — hãy thử nói to và rõ hơn.',
  'audio-capture': 'Không tìm thấy microphone trên thiết bị của bạn.',
  network: 'Lỗi mạng khi nhận dạng giọng nói (trình duyệt cần kết nối internet).',
}

export function useSpeechRecognition() {
  const supported = Boolean(SpeechRecognitionImpl)
  const [listening, setListening] = useState(false)
  const [transcript, setTranscript] = useState('') // kết quả cuối cùng
  const [interim, setInterim] = useState('')       // chữ "nháp" đang nói dở
  const [error, setError] = useState('')
  const recognitionRef = useRef(null)

  const start = useCallback(() => {
    if (!supported || listening) return
    setError('')
    setTranscript('')
    setInterim('')

    // Tạo instance mới mỗi lần ghi âm — tránh state cũ dính lại
    const recognition = new SpeechRecognitionImpl()
    recognition.lang = 'en-US'
    recognition.interimResults = true
    recognition.continuous = false

    recognition.onresult = (event) => {
      let finalText = ''
      let interimText = ''
      for (const result of event.results) {
        if (result.isFinal) finalText += result[0].transcript
        else interimText += result[0].transcript
      }
      if (finalText) setTranscript(finalText.trim())
      setInterim(interimText.trim())
    }

    recognition.onerror = (event) => {
      setError(ERROR_MESSAGES[event.error] ?? `Lỗi nhận dạng giọng nói: ${event.error}`)
      setListening(false)
    }

    // Tự kết thúc khi user ngừng nói (hoặc gọi stop())
    recognition.onend = () => {
      setListening(false)
      setInterim('')
    }

    recognitionRef.current = recognition
    recognition.start()
    setListening(true)
  }, [supported, listening])

  const stop = useCallback(() => {
    recognitionRef.current?.stop()
  }, [])

  const reset = useCallback(() => {
    setTranscript('')
    setInterim('')
    setError('')
  }, [])

  // Rời trang giữa chừng → hủy ghi âm ngay lập tức
  useEffect(() => () => recognitionRef.current?.abort(), [])

  return { supported, listening, transcript, interim, error, start, stop, reset }
}
