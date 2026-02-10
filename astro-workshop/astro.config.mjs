import { defineConfig } from "astro/config";
import tailwindcss from "@tailwindcss/vite";

export default defineConfig({
  site: "https://ridhachahed.github.io",
  base: import.meta.env.PROD ? "/amld2026/" : "/",
  vite: {
    plugins: [tailwindcss()],
  },
});
