import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import { BrowserRouter } from 'react-router-dom'
import './index.css'
import { AuthProvider } from './context/AuthContext'
import PinGate from './components/PinGate'
import App from './App.jsx'

createRoot(document.getElementById('root')).render(
  <StrictMode>
    {/* PinGate: lớp chắn PIN cho toàn bộ trang (hiện trước cả màn đăng nhập) */}
    <PinGate>
      <BrowserRouter>
        {/* AuthProvider nằm trong Router để các trang auth dùng được navigate */}
        <AuthProvider>
          <App />
        </AuthProvider>
      </BrowserRouter>
    </PinGate>
  </StrictMode>,
)
