# Labproof site — working notes for Claude

Static marketing site for **labproof.tech** (Astro 4 + Tailwind), already live in production.

## Stack & structure
- Astro static output (`output: 'static'`) + Tailwind CSS.
- Pages in `src/pages/`, components in `src/components/`, note articles in `src/content/notes/` (Markdown content collection).
- Brand: **Newsreader** (headings), **IBM Plex Sans** (body), **IBM Plex Mono** (labels/mono). Colors: ink `#1A221D`, paper `#F6F4EE`, green `#1F7A52`, green-bright `#2F9E6A`.
- Logo is the wordmark image (`/labproof-wordmark-ink.png`, white version on dark). Hero/About imagery from `public/moodboard/`.

## Local dev
```powershell
npm install
npm run dev       # local dev server
npm run build     # outputs to dist/
```

## Deploy
Hosted on a **Hostinger VPS** (Ubuntu 24.04 + nginx) — **NOT** shared hosting. To deploy:
```powershell
.\Deploy-VPS.ps1
```
This builds, packages `dist/`, scp's it to the VPS, and reloads nginx.
- VPS IP `187.77.143.45`, web root `/var/www/labproof`, SSH key at `%USERPROFILE%\.ssh\labproof_vps`.
- HTTPS via Let's Encrypt (auto-renew on).
- NOTE: the Hostinger MCP `hosting_deployStaticWebsite` tool does **not** work for this account — it targets shared hosting, and the account only has a VPS.

## Git / GitHub
- Repo: <https://github.com/Labproof/labproof-site> (public, org **Labproof**, owner `ronchow2023`).
- Update flow:
  ```powershell
  git add -A
  git commit -m "describe the change"
  git push
  ```
- `gh` CLI + Git for Windows are installed and authenticated; `gh` is configured as Git's credential helper, so `git push` works without re-auth.

## SECRETS — never commit
- `deploy-mcp.js` and `deploy-mcp-static.js` contain the **live Hostinger API token** and are gitignored. Never commit them or the token value.
- Keep any credentials in environment variables or untracked files — not in tracked source.
