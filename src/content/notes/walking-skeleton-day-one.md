---
title: Walking Skeleton, Day One
date: 2026-07-23
pillar: automation-professional-services
excerpt: "Deploy a working end-to-end slice on day one. Features are easy to add to a live system; deployment is where the surprises hide."
keyPoints:
  - "Deploy the thinnest end-to-end slice — one page, one real URL, HTTPS — before building any feature."
  - "Deployment is where the surprises live: DNS, certificates, server config, keys. Meet them on day one, not launch day."
  - "Once the skeleton is live, every feature is a small change to a working system — and you verify on the real URL, not localhost."
  - "The gap between 'works on my machine' and 'live' is the actual risk in a project. Close it first."
readTime: 3
---

Most projects save deployment for last. Build the features, polish the screens, then — at the end, usually late — figure out hosting, domains, certificates. That order feels natural. It's backwards.

I now do the opposite: **day one, before any real feature exists, the project goes live.** One page, on the real domain, over HTTPS, served by the real server. A walking skeleton — the thinnest possible slice that runs end to end.

It looks like wasted ceremony. It isn't, for three reasons.

**Deployment is where the surprises live.** Writing features is the predictable part, especially now that building is cheap. The unpredictable part is everything around it: DNS that takes hours to propagate, a certificate that won't issue, a server route that collides with another app, a key that doesn't authenticate. None of these get easier by waiting — they just move to the worst possible moment. On day one, a deployment problem is a calm morning's work. On launch day, it's a crisis in front of a client.

**Everything after becomes a small delta.** Once the skeleton is live, no change is ever big again. Add a page, deploy, look at it. Add a form, deploy, look at it. Each step is a small change to a *working system*, and if something breaks, you know it was the last thing you touched. Projects that deploy last do the sum of all that risk in one go, at the end, when there's the most to lose.

**Verification becomes real.** "Works on my machine" is not a result. The version that matters is the one on the live URL, on a phone, on someone else's network. With a skeleton live from day one, that's where all testing happens — so there's no separate "does it survive production" question waiting at the end. There is only production, from the start.

Every product I've shipped this year went live before it was finished — some the same day they were started. The pattern holds at any size: the first task is not the first feature. It's hello-world, on the real URL, provably working. Then build.
