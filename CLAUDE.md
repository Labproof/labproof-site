# Labproof site — working notes for Claude

Static marketing site for **labproof.tech** (Astro 4 + Tailwind), already live in production.

House rules and the full shared-VPS multi-tenant policy live in the Labproof area file (`..\..\CLAUDE.md` — loads automatically when working under `Labproof Tech Projects\`). Session protocol: read `STATUS.md` first; update it before finishing (current state + dated log entry + open threads).

## Architecture — how it connects
`github.com/Labproof/labproof-site` (source) → built with Astro → **`Deploy-VPS.ps1`** ships `dist/` to **`/var/www/labproof`** on the **Hostinger VPS** (`187.77.143.45`) → served by **nginx** over HTTPS. The domain **labproof.tech** (DNS in Hostinger) has an A record → that VPS, so repo, server, and URL are one chain.

**Credentials live OUTSIDE the repo (by design):** the VPS SSH key (`%USERPROFILE%\.ssh\labproof_vps`), `gh` auth, and the Hostinger API token (in gitignored `deploy-mcp.js` / `deploy-mcp-static.js` — never commit them or the token value). A fresh/Cowork clone can read everything here but cannot deploy until those are provisioned in its own environment.

## Stack & structure
- Astro static output (`output: 'static'`) + Tailwind CSS.
- Pages in `src/pages/`, components in `src/components/`, note articles in `src/content/notes/` (Markdown content collection).
- Brand: **Newsreader** (headings), **IBM Plex Sans** (body), **IBM Plex Mono** (labels/mono). Colors: ink `#1A221D`, paper `#F6F4EE`, green `#1F7A52`, green-bright `#2F9E6A`.
- Logo is the wordmark image (`/labproof-wordmark-ink.png`, white version on dark). Hero/About imagery from `public/moodboard/`.

## Commands
```powershell
npm install
npm run dev       # local dev server
npm run build     # outputs to dist/
.\Deploy-VPS.ps1  # deploy: build → package dist/ → scp → reload nginx
```

## Adding projects
- Project cards render from the `projects` array in `src/pages/index.astro` (newest first; `type: 'live' | 'demo'`). Add an entry to add a card. A `logo` field renders an icon+wordmark lockup; otherwise `image` renders a photo thumbnail.
- Put project logos/images under `public/img/` → served at `/img/...` (a neutral path — see safety card).

## VPS safety card
Full policy in the area `CLAUDE.md`; these rules matter even in a standalone clone:
- The VPS is **shared by multiple projects and sessions**. `Deploy-VPS.ps1` clears only `/var/www/labproof/*` and reloads nginx — it does not regenerate nginx config or touch other projects' files (incl. KOVR). Keep it that way.
- **Append, never overwrite** `/root/.ssh/authorized_keys`. If locked out: hPanel → VPS → Browser terminal → `echo "<public key>" >> /root/.ssh/authorized_keys`.
- Don't serve labproof assets under another project's route prefix — nginx prefix-matches, so e.g. `/kovr-icon.svg` routes to the KOVR app. Keep shared assets under `/img/`, `/_astro/`, `/moodboard/`.
- The Hostinger MCP `hosting_deployStaticWebsite` tool does **not** work for this account (shared-hosting only; the account has a VPS).
