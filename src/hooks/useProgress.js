import { useCallback } from 'react'
import { supabase } from '../lib/supabase'
import { useAuth } from '../context/AuthContext'

// Hook ghi tiến độ học — dùng bởi LessonRunner cho cả 4 module
export function useProgress() {
  const { user } = useAuth()

  // Đánh dấu "đang học" khi mở bài.
  // ignoreDuplicates => nếu đã có dòng (kể cả completed) thì KHÔNG ghi đè.
  const startLesson = useCallback(
    async (lessonId) => {
      if (!user) return
      await supabase.from('lesson_progress').upsert(
        { user_id: user.id, lesson_id: lessonId },
        { onConflict: 'user_id,lesson_id', ignoreDuplicates: true },
      )
    },
    [user],
  )

  // Log 1 lần trả lời (user_id do DB tự điền qua default auth.uid())
  const recordAttempt = useCallback((exerciseId, userAnswer, isCorrect, score) => {
    return supabase.from('attempts').insert({
      exercise_id: exerciseId,
      user_answer: userAnswer,
      is_correct: isCorrect,
      score,
    })
  }, [])

  // Hoàn thành bài: lưu điểm lần này + giữ lại điểm cao nhất từ trước
  const completeLesson = useCallback(
    async (lessonId, score) => {
      if (!user) return
      const { data: existing } = await supabase
        .from('lesson_progress')
        .select('best_score')
        .eq('lesson_id', lessonId)
        .eq('user_id', user.id)
        .maybeSingle()

      await supabase.from('lesson_progress').upsert(
        {
          user_id: user.id,
          lesson_id: lessonId,
          status: 'completed',
          best_score: Math.max(Number(existing?.best_score ?? 0), score),
          last_score: score,
          completed_at: new Date().toISOString(),
        },
        { onConflict: 'user_id,lesson_id' },
      )
    },
    [user],
  )

  return { startLesson, recordAttempt, completeLesson }
}
