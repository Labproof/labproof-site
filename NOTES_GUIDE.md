# Notes Section — How to Add Articles

Your notes system is live and ready. Add new thoughts, observations, and articles to one of four pillars.

## The Four Pillars

1. **Intelligence Service Building** — Frameworks, lessons, what works building professional intelligence services
2. **Automation in Professional Services** — How to wire automation into traditional services invisibly
3. **Malaysian Market Insights** — Observations on credit, brand risk, legal landscape, doing business in Malaysia
4. **Building Products for Intermediaries** — Design lessons for accountants, lawyers, corporate secretaries

## How to Add a Note

### Step 1: Create the file
Create a new `.md` file in `src/content/notes/` with a simple filename:

```
src/content/notes/my-note-title.md
```

### Step 2: Add frontmatter
Copy this header to the top of your file:

```markdown
---
title: "Your Note Title Here"
date: 2026-06-15
pillar: intelligence-service-building
excerpt: "One sentence summary of the note. What's the takeaway?"
readTime: 4
---

Your note content here in Markdown.
```

### Step 3: Pick your pillar
Use one of these exact values:

```
pillar: intelligence-service-building
pillar: automation-professional-services
pillar: malaysian-market-insights
pillar: products-for-intermediaries
```

### Step 4: Write your note
- **Direct, brief, factual.** No fluff.
- **Defensible.** You can stand behind it in front of a client.
- **Short.** 3–7 min read is ideal. Most people scan.
- **Structure:** Problem → Observation → Action
- Use **bold** for key points. Use lists when useful.

### Step 5: Build and deploy
```bash
npm run build
# Upload dist/ to Hostinger
```

---

## Example Note Template

```markdown
---
title: "Why This Approach Works in Malaysia"
date: 2026-06-15
pillar: malaysian-market-insights
excerpt: "Brief takeaway. What will readers learn?"
readTime: 4
---

Opening paragraph. State the problem or observation.

**Key insight here.** This is what matters.

Why this works:
- Point 1 — explanation
- Point 2 — explanation

What I've learned: Practical lesson. What would you recommend?

This doesn't work: The counterexample. What to avoid.

Next time: Action or thought to keep in mind.
```

---

## File Naming Convention

Use kebab-case (lowercase, hyphens):
- ✅ `credit-culture-malaysia.md`
- ✅ `why-intermediaries-win.md`
- ❌ `Credit Culture Malaysia.md`
- ❌ `Why-Intermediaries-Win.md`

The filename becomes the URL slug.

---

## Voice Guidelines

Keep your notes aligned to your persona (Ron Chow):

- **Direct.** No fluff, no repetition.
- **Experienced.** You've seen this work or fail. Say so.
- **Practical.** Theory matters less than what actually works.
- **Defensible.** No claims you can't stand behind.
- **Malaysian context.** Your readers are Malaysian business operators.
- **No jargon.** "Intelligence service" not "AI-powered insights." "Automation" not "multi-agent pipeline."
- **Builder's-diary exception (decision 2026-07-14):** notes in the `automation-professional-services` pillar may discuss building with AI openly — how Ron works, what changed when building got cheap. The no-jargon rule still governs how *services* are positioned; it doesn't ban writing about the craft itself. Keep it operator-voiced and defensible, never vendor-flavored.

---

## Example: How This Note Was Built

**File:** `src/content/notes/why-intermediaries-win.md`

**Frontmatter:**
```yaml
title: Why Intermediaries Win
date: 2026-06-15
pillar: intelligence-service-building
excerpt: "Direct-to-client intelligence services are hard. Intermediaries — accountants, lawyers, corporate secretaries — already have trust and motion. Build for them."
readTime: 4
```

**Content:** 
- Opens with the core insight (intermediaries already have trust)
- Lists three reasons why this works
- Contrasts to direct-sales approach
- Ends with the implication (you stay invisible)

---

## Publishing Checklist

Before rebuilding and uploading:

- [ ] Frontmatter is complete and correct
- [ ] Date is today or when you want it published
- [ ] Pillar matches one of the four exactly
- [ ] Excerpt is one sentence (under 20 words)
- [ ] No sensitive financials or company specifics
- [ ] Content is defensible (no claims you can't stand behind)
- [ ] Spelling and links are correct
- [ ] Read time estimate is accurate (adjust `readTime` if needed)

---

## Viewing Notes Locally

Run the dev server to preview before deploying:

```bash
npm run dev
# Visit http://localhost:3000
# Click "Notes" to see all notes
# Click any note to read the full article
```

---

## Scheduling & Cadence

No fixed schedule required. Add notes when you have them:
- After a project ships — write about what you learned
- After a conversation with a client/partner — capture the insight
- When you spot a pattern — write it down
- When a question comes up repeatedly — answer it once, publish it

The homepage shows the most recent notes first. Older notes stay accessible via URLs.

---

Ready to publish. Just add `.md` files to `src/content/notes/` and rebuild.
