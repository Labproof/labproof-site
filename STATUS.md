# Labproof site — STATUS

Living status for the **labproof.tech** site.
**Read this first each session to catch up; update it before you finish** (refresh "Current state", add a dated Log entry, adjust "Open threads"). Setup/deploy rules live in `CLAUDE.md`.

## Current state — 2026-07-23
- **Two new notes published** (both `automation-professional-services`, one per pillar of the
  2026-07-14 topic menu — Ron picked "two, one per pillar" this round): **Walking Skeleton,
  Day One** (`walking-skeleton-day-one` — deploy the thinnest end-to-end slice on the real URL
  before building features) and **Lock Scope Before You Prompt** (`lock-scope-before-you-prompt`
  — written scope doc before building; cheap building makes ambiguity the expensive failure).
  Notes count now **10**. Committed (`9aea9cc`), pushed to GitHub, deployed via
  `Deploy-VPS.ps1` — live-verified (both article pages 200, listed on /notes, site 200).

## Current state — 2026-07-15 (superseded by the entry above)
- **THE EXCHANGE card fix — LIVE.** Part of the same-session Exchange Brand System v2.0 rollout
  (see HKSE Tracker's STATUS.md for full context). `stocktracker-card.svg`'s mark colors were
  wrong — reversed order and off-spec hexes (`#5CE09A`/`#1DBE68`/`#12A356`, lightest bar on top).
  Fixed to the spec's actual dark-theme green ramp `#17AE5E`/`#2ED47A`/`#54EE9A` (darkest on top,
  matching every other rendering of the mark across the three tracker apps). `index.astro`'s card
  entry (title/blurb/tag/href) already read correctly — no copy change needed. Committed
  (`b796a96`), pushed to GitHub, deployed via `Deploy-VPS.ps1`, external health 200.

