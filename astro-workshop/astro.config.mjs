import { defineConfig } from "astro/config";
import tailwindcss from "@tailwindcss/vite";

export default defineConfig({
  site: "https://ridhachahed.github.io",
  base: "/amld2026",
  vite: {
    plugins: [tailwindcss()],
  },
});
