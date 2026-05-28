# OSKB -- OutSystems Knowledge Base

Vendor-neutral OutSystems knowledge base, built from the official OutSystems GitHub docs repos.

## What is this

A framework for curating OutSystems 11 (O11) and OutSystems Developer Cloud (ODC) documentation, plus support and how-tos, into a consistent agent-ready format. Designed to be consumed by OutSystems-savvy agents and humans. The KB does not document anything built on top of OutSystems; only OutSystems itself and its native tooling.

This repo distributes the **framework** (router, indexes, refresh process, conventions, tooling). The curated content itself (`kb/**/*.md` other than `_*.md`) is generated locally per `README.md` Quickstart because the upstream docs are CC BY-NC-ND.

## Structure

```
os-kb/
  kb/
    _maintenance.md         -- refresh process + history table
    _router.md              -- keyword -> file lookup
    platform-docs/
      o11/                  -- 24 files (from OutSystems/docs-product)
      odc/                  -- 20 files (from OutSystems/docs-odc)
    best-practices/
      o11/                  -- 19 files (curated, includes AI Mentor patterns catalog)
      odc/                  -- 11 files (curated, includes AI Mentor patterns, events, portal ops)
      migration-o11-to-odc.md  -- cross-platform migration patterns
    support/                -- 7 files: error codes, troubleshooting, release notes, Forge,
                               security bulletins, licensing, enterprise infra
                               (from OutSystems/docs-support)
    howtos/                 -- 8 files: front-end, dev, data, infra, integrations, logic,
                               devops, processes (from OutSystems/docs-howtos)
  .os-docs-o11/             -- shallow clone of OutSystems/docs-product
  .os-docs-odc/             -- shallow clone of OutSystems/docs-odc
  .os-docs-support/         -- shallow clone of OutSystems/docs-support
  .os-docs-howtos/          -- shallow clone of OutSystems/docs-howtos
```

Each KB file has a `## Quick Reference` (10-20 critical facts) + `## Deep Dive` + `## Sources` (the exact source `.md` files used, with `.os-docs-X/` prefix). Read `_router.md` first to find the right file for a query.

## Source repos

| Area | Upstream |
|------|----------|
| O11 platform docs | https://github.com/OutSystems/docs-product |
| ODC platform docs | https://github.com/OutSystems/docs-odc |
| Support | https://github.com/OutSystems/docs-support |
| How-tos | https://github.com/OutSystems/docs-howtos |

## Maintenance

Refresh schedule and full process in `kb/_maintenance.md`. Target cadence: every 15 days. The history table at the bottom of that file records every refresh.

## Neutrality rule

The KB is **vendor-neutral**: only OutSystems content and references to native OutSystems tooling (AI Mentor Studio / Architecture Dashboard, Discovery, LifeTime, Service Studio, ODC Studio, ODC Portal, Service Center, Forge). Tooling specific to your agent platform, automation framework, or CLI lives outside `kb/`. Framing like "for X agents" / "consumed by X" is not used here.

## Conventions

- User language for conversation, English for content.
- `## Sources` always uses the relative `.os-docs-X/` prefix (no absolute paths, no path-leakage from any consumer workspace).
