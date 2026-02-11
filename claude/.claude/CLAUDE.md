# Global

## Me
Solo infrastructure and data platform operator. San Diego.
Fedora Sway Atomic daily driver. Direct communication preferred.
Push back when something is wrong — I'd rather be corrected than coddled.

No fake pleasantries — no "great question", no "thanks for the logs."
If you see me making mistakes or repeating bad patterns, tell me.
Don't silently fix things or work around my shortcomings. Point them
out so I can learn.

## How to Work

### The workflow
For every non-trivial task, read and follow `/home/mkultra/monkeybrain/thought-garden/sop-recursive-task.md`.
This is the operating loop: Plan → Execute → Reflect → Propagate.
Trivial tasks (single-line fixes, simple lookups) can skip the SOP.

### Never fabricate commands, URLs, or flags
- If you haven't verified a URL resolves, don't give it to the user.
- If you don't know the exact CLI flag, run `--help` or look up docs
  BEFORE suggesting it. Never guess flags.
- If a command fails, do not retry with made-up variations. Stop,
  look up the actual documentation, and come back with a verified answer.
- This applies especially to: download URLs, CLI tool flags, API
  endpoints, version numbers, and package names.

## Working in Teams

Default team structure when spawning for non-trivial work:
- **Builders** — Scoped by directory. Own implementation files.
  One builder per directory tree to avoid conflicts.
- **Reviewer** — Reads all builder output. Validates against
  standards in this file and AGENTS.md. Messages builders with
  issues. Never edits implementation files.
- **Docs** — Monitors progress. Updates tasks/todo.md,
  tasks/lessons.md, docs/structure.md. Ensures AGENTS.md stays
  accurate. Never edits implementation files.

For simple tasks, skip the team. For anything touching multiple
directories or requiring architectural decisions, use the structure.

Rules for all teammates:
- Own your files. Never edit files another teammate is working on.
- Use the shared task list for coordination.
- Message findings explicitly — teammates don't share context.
- Lessons still get captured in tasks/lessons.md.

## Standards (all repos)
- No plaintext secrets in git. Use SOPS for files, ESO for k8s,
  chezmoi+Bitwarden for desktop.
- Pin all versions. No :latest tags, no unpinned deps.
- Conventional commits: type(scope): description
- Work in small, testable increments.
- Write idiomatic, simple, maintainable code. Always ask: is this
  the most simple intuitive solution?
- Leave each repo better than you found it.
- For infrastructure: boring and obvious beats clever.
- Verify all work before calling it done.
- When corrected, update tasks/lessons.md.
- Fix errors autonomously — trace, don't ask.
- 3-strike rule — three failures, switch approach.
- End non-trivial outputs with a confidence line:
  `Confidence: X/10 — [one-sentence rationale]`
  Skip for routine tasks (file edits, simple lookups). Use for
  architectural recommendations, root cause analysis, and anything
  where you're reasoning under uncertainty.

## Conventions
- **Read before modifying** — Understand existing patterns first.
- **No changes without consent** — Show diffs, get approval. Relaxed
  during swarm ops when lead has delegated scope.
- **Push to Forgejo, not GitHub** — Self-hosted git is the standard.
- **GitOps only** — Never mutate production directly.
- **Knowledge base** — `/home/mkultra/monkeybrain/thought-garden/` is the knowledge repo (Obsidian vault).
  `Mkultra.md` is the dev system entry point. `taxonomy.md` defines the type system.
  Read taxonomy.md before working with notes. Reference, don't duplicate.
- **After modifying repo structure** — Run `generate_structure` to
  update `docs/structure.md`.

## When starting work in any repo
1. Read AGENTS.md — it routes you to everything repo-specific.
2. Check tasks/lessons.md — learn from past mistakes.
3. Follow Knowledge Hub links to thought-garden for project context.
4. Check for .claude/skills/ — use domain-specific patterns if they exist.

For system-level understanding, start at `/home/mkultra/monkeybrain/thought-garden/Mkultra.md`.
AGENTS.md takes precedence over this file for project-specific concerns.

## Platform context
Infrastructure platform called "dazoo". Nodes: monkeymesh (anchor),
zookeeper (platform), monkeybusiness (home worker), monkeysuit (work
cluster), banana-stand (bots), gpa-server (backup).
