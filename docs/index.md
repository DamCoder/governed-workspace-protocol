# Governed Workspace Protocol Documentation

Welcome to the Governed Workspace Protocol (GWP) documentation.

GWP is a lightweight protocol for maintaining aligned, explainable, and reviewable collaboration across shared human and AI workspaces.

GWP governs collaboration behavior and alignment principles, not workspace structure or orchestration models.

---

## Documentation

### Foundational Concepts

- [Introducing GWP](introducing-gwp.md)

---

### Core Protocol Artifacts

GWP is structured as an [Open Knowledge Format (OKF)](https://cloud.google.com/blog/products/data-analytics/how-the-open-knowledge-format-can-improve-data-sharing/) bundle — a directory of markdown files with governed YAML frontmatter — intended to support:

- collaborative continuity,
- reasoning alignment,
- explainability,
- and trusted context stewardship.

The bundle entry point is [`knowledge/index.md`](../knowledge/index.md).

### Governance

- [Shared Alignment Context](../knowledge/governance/alignment.md)
- [Collaborative Review Standard](../knowledge/governance/review-standard.md)
- [Shared Responsibility & Stewardship](../knowledge/governance/stewardship.md)
- [Authority Model & Trusted Sources](../knowledge/governance/authority-model.md)

### Concepts

- [Shared Language](../knowledge/concepts/shared-language.md)

### Processes

- [Initializing a Workspace](../knowledge/processes/initializing-a-workspace.md) — AI-assisted setup of a new governed workspace from the starter.
- [Conducting a Collaborative Review](../knowledge/processes/conducting-a-review.md)

### Review and Lineage

- [Review History](../knowledge/governance/review-history/README.md)
- [Review History Entry Template](../knowledge/governance/review-history/entry-template.md)

### Metadata & Tooling

- [`schemas/gwp-metadata-schema.yaml`](../schemas/gwp-metadata-schema.yaml) — OKF base + GWP governance fields
- [`tools/context-steward/`](../tools/context-steward/README.md) — planned stewardship tooling (Level 4)

---

## Relationship to ICM and MWP

GWP is influenced by emerging ideas in:

- Interpretable Context Methodology (ICM),
- Model Workspace Protocols (MWP),
- filesystem-native collaboration,
- and context-oriented AI workflows.

GWP is intended to complement — not replace — existing workspace models.

## General Relationship

| Concept | Focus |
| --- | --- |
| ICM / MWP | Workspace organization |
| GWP | Collaborative continuity and alignment |

---

## Current Focus

The current goal of GWP is exploration and discussion around:

- collaborative AI workspaces,
- explainable collaboration,
- reasoning continuity,
- alignment-aware workflows,
- and trusted context management.

The protocol is intentionally lightweight and evolving.

Feedback and discussion are encouraged.
