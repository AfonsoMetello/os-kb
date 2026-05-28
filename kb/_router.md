# KB Router

Keyword-to-file mapping for fast lookup. Read this FIRST, then only the files listed.
Paths relative to `kb/`. Abbreviations: bp = best-practices, pd = platform-docs, hw = howtos, sp = support.

## Architecture and modules

| Keywords | Files (read in order) |
|----------|----------------------|
| architecture, canvas, layers, module types, DDD | bp/o11/architecture + pd/o11/architecture |
| app, library, bounded context, dependency (ODC) | bp/odc/architecture + pd/odc/apps-libraries |
| anti-pattern, god module, spaghetti, code smell | bp/o11/anti-patterns (covers O11+ODC) |
| AI Mentor, technical debt, code analysis, pattern violation | bp/o11/ai-mentor-patterns (O11) or bp/odc/ai-mentor-patterns (ODC) |
| factory governance, team topology, Conway, scale, ownership | bp/o11/factory-governance |
| migration, O11 to ODC, CAT, convert, refactor | bp/migration-o11-to-odc + pd/o11/migration-to-odc (process/tooling) |
| O11-ODC interoperability, logic interop, data interop, coexistence, API Consumer/Producer, Data Fabric O11 | bp/migration-o11-to-odc |

## Data

| Keywords | Files |
|----------|-------|
| entity, aggregate, SQL, CRUD, static entity, structure | pd/o11/building-data or pd/odc/building-data |
| data model, indexes, delete rules, normalize | bp/o11/data-model or bp/odc/data-model |
| multi-tenant, tenant isolation, TenantSwitch | bp/o11/multi-tenant + pd/o11/user-management |
| offline, sync, local storage, conflict resolution | bp/o11/offline-sync + pd/o11/mobile |
| database, SQL Server, Oracle, catalog, replica, cleanup | pd/o11/database |
| Excel, import, export, data migration, concurrent updates | hw/data |

## UI and screens

| Keywords | Files |
|----------|-------|
| reactive, client action, data action, screen lifecycle | bp/o11/reactive-patterns |
| traditional web, preparation, ViewState, ajax refresh, web block, traditional to reactive, conversion accelerator | bp/o11/traditional-web |
| screen, widget, block, theme, CSS, pattern, layout | pd/o11/building-ui or pd/odc/building-ui |
| accessibility, WCAG, ARIA, keyboard, focus, screen reader | bp/o11/accessibility |
| SEO, URL routing, prerendering | pd/o11/seo-reuse or pd/odc/seo-forge |
| i18n, translation, multilingual, locale, RTL | bp/o11/internationalization |
| front-end how-to, JS trick, CSS custom, responsive | hw/front-end |

## Logic and actions

| Keywords | Files |
|----------|-------|
| action, flow, exception, transaction, timer, email, site property | pd/o11/building-logic or pd/odc/building-logic |
| BPT, process, activity, taskbox, Light BPT | pd/o11/bpt + hw/processes |
| performance, slow, cache, query optimization, ViewState | bp/o11/performance or bp/odc/performance |
| platform limits, timeout, max records, numeric limits | bp/o11/platform-limits or bp/odc/platform-limits |
| naming, convention, prefix, suffix | bp/o11/naming-conventions or bp/odc/naming-conventions |
| string, regex, file upload, extra login logic | hw/logic |

## Integration

| Keywords | Files |
|----------|-------|
| REST, SOAP, consume, expose, API | bp/o11/integration-patterns or bp/odc/integration-patterns |
| REST + security, authentication, OAuth | + bp/o11/security or bp/odc/security |
| extension, Integration Studio, .NET | pd/o11/integration |
| external logic, C#, .NET 8, external DB, Data Fabric, Snowflake | pd/odc/external-logic |
| events, pub/sub, backend event, database event (ODC) | bp/odc/events-patterns + pd/odc/workflows |
| SAP, AD, OneSignal, Workato | hw/integrations |

## Security

| Keywords | Files |
|----------|-------|
| auth, login, SAML, OIDC, SSO, Users module (O11) | bp/o11/security + pd/o11/user-management |
| identity, OIDC, IdP, API client, roles, groups (ODC) | bp/odc/security + pd/odc/identity |
| HTTPS, CSP, headers, AppShield, hardening, Sentry | pd/o11/security or pd/odc/security |
| SQL injection, XSS, taint analysis, OWASP | bp/o11/security (has OWASP mapping) or bp/odc/security |
| vulnerability, CVE, security bulletin | sp/security-bulletins |

