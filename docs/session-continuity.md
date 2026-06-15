# Project continuity + shared-VPS setup

Canonical instructions (from the labproof setup) for giving **any** project the same
self-documenting session continuity, and for stopping sessions from clobbering each other
on the shared Hostinger VPS.

To apply to another project (e.g. KOVR): open that project's Claude session and paste
everything below the line.

---

**Set up project continuity and shared-VPS safety for THIS repo:**

1. **Create `STATUS.md`** at the repo root with three sections (fill from what you know about this project):
   - **Current state** — what's live, URL(s), repo + local path, how to deploy.
   - **Log** — dated entries, newest first, of what changed.
   - **Open threads / next steps** — where work left off.

2. **Ensure `CLAUDE.md`** exists at the repo root. Add this at the very top:
   > **Session protocol:** Read `STATUS.md` first to catch up on current state and where work left off. Before finishing, update it — refresh "Current state", add a dated Log entry, and adjust "Open threads".

3. **Add a "Shared VPS coordination" section to `CLAUDE.md`** with these rules — the VPS at `187.77.143.45` is shared by several projects/sessions:
   - Deploy only to THIS project's own directory and URL route. Never `rm -rf`, overwrite, or move another project's files.
   - **SSH keys:** *append* your public key to `/root/.ssh/authorized_keys` (dedupe). **Never overwrite that file, and never recreate/reinstall the VPS** — that wipes other sessions' access. (This is what knocked out labproof's deploy key.)
   - **nginx:** add only this project's own `location`/server block. Never regenerate or replace the whole nginx config.
   - **Route reservation:** this project owns its URL prefix (e.g. `/kovr`). nginx prefix-matches, so don't serve another project's assets under a path that *starts with* a different project's route (e.g. `/kovr-icon.svg` gets routed to the KOVR app, not the static file). Keep shared assets under neutral paths like `/img/` or `/assets/`.

4. **Scrub secrets, then commit + push** `STATUS.md` and `CLAUDE.md`. Never commit API tokens/keys; keep them in env vars or gitignored files.

After this, keep `STATUS.md` current — update it (or just say "log it") at the end of each working session.
