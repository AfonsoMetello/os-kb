# KB Maintenance -- Refresh Instructions

## Sources

Two types of content with different sourcing:

**Platform docs** (`platform-docs/`) -- built from official OutSystems GitHub repos:
- **O11**: [OutSystems/docs-product](https://github.com/OutSystems/docs-product)
- **ODC**: [OutSystems/docs-odc](https://github.com/OutSystems/docs-odc)
- Every file has a `## Sources` section listing the exact .md files that were read.

**Best practices** (`best-practices/`) -- curated from official docs + community sources:
- Naming conventions, anti-patterns, code review checklists, performance rules
- Complementary to platform docs ("how you should do it" vs "how it works")
- Sources are mixed (official docs, Synobsys standards, MVP articles, blog posts)

**Support** (`support/`) -- from [OutSystems/docs-support](https://github.com/OutSystems/docs-support):
- Error codes, troubleshooting, licensing, security bulletins, enterprise infra, release notes, Forge

**How-tos** (`howtos/`) -- from [OutSystems/docs-howtos](https://github.com/OutSystems/docs-howtos):
- Step-by-step guides: front-end, development, data, infrastructure, integrations, logic, devops, processes

## Structure

```
kb/
  _maintenance.md                          -- this file
  platform-docs/
    o11/_index.md + 22 files               -- O11 docs (from docs-product)
    odc/_index.md + 18 files               -- ODC docs (from docs-odc)
  best-practices/
    _index.md
    o11/  (18 files)                       -- O11 best practices (curated) + AI Mentor patterns
    odc/  (11 files)                       -- ODC best practices (curated) + AI Mentor patterns + Events + Portal ops
    migration-o11-to-odc.md                -- Cross-platform migration patterns
  support/
    _index.md + 7 files                    -- Support docs (from docs-support)
  howtos/
    _index.md + 8 files                    -- How-to guides (from docs-howtos)
```

## File format

```markdown
# Title

## Quick Reference
- 10-20 critical facts from official docs
- Exact numbers, endpoints, configs, key rules

---

## Deep Dive
[Comprehensive content from official sources]

## Sources
[List of every .md file read from the GitHub repo]
```

## Refresh schedule

**Every 15 days** -- run either a full or delta refresh depending on scope of upstream changes.

Target dates: 1st and 15th of each month (or nearest working day).

Checklist per refresh:
1. Platform docs (docs-product, docs-odc, docs-support, docs-howtos)
2. Best practices (curated content + AI Mentor patterns catalog)
3. AI Mentor patterns specifically: re-fetch `ref-code-patterns.md` from docs-product and `manage-technical-debt/` tree from docs-odc. Compare pattern counts against current files. Add new patterns, update changed descriptions/severities.
4. Update `_index.md` files if any file was added/removed/renamed.
5. Update `_router.md` keyword mappings for any changed/new files.
6. Update refresh history table below.

---

## How to refresh

### Full refresh from GitHub repos

```
Prompt:

"Refresh the OutSystems KB from official GitHub repos.

1. git pull in .os-docs-o11/ and .os-docs-odc/ (or re-clone if missing):
   git clone --depth 1 https://github.com/OutSystems/docs-product.git .os-docs-o11
   git clone --depth 1 https://github.com/OutSystems/docs-odc.git .os-docs-odc

2. For each KB file, re-read the source .md files listed in ## Sources
3. Update Quick Reference with any changed facts
4. Update Deep Dive with new content
5. If new sections exist in the repo that aren't covered, create new KB files
6. Update _index.md files
7. Update kb/_router.md if any file was added, removed, renamed, or changed scope
8. Update refresh history below

Use Sonnet for compilation agents. Launch in parallel by topic.
CRITICAL: Only include content from the source .md files. No training knowledge."
```

### Delta refresh (faster)

```
Prompt:

"Delta refresh the OutSystems KB.

1. git pull in .os-docs-o11/ and .os-docs-odc/
2. git diff HEAD~1 to see what changed
3. Only update KB files affected by changed source .md files
4. Update Quick Reference if facts changed
5. Update kb/_router.md if file scope changed
6. Update refresh history"
```

### Adding new topics

1. Create file in `kb/platform-docs/{o11|odc}/new-topic.md` or `kb/best-practices/{o11|odc}/new-topic.md`
2. Include Quick Reference + Deep Dive + Sources
3. Add to the relevant `_index.md`
4. Add keyword mappings to `kb/_router.md`

### Updating the router (`_router.md`)

The router maps keywords to files for fast lookup. Update it whenever:
- A new KB file is added (add keyword rows pointing to it)
- A KB file is renamed or removed (update/remove affected rows)
- A refresh changes a file's scope significantly (update keyword mappings)
- A cross-cutting query pattern emerges that isn't covered

The router should stay under 150 lines. If it grows beyond that, consolidate rows rather than splitting into multiple routers.

### Validate coverage

```
Prompt:

"Compare KB structure against the official docs repos.
List the top-level toc.yml sections and check which are covered by KB files.
Identify gaps."
```

## Refresh history

| Date | Scope | Notes |
|------|-------|-------|
| 2026-03-24 | Full build from GitHub | O11 (22 files from docs-product) + ODC (18 files from docs-odc). All content from official .md sources only. |
| 2026-03-28 | AI Mentor + gap fill | Added 17 new files: AI Mentor patterns (O11 70 + ODC 38), reactive-patterns, anti-patterns, migration-o11-to-odc, internationalization, debugging-troubleshooting, offline-sync, multi-tenant, cicd-guide, accessibility, factory-governance, traditional-web, events-patterns (ODC), portal-operations (ODC), service-studio, lifetime-api. Total KB: 24 platform-docs (O11) + 18 (ODC) + 18 best-practices (O11) + 11 (ODC) + 1 cross-platform + 7 support + 8 howtos. |
| 2026-05-22 | Delta refresh (O11 + ODC + support + best-practices) | Synced 4 clones to upstream HEAD (2026-05-21/22). Filtered automated style/metadata sweeps (incl. a 1676-file target-audience-classification commit); substantive delta = 23 of 88 KB files (20 updated, 3 no-change). Highlights: ODC AI agents (GPT-5 + Claude Haiku 4.5 trial models, guardrails nav/override, MCP array constraint), external-logic (Snowflake source, conn-pool params, SAP OData Pagesize, Oracle RAC), deploying (publish-with-message 2000 chars, 9 new inconsistency types), database events exactly-once, building-data select-only-attributes, building-ui Icon Library (Phosphor 2.0), O11 merge terminology + publish-with-message shortcut, user-management SSO, support OS-NAOS codes (plug/ removed, moved to mabs/), Data Fabric O11 connector, session timeout configurable per stage. Howtos: all changes were style-noise, unchanged. AI Mentor patterns catalog unchanged (only tech-debt workflow pages changed, no KB-relevant facts). |
| 2026-05-22 | Coverage gap-fill | Added 2 new ODC platform-docs: agentic-development.md (Mentor Web + Mentor Studio, 17 sources) and self-hosted.md (8 sources). Extended ai-agents.md (agent evaluations + agent-to-agent A2A), apis-reference.md (env-config/subscription/native-mobile-builds APIs), integration.md (ODC Camera plugin v1->2), o11/mobile.md (Camera plugin v7->8). Found via coverage check (new upstream dirs with no KB file). Also fixed 2 best-practices the delta initially missed due to non-standard Sources format (o11 ai-mentor-patterns, o11 anti-patterns -- both content-current); normalized all 3 bare-path Sources to the .os-docs- prefix. ODC platform-docs now 20 files. |
| 2026-05-22 | Coverage gap-fill (round 2) | Filled remaining doc-vs-KB gaps found by coverage + bare-path checks. Added O11<->ODC **logic interoperability** to migration-o11-to-odc.md (REST-based, API Consumer=ODC/Producer=O11, PS 11.41.0, AO-neutral). Added error families to support/error-codes.md: **AISA** (Mentor Studio, 11 codes) + **OS-APPS-40047** (from docs-odc, first cross-repo citation) and **Identity** (OS-IDCO-*/OS-UAUC-*, 5 codes from docs-support). Extended: building-logic (AI logic suggestions), building-ui (Icon widget + mobile build types), workflows (publish), bp/odc/naming-conventions (app naming), external-logic (Snowflake key-pair), security (Sentry), identity (user session config), troubleshooting (IM-3974, IM-4109), bp/o11/traditional-web (trad->reactive accelerator). All extensions, no new files. |
| 2026-05-27 | Sources hygiene + missed-file refresh | Found 10 KB files whose `## Sources` used absolute local paths leaking the workspace root, a 3rd Sources-format variant invisible to the delta regex. Normalized all to relative `.os-docs-X/` form (KB Sources now 100% uniform). Re-checked the 10 against the substantive delta: 4 were genuinely stale and refreshed (apis-reference: session/auth/text/API domains; identity: roles permissions, lockout; security: CSP directives, PCI; seo-forge: Forge trial model, AI Mentor). Note: upstream `building-apps/ai-mentor/` tree was removed and reorganized into `agentic-development/`; seo-forge Sources repointed accordingly. |
