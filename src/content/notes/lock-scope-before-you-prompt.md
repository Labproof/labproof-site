---
title: Lock Scope Before You Prompt
date: 2026-07-23
pillar: automation-professional-services
excerpt: "When building is cheap, the expensive failure is building the wrong thing fast. Write the scope down before you ask for anything."
keyPoints:
  - "AI builds whatever you describe — including the wrong thing, at speed. Ambiguity in, sprawl out."
  - "Write a short scope document first: what it does, what it explicitly doesn't, and what 'done' looks like."
  - "A locked scope makes short instructions safe — one line is enough when the boundaries are already on paper."
  - "Scope changes are fine; silent scope drift is not. Change the document deliberately, then build."
readTime: 3
---

The old failure mode in software was building too slowly. The new one is building the wrong thing quickly.

When a working tool ships in hours, an unclear instruction doesn't stall — it executes. Ask vaguely and you get *something*, fast, polished, and off-target. I've watched a loose request balloon into a rebuild when the actual gap, measured properly, was one missing record. The machine did what was described, not what was needed. That's not the tool's failure. The description was the defect.

So the discipline I've settled on: **before any real build starts, the scope goes on paper.** One short document. What this product does. What it explicitly does not do. What "done" looks like, concretely enough to check. It takes half an hour, and it's the highest-leverage half hour in the project.

What the written scope buys:

**Short instructions become safe.** Once the boundaries are locked, a one-line request lands correctly — there's a document that says what's in and what's out, so there's no room for the maximal interpretation. Without it, every instruction has to carry its own context, and the day you phrase one loosely is the day you get sprawl.

**"Done" is checkable.** A scope that says what finished looks like turns review from a feeling into a comparison. Does it do the things on the list? Does it stay out of the things off the list? Either answer is quick.

**Drift becomes visible.** Scope will change — it should, as you learn. The document makes the change deliberate: you edit the paper, then the product. What the document prevents is the silent version, where six small "while we're here" additions turn a two-hour tool into a two-week one and nobody decided that on purpose.

Building got cheap. Deciding what to build didn't. The half hour with the scope document is where that deciding happens — spend it before the first prompt, not after the third rebuild.
