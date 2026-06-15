# Labproof — Deployment Guide to Hostinger

## Overview
Your Astro site builds to **static HTML** in the `dist/` folder. Hostinger can serve this directly with no server-side setup needed.

## Build
```bash
npm run build
```
This generates a static site in `dist/` folder ready to upload.

## Deployment to Hostinger

### Option 1: FTP Upload (Easiest)
1. Go to **hPanel → Hosting → File Manager**
2. Navigate to your **public_html** folder (or domain folder)
3. Delete any existing index.html
4. **Upload the contents of the `dist/` folder** (not the folder itself):
   - `index.html`
   - `_astro/` folder
5. Done! Your site is live at **labproof.tech**

### Option 2: Using Hostinger's FTP Client
1. Download FileZilla or WinSCP
2. Connect using credentials from **hPanel → Hosting → FTP**
3. Upload `dist/` contents to `public_html/`
4. Delete old files if needed

### Option 3: Via Hostinger API (Advanced)
You can automate this with your Hostinger MCP if needed.

---

## Development Server
```bash
npm run dev
```
Runs at `http://localhost:3000`

---

## Project Structure

```
labproof-site/
├── src/
│   ├── pages/
│   │   └── index.astro          ← Homepage
│   ├── components/
│   │   ├── Header.astro
│   │   └── Logo.astro
│   ├── layouts/
│   │   └── Layout.astro         ← Base layout
│   └── styles/
│       └── globals.css
├── public/                       ← Copy favicons/images here
├── package.json
├── astro.config.mjs
├── tailwind.config.cjs
└── dist/                         ← Built site (upload this)
```

---

## Adding Projects Later

When you're ready to add your projects:

1. **Create a content collection** in `src/content/projects.json`:
```json
[
  {
    "title": "KOVR",
    "slug": "kovr",
    "status": "live",
    "tags": ["Insurance", "Emergency", "Family"],
    "oneLineer": "Keep track of you and your families insurance and emergency numbers.",
    "description": "...",
    "runUrl": "https://...",
    "sourceUrl": "https://github.com/...",
    "year": 2026
  }
]
```

2. **Update `src/pages/index.astro`** to loop over projects instead of showing empty state

3. **Rebuild and redeploy** to Hostinger

---

## Tips

- **Favicons**: Copy `*.png` files from `Labproof Tech Website/assets/` to `public/` folder
- **Images**: Add project screenshots to `public/images/` and reference in content
- **Domain**: Your site is already pointed to Hostinger at **labproof.tech**
- **SEO**: Title, meta description, and OG image already set in Layout.astro
- **Responsive**: Mobile-optimized — tested on all screen sizes

---

## Next Steps

1. ✅ Site structure complete
2. ✅ Homepage designed and built
3. ⏳ Add your projects (when ready)
4. ⏳ Add project descriptions
5. ⏳ Deploy to labproof.tech via Hostinger

Ready to add your projects whenever you want!
