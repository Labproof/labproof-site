---
title: One Wrong Suggestion Costs More Than Ten Misses
date: 2026-09-28
pillar: products-for-intermediaries
excerpt: "A professional can add what your tool missed. They can't un-see what it got wrong. For suggestion tools, tune for precision."
keyPoints:
  - "A wrong suggestion sits in front of the professional; a miss usually doesn't. The errors they can see are the ones that destroy trust."
  - "When the tool proposes and the professional decides, tune for precision: if in doubt, leave it out."
  - "When the job is to find everything (disclosure, conflict checks, screening), the opposite holds: recall first, with human review behind it."
  - "Say what the tool didn't check, show why it suggested what it did, and never overwrite a professional's edit."
readTime: 5
---

I built a litigation-support tool that links evidence to the paragraphs of a claim. The early matching was generous: if a document looked relevant, it got linked. The lawyers didn't count the good links. They remembered the wrong ones, and once they'd seen a wrong link they distrusted every link.

So the matching was recalibrated toward precision: if in doubt, mark it irrelevant, and let the lawyer add what's missing. A second feature, which drafted suggested pleading text, was cut entirely. One bad paragraph in front of a court outweighs everything else the tool does.

The "ten" in the title is my rule of thumb, not a measured ratio. The research behind the direction is solid, though.

**The errors they can see are the ones that count**

- When an automated aid gets an easy case wrong (one the person would have got right), people mistrust it even on the hard cases where it's better than them (Madhavan, Wiegmann & Lacson, 2006).
- People abandon a forecasting algorithm after watching it make mistakes, even when it still outperforms them (Dietvorst, Simmons & Massey, 2015).
- False alarms are a well-documented reason people stop using automation altogether (Parasuraman & Riley, 1997). In hospitals, the Joint Commission estimates that 85 to 99 percent of alarm signals don't require clinical intervention, and it links alarm fatigue to patient deaths. That's the cry-wolf effect with patients at the other end.

The research doesn't agree that false positives are always worse than misses; some studies find the two damage trust about equally. The point that holds is simpler. **A wrong suggestion is in front of the professional. A miss usually isn't.** They notice one and not the other.

**Where the rule flips: jobs that must find everything**

Some tasks exist to be complete. In e-discovery, the failure is the relevant document you didn't produce. Courts accepted technology-assisted review because it can find more than exhaustive human review, and they judge it by recall, checked by sampling (*Da Silva Moore v Publicis Groupe*, 2012; Grossman & Cormack, 2011). Conflict checks, anti-money-laundering screening and due-diligence checklists have the same shape.

So the rule splits by task:

- **Completeness tasks**, where the tool must not miss: tune for recall, and put human review and sampling behind it.
- **Suggestion tasks**, where the tool proposes and the professional decides (links, clause flags, matches, draft text): tune for precision.

**Three things that go with precision**

1. **Say what you didn't check.** A precise tool has a side effect: people start reading its silence as "nothing there". Automation research calls these omission errors (Skitka, Mosier & Burdick, 1999). Show coverage (what was searched and what wasn't) so a quiet screen isn't mistaken for a clean one.
2. **Show why.** Telling people why an aid can err helps them keep relying on it (Dzindolet et al., 2003). Show the reason for each suggestion, such as the passage matched or the rule triggered, so a borderline call becomes a judgment they can check rather than a verdict they have to trust.
3. **Their edits are sacred.** People use an algorithm far more when they can adjust its output, even slightly (Dietvorst, Simmons & Massey, 2018). In a professional tool, anything the professional has confirmed, overridden or entered by hand is never overwritten by the machine.

**Professionals are the hardest audience**

Experienced professionals lean on algorithmic advice less than lay people do (Logg, Minson & Moore, 2019). In law, a machine's mistakes are public. In *Mata v Avianca* (2023), a New York court sanctioned lawyers for filing cases invented by an AI tool. The Malaysian Bar has told its members to independently verify all generative-AI output (Circular No. 342/2023). The people you're building for have been warned, and the first wrong suggestion confirms the warning.

Build the tool that's right when it speaks, honest about where it didn't look, and never argues with the professional's own hand.

**Sources**

- Madhavan, P., Wiegmann, D. A. & Lacson, F. C. (2006). Automation failures on tasks easily performed by operators undermine trust in automated aids. *Human Factors*, 48(2), 241–256.
- Dietvorst, B. J., Simmons, J. P. & Massey, C. (2015). Algorithm aversion. *Journal of Experimental Psychology: General*, 144(1), 114–126.
- Dietvorst, B. J., Simmons, J. P. & Massey, C. (2018). Overcoming algorithm aversion. *Management Science*, 64(3), 1155–1170.
- Parasuraman, R. & Riley, V. (1997). Humans and automation: Use, misuse, disuse, abuse. *Human Factors*, 39(2), 230–253.
- The Joint Commission (2013). [Sentinel Event Alert 50: Medical device alarm safety in hospitals](https://www.jointcommission.org/en-us/knowledge-library/newsletters/sentinel-event-alert/issue-50).
- *Da Silva Moore v Publicis Groupe*, 287 F.R.D. 182 (S.D.N.Y. 2012).
- Grossman, M. R. & Cormack, G. V. (2011). [Technology-assisted review in e-discovery can be more effective and more efficient than exhaustive manual review](https://scholarship.richmond.edu/jolt/vol17/iss3/5/). *Richmond Journal of Law & Technology*, 17(3).
- Skitka, L. J., Mosier, K. L. & Burdick, M. (1999). Does automation bias decision-making? *International Journal of Human-Computer Studies*, 51(5), 991–1006.
- Dzindolet, M. T. et al. (2003). The role of trust in automation reliance. *International Journal of Human-Computer Studies*, 58(6), 697–718.
- Logg, J. M., Minson, J. A. & Moore, D. A. (2019). Algorithm appreciation. *Organizational Behavior and Human Decision Processes*, 151, 90–103.
- *Mata v Avianca, Inc.*, 678 F. Supp. 3d 443 (S.D.N.Y. 2023).
- Malaysian Bar, [Circular No. 342/2023](https://www.malaysianbar.org.my/cms/upload_files/document/Circular%20No%20342-2023.pdf) on the use of ChatGPT.
