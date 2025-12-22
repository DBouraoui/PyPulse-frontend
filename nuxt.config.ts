// https://nuxt.com/docs/api/configuration/nuxt-config
import tailwindcss from "@tailwindcss/vite";
export default defineNuxtConfig({
    runtimeConfig: {
        public: {
            apiBase: 'http://localhost:8000'
        }
    },
  compatibilityDate: '2025-07-15',
  devtools: { enabled: true },
  modules: [
    '@nuxt/eslint',
    '@nuxt/image',
    '@nuxt/ui',
    '@pinia/nuxt',
  ],
    css: ['./app/assets/css/main.css'],
    vite: {
        plugins: [
            tailwindcss(),
        ],
    },
})