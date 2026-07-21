import { Routes, Route, Navigate } from 'react-router-dom'
import ProtectedRoute from './components/layout/ProtectedRoute'
import AppLayout from './components/layout/AppLayout'
import Login from './pages/Login'
import Register from './pages/Register'
import Dashboard from './pages/Dashboard'
import LessonList from './pages/LessonList'
import LessonPage from './pages/lesson/LessonPage'
import CourseList from './pages/vocab/CourseList'
import TopicList from './pages/vocab/TopicList'
import StudySession from './pages/vocab/StudySession'

export default function App() {
  return (
    <Routes>
      {/* Public: chưa đăng nhập vẫn vào được */}
      <Route path="/login" element={<Login />} />
      <Route path="/register" element={<Register />} />

      {/* Protected: bắt buộc đăng nhập, bọc trong layout chung có Navbar */}
      <Route element={<ProtectedRoute />}>
        <Route element={<AppLayout />}>
          <Route path="/" element={<Dashboard />} />
          <Route path="/skill/:skill" element={<LessonList />} />
          <Route path="/skill/:skill/lesson/:lessonId" element={<LessonPage />} />
          {/* Từ vựng v2: Chương trình học → Chủ đề → Phiên học SRS */}
          <Route path="/vocab" element={<CourseList />} />
          <Route path="/vocab/course/:courseId" element={<TopicList />} />
          <Route path="/vocab/study/:topicId" element={<StudySession />} />
        </Route>
      </Route>

      {/* Route lạ → về Dashboard */}
      <Route path="*" element={<Navigate to="/" replace />} />
    </Routes>
  )
}