## Current state — 2026-07-14 (superseded by the entry above)
- **Live:** https://labproof.tech — Hostinger VPS (Ubuntu + nginx), HTTPS via Let's Encrypt.
- **Repo:** https://github.com/Labproof/labproof-site (public) · **Local:** `C:\Work\Active Projects\Labproof Tech Website\labproof-site`
- **Pages:** Home (hero · intro strip · Projects · Notes CTA · footer) and Notes (index + 8 articles). About section removed.
- **Mobile:** hamburger menu, stacked hero/About images, responsive throughout.
- **Projects:** **OUTLINK** (→ https://outlink.my, card image `/img/outlink-card.svg`, type `live`), **BLUEOS** (→ `/blueos`, card image `/img/blueos-card.svg`), **THE EXCHANGE** (→ `/stocktracker`, card image `/img/stocktracker-card.svg`, tag `HKSE · KLSE` — consolidated from the single-market "Stock Tracker (HKSE)" card) and **KOVR** (→ `/kovr`, card image `/img/kovr-card.svg`, type `demo` — switched from live 2026-07-14). Live/Demo filters work.
- **Deploy:** `.\Deploy-VPS.ps1` (build → rsync/scp dist → reload nginx). Deploys from the working folder (not a pinned commit — see Open threads).

## Log (newest first)
### 2026-07-23
Notes round: two published, one per pillar from the 2026-07-14 menu — **Walking Skeleton, Day
One** (shipping: go live day one; deployment is where the surprises live; everything after is a
small delta; verify on the real URL) and **Lock Scope Before You Prompt** (process: scope on
paper before building; short instructions become safe; "done" checkable; drift visible). Both
builder's-diary voiced per `NOTES_GUIDE.md`. Committed (`9aea9cc`), pushed, deployed via
`Deploy-VPS.ps1`, live-verified (both pages 200 and listed on /notes). Also committed leftover
07-15 housekeeping (STATUS entry, `CLAUDE.md.bak` → `_archive/`). Noted: `/shou-yu` (personal principles page) shipped 2026-07-13 in `d0835ff` but
was never logged here — already live, no action.

### 2026-07-15
Fixed `stocktracker-card.svg`'s mark colors as part of the cross-project "The Exchange Brand
System v2.0" rollout (Ron grouped the three tracker apps under that name and authored a v2.0
spec in claude.ai/design, pulled via DesignSync — see HKSE Tracker's STATUS.md for full context).
The card's green ramp was reversed and off-spec (`#5CE09A`/`#1DBE68`/`#12A356`); corrected to
`#17AE5E`/`#2ED47A`/`#54EE9A` (darkest bar on top), matching the mark everywhere else it renders.
No copy changes to the card entry in `index.astro`. Committed (`b796a96`), pushed to GitHub,
deployed via `Deploy-VPS.ps1` alongside the tracker apps' rebrand — external health 200.

### 2026-07-14 (second entry)
Shipped the **OUTLINK** project card (newest-first, above BLUEOS) — link-in-bio + dynamic
QR platform for Kraken's clients, external href https://outlink.my, card SVG
`/img/outlink-card.svg`. The card had been drafted uncommitted in an earlier afternoon
session (built but never deployed — caught by the drift check). Also switched the **KOVR
card to `demo`** (Ron's call — was `live`). Committed + pushed (`6ae6708`), deployed via
`Deploy-VPS.ps1`, live-verified (OUTLINK card renders, SVG 200, KOVR shows Demo badge).

### 2026-07-14
Two new notes published (both `automation-professional-services` pillar, a builder's-diary
angle Ron chose over credit/intermediary topics this round): **The Folder Is the Memory**
(`folder-is-the-memory` — STATUS-file session-continuity method, generalized) and
**The 2-Hour Product** (`two-hour-product` — one-client software, build-to-throw-away,
bottleneck moved to selection + verification). Notes count now 8 (STATUS previously said 4 —
was stale; 6 existed before this session). Committed + pushed (`9693a66`), deployed via
`Deploy-VPS.ps1`, live-verified (both pages 200 and listed on /notes).

### 2026-07-13 (fifth entry)
KOVR card redesigned as a full-bleed 16:10 brand SVG (`/img/kovr-card.svg` — navy field,
blue radial glow, Shield-Check mark + wordmark, "Family. Covered." tagline; per the guide's
OG/listing template), replacing the `logo` icon+text lockup so all three project cards now
use the same `image` pattern. `kovr-icon.svg` kept for other uses. Built, deployed,
live-verified (SVG 200, referenced from home).

### 2026-07-13 (fourth entry)
KOVR card refreshed per the new **KOVR Brand Guide v1.0** (in `..\..\KOVR\brand\`):
`/img/kovr-icon.svg` replaced with the new Shield-Check mark (navy field, cream shield,
blue check), blurb rewritten to the brand one-liner (Emergency Card lead), card wordmark
tuned (`font-black tracking-[0.03em]` — applies to any `logo`-field card). KOVR side
shipped too: /kovr now opens a full-width branded landing page for logged-out visitors.
Built, deployed via `Deploy-VPS.ps1`, live-verified (new copy + icon serving).

### 2026-07-13 (third entry)
Consolidated the **Stock Tracker (HKSE)** card to **THE EXCHANGE** (tag `HKSE · KLSE`) —
the Stock Tracker project now positions itself as a multi-market platform (HKSE + a new
KLSE/Bursa Malaysia sibling live same-day at `/stocktracker-my`, see `..\Stock Tracker MY\`),
and the linked landing page (`/stocktracker`) was rewritten as the platform hub explaining
THE EXCHANGE before branching to each market. Card image text updated (`THE EXCHANGE` /
`HKSE · KLSE`); href/route unchanged. First attempt used two grouped cards (one per market)
— Ron corrected to a single consolidated card. Built, deployed via `Deploy-VPS.ps1`,
live-verified (card + linked hub page + both market cross-links), committed + pushed
(`66c8cc3`).

### 2026-07-13 (second entry)
- Added **BLUEOS** project card (newest-first, above Stock Tracker) → links to `/blueos`,
  the new platform landing page served by the carwash app (see its project folder
  `..\..\Car Wash WhatsApp Booking\`, decision #33). Card = 16:10 brand SVG
  (`/img/blueos-card.svg`, navy gradient + water-O mark + wordmark), same `image`-field
  route as the Stock Tracker card. Built, deployed via `Deploy-VPS.ps1`, verified live
  (card renders first in the grid; asset 200).

### 2026-07-13
- Added **Stock Tracker (HKSE)** project card (newest-first, above KOVR) → links to
  `/stocktracker` (the public multi-user tracker deployed 2026-07-12; see its project
  folder `..\..\Stock Tracker\`). Card uses a 16:10 brand SVG (`/img/stocktracker-card.svg`,
  forest tile + stripe mark + wordmark) via the `image` field — the `logo` lockup path has
  KOVR's navy hardcoded, so a full-bleed image was the no-template-change route. Built,
  deployed via `Deploy-VPS.ps1`, live-verified (card + SVG 200), committed + pushed
  (`d0835ff`).

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
- **Notes pipeline** ← next: 4 topic candidates still unpicked from the 2026-07-14 menu —
  process: verify before you call it done · automate-prep sequel (where to draw the line);
  shipping: one server, many products · small products deserve real brands. (Picked 2026-07-23:
  walking skeleton day one · lock scope before you prompt.) Ron picks per round
  ("this round focus on X"), so re-offer the menu, don't assume.
- **Deploy coordination (deferred, discussed not started):** multiple Claude sessions deploy to the same VPS and have clobbered each other's SSH `authorized_keys`. Plan: a `manifest` (project → repo → VPS path → URL → local folder) + a manifest-driven **deploy agent** (rsync, append-safe key, deploy lock, stamp deployed commit) + a read-only **dashboard**. Possibly an Obsidian human-knowledge layer on top.
- **Deploy discipline to adopt:** *commit → deploy that exact commit → stamp the SHA on the server*, so local always provably matches live.
- ~~KOVR thumbnail~~ — resolved: card redesigned as full-bleed brand SVG 2026-07-13; card
  switched to `demo` 2026-07-14.
- ~~Security: rotate the Hostinger API token~~ — resolved 2026-07-13 per the area
  `CLAUDE.md`: token deleted in hPanel (no replacement; nothing uses the API), VPS root
  password already rotated 2026-07-05.
