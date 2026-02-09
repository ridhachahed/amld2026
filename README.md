# AMLD 2026 — Workshop Website

Workshop:

**Deploy Enterprise Agents from Your Database in Less Than an Hour: MySQL HeatWave GenAI in Action**

Astro website lives in `astro-workshop/`.

## Run locally

```bash
cd astro-workshop
npm install
npm run dev
```

## Deploy to GitHub Pages

This repo is deployed as a project site at `https://ridhachahed.github.io/amld2026/`.

The simplest deployment flow (works even when GitHub Actions cannot access your npm registry) is:

```bash
./scripts/deploy-gh-pages.sh
```

This script:

- Builds the Astro site from `astro-workshop/`
- Publishes the build output (`astro-workshop/dist/`) to the `gh-pages` branch

GitHub Pages settings:

- Source: **Deploy from a branch**
- Branch: `gh-pages` (root)
