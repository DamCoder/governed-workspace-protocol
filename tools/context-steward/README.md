# Context Steward (planned)

> **Status: placeholder — no tooling code yet.**

Context Steward is the planned GWP tooling layer (PRD §11, Compliance Level 4).
It is described here so the repository structure reflects the intended
architecture; nothing in this directory is required to use GWP today.

GWP is and remains **tooling-optional**: the knowledge bundle under
[`knowledge/`](../../knowledge/index.md) is plain markdown and works with no
software at all (Levels 0–3).

## Intended responsibilities

### Ingest

- OKF repositories
- GWP governance metadata (frontmatter)
- markdown relationships (the OKF knowledge graph)

### Generate

- governed context packets
- authority summaries
- stewardship summaries
- review summaries

### Export

- OKF-compliant repositories
- GWP governance metadata

## Architectural placement

| Layer | Responsibility | Lives in |
| --- | --- | --- |
| 1 — Open Knowledge Format | content, metadata, relationships, discovery | [`knowledge/`](../../knowledge/index.md) |
| 2 — Governed Workspace Protocol | authority, stewardship, review, alignment | [`knowledge/governance/`](../../knowledge/governance/) + [`schemas/`](../../schemas/) |
| 3 — Context Steward systems | context extraction, packaging, AI delivery | `tools/` (this layer) |

See the [GWP metadata schema](../../schemas/gwp-metadata-schema.yaml) for the
fields this tooling will consume.
