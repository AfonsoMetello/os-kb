# OS-KB

> A vendor-neutral framework for curating OutSystems platform documentation into agent-ready knowledge. **The method is open. The curated content is yours to generate.**

OutSystems platform documentation is excellent but sprawled across 4 GitHub repos and hundreds of pages. Feeding it raw to AI agents wastes tokens. OS-KB defines a consistent file format -- `## Quick Reference` (10-20 critical facts) + `## Deep Dive` + `## Sources` -- and a keyword router so an agent (or a human) lands on the right facts in one read.

Because the upstream docs are licensed CC BY-NC-ND, the curated derivative text is **not** redistributed here. You clone the upstream repos and generate your own `kb/` locally, paying your own LLM bill. This repo gives you the structure, conventions, refresh process, and tooling -- everything except the derivative content itself.

## What's in this repo

| Path | What it is |
|---|---|
| `kb/_router.md` | Keyword to file lookup. Read this first for any query. |
| `kb/_maintenance.md` | Refresh process (ready-to-paste prompts), schedule, full history |
| `kb/**/_index.md` | Tables of contents for each section |
| `.claude/` | Banner, `SessionStart` hook, Claude Code project settings |
| `CLAUDE.md` | Conventions: vendor-neutral, file format, source paths |
| `LICENSE` | MIT for the framework |

## What you generate locally

| Path | Files | Source |
|---|---|---|
| `kb/platform-docs/o11/*.md` | 24 | `docs-product` |
| `kb/platform-docs/odc/*.md` | 20 | `docs-odc` |
| `kb/best-practices/o11/*.md` | 19 | `docs-product` + curated |
| `kb/best-practices/odc/*.md` | 11 | `docs-odc` + curated |
| `kb/support/*.md` | 7 | `docs-support` |
| `kb/howtos/*.md` | 8 | `docs-howtos` |

Each curated file follows the same shape: `## Quick Reference`, `## Deep Dive`, `## Sources` (with `.os-docs-X/` prefix to keep paths portable).

## Quickstart

```bash
git clone https://github.com/afonsometello/os-kb.git
cd os-kb

# Clone the 4 upstream docs repos (shallow)
git clone --depth 1 https://github.com/OutSystems/docs-product.git .os-docs-o11
git clone --depth 1 https://github.com/OutSystems/docs-odc.git     .os-docs-odc
git clone --depth 1 https://github.com/OutSystems/docs-support.git .os-docs-support
git clone --depth 1 https://github.com/OutSystems/docs-howtos.git  .os-docs-howtos

# Bootstrap: open this directory in Claude Code (or your agent of choice)
# and run the "Full refresh" prompt from kb/_maintenance.md. The agent will
# read the upstream .md files and generate kb/**/*.md following the conventions.
# Expect token spend proportional to the upstream size (~1.7GB raw).
```

You bring your agent. You pay your tokens. The framework is free.

## Refresh

Cadence: every 15 days. `kb/_maintenance.md` has both full-refresh and delta-refresh prompts ready to paste, plus a running history of every refresh and what changed.

## Upstream sources and licensing

| Area | Upstream | License |
|---|---|---|
| O11 platform docs | https://github.com/OutSystems/docs-product | No LICENSE file (all rights reserved) |
| ODC platform docs | https://github.com/OutSystems/docs-odc | CC BY-NC-ND 4.0 |
| Support | https://github.com/OutSystems/docs-support | CC BY-NC-ND 4.0 |
| How-tos | https://github.com/OutSystems/docs-howtos | CC BY-NC-ND 4.0 |

The CC BY-NC-ND license prohibits redistribution of derivative works. That is why this repo distributes only the framework, not the curated text. When you generate `kb/` locally for your own use, you stay within the scope the upstream license allows (non-commercial use, no further redistribution).

## License

The framework -- everything in this repo -- is licensed under [MIT](LICENSE). Generated curated content (`kb/**/*.md` other than `_*.md`) inherits the upstream license terms; treat it accordingly.

## Credits

Framework by [Afonso Metello](https://github.com/afonsometello).
