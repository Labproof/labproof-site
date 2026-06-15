# Labproof — Personal Portfolio Site

Built with **Astro 4 + Tailwind CSS** for static, fast, and SEO-friendly hosting.

## Quick Start

```bash
# Install dependencies
npm install

# Development server (http://localhost:3000)
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

## What's Included

- ✅ **Responsive homepage** (desktop + mobile optimized)
- ✅ **Sticky header** with navigation
- ✅ **Hero section** with CTA buttons
- ✅ **Projects gallery** (empty state, ready for content)
- ✅ **Notes section** (ready for content)
- ✅ **About section** with photo
- ✅ **Dark footer** with links
- ✅ **Brand tokens** (colors, typography, spacing)
- ✅ **Logo component** (Labproof + play triangle)
- ✅ **SEO-ready** (title, meta description, OG image)
- ✅ **Accessibility** (semantic HTML, focus states, reduced-motion)
- ✅ **Favicons & icons** from Labproof branding

## Brand System

All design tokens are configured in `tailwind.config.cjs`:

```js
colors: {
  ink: '#1A221D',        // Primary text
  paper: '#F6F4EE',      // Background
  green: '#1F7A52',      // Accent & play mark
  slate: '#6F7A72',      // Secondary text
  // ... more tokens
}
```

## Deployment to Hostinger

See `DEPLOYMENT_GUIDE.md` for step-by-step instructions.

**TL;DR:**
1. Run `npm run build`
2. Upload `dist/` folder contents to Hostinger's `public_html/`
3. Your site goes live at **labproof.tech**

## Project Structure

```
src/
├── pages/
│   └── index.astro         ← Homepage (edit here)
├── components/
│   ├── Header.astro        ← Navigation header
│   └── Logo.astro          ← Brand logo
├── layouts/
│   └── Layout.astro        ← Base HTML template
└── styles/
    └── globals.css         ← Global Tailwind styles
```

## Adding Projects

When ready to add your actual projects:

1. Create `src/content/projects.json` with your project data
2. Update `src/pages/index.astro` to load and display them
3. Rebuild: `npm run build`
4. Redeploy to Hostinger

See `DEPLOYMENT_GUIDE.md` for full instructions.

---

## Tech Stack

- **Astro 4** — Static site generator
- **Tailwind CSS** — Utility-first styling
- **TypeScript** — Type safety
- **Responsive Design** — Mobile-first approach
- **Zero JavaScript** — Pure HTML (with minimal interactivity)

## References

- Design spec: `../Labproof Tech Website/README.md`
- Copy/voice: `../Labproof Tech Website/LABPROOF_COPY_FINAL.md`
- Brand files: `../Labproof Tech Website/assets/`

---

Built for **labproof.tech** · Deployable to **Hostinger**
