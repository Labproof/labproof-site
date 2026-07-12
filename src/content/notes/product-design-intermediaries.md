---
title: Designing Products for Intermediaries — Three Rules
date: 2026-06-10
pillar: products-for-intermediaries
excerpt: "Intermediaries (accountants, lawyers) have existing workflows. Your product must slot in, not replace. Three design rules."
keyPoints:
  - "Output format first: design what the intermediary delivers to their client, then work backward to the automation."
  - "No new logins. Embed in their existing tools or accept churn."
  - "Defensible opacity: they must be able to present it as their own work and stand behind it under scrutiny."
readTime: 4
---

Building for intermediaries is different from building for end-users. Your customer already has a workflow, a billing process, client relationships, and risk tolerance. Your product must fit into that world.

Three rules for design:

**1. Output format first.** An accountant needs AR aging in a format that slides into a client report. A lawyer needs a due diligence brief that looks like theirs. Design the output your intermediary will deliver to their client. Then work backward to the automation.

**2. No new logins.** Intermediaries won't manage another SaaS account. Either embed it in their ecosystem (email, spreadsheet, their existing platform) or make it a one-click integration. More accounts = churn.

**3. Defensible opacity.** Intermediaries will margin your output. They need to present it as theirs. The internals don't matter to them. What matters: Can they explain it to a client? Is the output defensible under scrutiny? Can they stand behind it if challenged?

Fail these, and you get a "great tool that we're not using" conversation.

Examples:
- SE Report Builder: Output is a PDF that looks like a credit report. Accountants deliver it as theirs. They don't need to understand multi-agent chains. ✓
- A slack bot for contract analysis: Requires intermediaries to manage a new tool, train staff, integrate it. They won't. ✗

Think like an accountant. Design for their client. Build the output first.
