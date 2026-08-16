import { useCallback } from 'react'
import { supabase } from '../lib/supabase'
import { useAuth } from '../context/AuthContext'
import { gradeCard } from '../utils/srs'

// Hook ghi tiến độ SRS vào bảng user_progress — dùng trong StudySession
export function useVocabProgress() {
  const { user } = useAuth()

  // Chấm 1 thẻ: tính interval/ease/next_review_date mới rồi upsert.
  // existingRow = null nếu từ chưa từng học (upsert sẽ INSERT).
  // Luôn trả về { error } để nơi gọi biết tiến độ có thực sự được lưu hay không.
  const gradeWord = useCallback(
    (wordId, existingRow, grade) => {
      if (!user) return { error: { message: 'Phiên đăng nhập đã hết hạn — hãy đăng nhập lại.' } }
      const next = gradeCard(existingRow, grade)
      return supabase.from('user_progress').upsert(
        {
          user_id: user.id,
          word_id: wordId,
          ...next, // repetition_interval, ease_factor, next_review_date, status
          last_reviewed_at: new Date().toISOString(),
        },
        { onConflict: 'user_id,word_id' },
      )
    },
    [user],
  )

  return { gradeWord }
}