## DevOps and deployment

| Keywords | Files |
|----------|-------|
| CI/CD, pipeline, Jenkins, Azure DevOps, GitHub Actions | bp/o11/cicd-guide |
| LifeTime, deployment plan, tag, permission, environment | pd/o11/lifetime |
| LifeTime API, v2, automation, token, service account | pd/o11/lifetime-api |
| deploy, publish, rollback, hotfix, zone (O11) | pd/o11/deploying |
| deploy, stage, promote, revision, container (ODC) | pd/odc/deploying |
| self-hosted, on-premises ODC, self-managed, cluster install, shared responsibility | pd/odc/self-hosted |
| ODC portal, domain, SMTP, gateway, operations | bp/odc/portal-operations + pd/odc/portal |
| BDD, test, mock, regression, Selenium, Playwright | pd/o11/testing or pd/odc/testing + bp/o11/testing-deployment-errors |

## Debugging and troubleshooting

| Keywords | Files |
|----------|-------|
| debug, breakpoint, watch, step | pd/o11/debugging or pd/odc/debugging |
| diagnose, slow, failing, checklist, root cause | bp/o11/debugging-troubleshooting |
| error code, CMFR, MABS, INBL, NAOS, AISA, Mentor Studio error, OS-IDCO, identity error | sp/error-codes |
| common issue, timeout, log, resolution | sp/troubleshooting |

## Tools and environment

| Keywords | Files |
|----------|-------|
| Service Studio, TrueChange, dependencies, merge, refactor, publish | pd/o11/service-studio |
| Service Center, factory, SMTP, DB connection, housekeeping | pd/o11/service-center |
| monitoring, logs, log streaming, OpenTelemetry, APM | pd/o11/monitoring or pd/odc/monitoring |
| AI Agent Builder, MCP, RAG, LLM, guardrails, A2A, agent-to-agent, agent evaluation | pd/odc/ai-agents |
| Mentor, Mentor Web, Mentor Studio, app generation, agentic, blueprint, AI-built app | pd/odc/agentic-development |
| Forge, trusted badge, component publish | sp/forge + pd/odc/seo-forge |

## Reference

| Keywords | Files |
|----------|-------|
| built-in function, data type, system action | pd/o11/language-reference or pd/odc/apis-reference |
| API reference, REST extensibility, JS API | pd/o11/apis-reference or pd/odc/apis-reference |
| compile warning, runtime error, error pattern | pd/o11/errors-reference |
| licensing, AO, end user, IPP, Personal Environment | sp/licensing |
| release notes, version, breaking change, MABS | sp/release-notes |
| infrastructure, sizing, maintenance window, failover | sp/enterprise-infra |
| Redis, reverse proxy, Azure trial | hw/infrastructure |
| CD pipeline how-to, Log Service cleanup, Firebase | hw/devops |

## Cross-cutting queries (need multiple files)

| Question pattern | Files to combine |
|------------------|-----------------|
| "build a secure REST API" | bp/{platform}/integration-patterns + bp/{platform}/security + bp/{platform}/ai-mentor-patterns (Security section) |
| "review this code for issues" | bp/o11/ai-mentor-patterns + bp/o11/anti-patterns + bp/{platform}/performance |
| "create a screen with data" | bp/o11/reactive-patterns + pd/{platform}/building-ui + pd/{platform}/building-data |
| "set up CI/CD from scratch" | bp/o11/cicd-guide + pd/o11/lifetime-api + pd/o11/testing |
| "migrate this module to ODC" | bp/migration-o11-to-odc + bp/o11/traditional-web (if Trad.Web) + pd/o11/migration-to-odc |
| "optimize a slow screen" | bp/o11/debugging-troubleshooting + bp/{platform}/performance + bp/o11/reactive-patterns (if Reactive) |
| "make this app accessible" | bp/o11/accessibility + pd/{platform}/building-ui |
| "add offline support" | bp/o11/offline-sync + pd/o11/mobile + bp/{platform}/performance (Mobile section) |
