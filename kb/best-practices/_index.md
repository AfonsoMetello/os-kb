# OutSystems Best Practices KB

Official and community best practices for OutSystems. Separated by platform.

## O11

| File | Content |
|------|---------|
| [o11/architecture.md](o11/architecture.md) | Architecture Canvas, 3 layers, module types, reference rules, DDD, anti-patterns, scaling |
| [o11/performance.md](o11/performance.md) | Queries, screens, timers, integrations, caching, ViewState, DB patterns |
| [o11/platform-limits.md](o11/platform-limits.md) | Timeouts, numeric limits, BPT, IIS, connection pool |
| [o11/security.md](o11/security.md) | Auth (Users module, SAML, OIDC), roles, TDE, CSP, HTTPS, hardening, OWASP |
| [o11/data-model.md](o11/data-model.md) | Entities, delete rules, static entities, structures, indexes, multi-tenant |
| [o11/naming-conventions.md](o11/naming-conventions.md) | Naming by type (modules, entities, actions, screens, BPT, etc.) |
| [o11/integration-patterns.md](o11/integration-patterns.md) | REST, SOAP, BPT, Integration Studio, external DB, circuit breaker |
| [o11/testing-deployment-errors.md](o11/testing-deployment-errors.md) | BDD, LifeTime pipeline, CI/CD, error handling |
| [o11/ai-mentor-patterns.md](o11/ai-mentor-patterns.md) | Complete catalog: 70 patterns across Architecture (18), Performance (27), Security (13), Maintainability (12) |
| [o11/anti-patterns.md](o11/anti-patterns.md) | Consolidated anti-patterns catalog: Logic (7), UI (7), Data (8), Integration (4). Cross-platform O11/ODC coverage. |
| [o11/reactive-patterns.md](o11/reactive-patterns.md) | Reactive Web/Mobile: Client vs Server Actions, Data Actions, screen lifecycle, state management, block communication, error handling, 10 anti-patterns |
| [o11/debugging-troubleshooting.md](o11/debugging-troubleshooting.md) | Diagnosis checklists by symptom, exception handling, logging strategy, performance diagnosis, integration debugging, client-side debugging |
| [o11/internationalization.md](o11/internationalization.md) | Translation Editor, multilingual app structure, dynamic language switching, static entities, RTL, O11 vs ODC |
| [o11/offline-sync.md](o11/offline-sync.md) | Sync framework, local entity design, 5 sync patterns, conflict resolution, error handling, offline-first UX, O11 vs ODC |
| [o11/multi-tenant.md](o11/multi-tenant.md) | Architecture, entity flag, tenant provisioning, TenantSwitch pitfalls, cross-tenant reporting, testing, performance |
| [o11/cicd-guide.md](o11/cicd-guide.md) | CI/CD practical guide: LifeTime API v2 sequences, outsystems-pipeline, Jenkins/Azure DevOps, BDD automation, rollback, ODC model |
| [o11/accessibility.md](o11/accessibility.md) | WCAG: built-in features, ARIA, forms, navigation, focus, contrast, testing checklist, O11/ODC differences |
| [o11/factory-governance.md](o11/factory-governance.md) | Large-scale governance: team topologies, Conway's Law, DDD, ownership, AI Mentor at scale, reference sprawl, deployment coordination |
| [o11/traditional-web.md](o11/traditional-web.md) | Traditional Web: Preparation lifecycle, Screen Actions, ViewState, Ajax Refresh, Web Blocks, session management, migration context |

## ODC

| File | Content |
|------|---------|
| [odc/architecture.md](odc/architecture.md) | Apps, libraries, bounded contexts, dependency rules, scaling |
| [odc/performance.md](odc/performance.md) | Queries, screens, timers, containers, CDN, stateless patterns |
| [odc/platform-limits.md](odc/platform-limits.md) | Timeouts, numeric limits, External Logic, Aurora |
| [odc/security.md](odc/security.md) | Identity Service, OIDC, AES-256, Secret Settings, OWASP |
| [odc/data-model.md](odc/data-model.md) | Entities (GUID), delete rules, static entities, structures, indexes |
| [odc/naming-conventions.md](odc/naming-conventions.md) | Naming by type (apps, entities, actions, screens, Events, etc.) |
| [odc/integration-patterns.md](odc/integration-patterns.md) | REST, Events pub/sub, external DB, External Logic C#, circuit breaker |
| [odc/testing-deployment-errors.md](odc/testing-deployment-errors.md) | BDD, ODC deployment, error handling, code quality |
| [odc/ai-mentor-patterns.md](odc/ai-mentor-patterns.md) | Complete catalog: 38 patterns across Architecture (1), Performance (21), Security (8), Maintainability (8) |
| [odc/events-patterns.md](odc/events-patterns.md) | Events pub/sub: Backend/Database events, payload design, ordering, idempotency, versioning, dead-letter, sagas, performance, testing |
| [odc/portal-operations.md](odc/portal-operations.md) | ODC Portal operations: stage promotion, config management across stages, user/role workflows, monitoring/alerting, operational runbooks, audit trail |

## Cross-Platform

| File | Content |
|------|---------|
| [migration-o11-to-odc.md](migration-o11-to-odc.md) | Code-level migration patterns: concept mapping (25 O11-to-ODC pairs), refactoring patterns (screen lifecycle, Server/Service Actions, entity exposure, SQL, built-ins, REST, error handling, references), common pitfalls (CAT scope, what breaks, performance) |

Generated: 2026-03-28 (18 O11 + 11 ODC + 1 cross-platform). See [_maintenance.md](../_maintenance.md) for refresh instructions.
