import { fileURLToPath, URL } from 'node:url'
import { defineConfig,loadEnv } from 'vite'
import path from 'path';
import vue from '@vitejs/plugin-vue'

// https://vite.dev/config/
//export default defineConfig({
export default defineConfig(({ mode }) => {
  
  const env = loadEnv(mode, process.cwd(), '');
  return {

  plugins: [
    vue(),
  ],
  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url))
    }
  },
  define: {
    'process.env': env
  },
  server: {
    port: parseInt(env.VITE_PORT) || 5173,
    host: env.VITE_HOST || '0.0.0.0',
    proxy: {
      '/api': {
        //target: 'https://postman-echo.com',
        target: env.VITE_API_URL,
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/api/, '')
      }
    }
  }
};
});