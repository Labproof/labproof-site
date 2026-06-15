# Labproof site — STATUS

Living status for the **labproof.tech** site.
**Read this first each session to catch up; update it before you finish** (refresh "Current state", add a dated Log entry, adjust "Open threads"). Setup/deploy rules live in `CLAUDE.md`.

## Current state — 2026-06-15
- **Live:** https://labproof.tech — Hostinger VPS (Ubuntu + nginx), HTTPS via Let's Encrypt.
- **Repo:** https://github.com/Labproof/labproof-site (public) · **Local:** `C:\Work\Active Projects\Labproof Tech Website\labproof-site`
- **Pages:** Home (hero · intro strip · Projects · Notes CTA · footer) and Notes (index + 4 articles). About section removed.
- **Mobile:** hamburger menu, stacked hero/About images, responsive throughout.
- **Projects:** **KOVR** card is live — links to `/kovr`, logo at `/img/kovr-icon.svg`. Live/Demo filters work.
- **Deploy:** `.\Deploy-VPS.ps1` (build → rsync/scp dist → reload nginx). Deploys from the working folder (not a pinned commit — see Open threads).

## Log (newest first)
### 2026-06-15
- **Consolidated folders:** repo moved into `Labproof Tech Website\labproof-site`; original design files tucked into `Labproof Tech Website\design-bundle\`; empty `labproof-astro` deleted. Updated path references (preview launch.json, this file, memory).
- Added **STATUS.md** (session continuity) + `docs/session-continuity.md` (reusable setup instructions for other projects).
- Added **KOVR** project card. Fixed icon not loading — `/kovr-icon.svg` collided with nginx `location /kovr`; moved to `/img/kovr-icon.svg`.
- Documented multi-session VPS/route coordination rules in `CLAUDE.md`.
- Created GitHub org **Labproof** + repo; pushed site. Installed gh + Git; scrubbed Hostinger API token from tracked files.
- Removed **About** section (and its nav/links). Added shared **Footer**; fixed Notes pages (footer + working back-links).
- Built **mobile** layout (hamburger nav, stacked images). Added wordmark logo (header + footer), green CTA arrows, left-aligned header. Wired hero/About images.

### 2026-06-14
- Initial site built (Astro + Tailwind), deployed to VPS, DNS pointed to VPS, SSL enabled.

## Open threads / next steps
- **Deploy coordination (deferred, discussed not started):** multiple Claude sessions deploy to the same VPS and have clobbered each other's SSH `authorized_keys`. Plan: a `manifest` (project → repo → VPS path → URL → local folder) + a manifest-driven **deploy agent** (rsync, append-safe key, deploy lock, stamp deployed commit) + a read-only **dashboard**. Possibly an Obsidian human-knowledge layer on top.
- **Deploy discipline to adopt:** *commit → deploy that exact commit → stamp the SHA on the server*, so local always provably matches live.
- **KOVR thumbnail** uses the app icon; swap for a custom thumbnail if wanted.
- **Security:** rotate the Hostinger API token when convenient (it appeared in working files/chat this session).
