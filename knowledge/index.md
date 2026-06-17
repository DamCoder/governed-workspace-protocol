---
type: index
title: GWP Knowledge Bundle
description: Entry point for the Governed Workspace Protocol knowledge bundle, aligned with Google's Open Knowledge Format (OKF).
tags: [index, okf, gwp]
timestamp: 2026-06-17
authority:
  owner: GWP Contributors
steward:
  team: GWP Contributors
confidence: working
alignment:
  status: aligned
---

# GWP Knowledge Bundle

This directory is an [Open Knowledge Format (OKF)](https://cloud.google.com/blog/products/data-analytics/how-the-open-knowledge-format-can-improve-data-sharing/)
bundle: a directory of markdown files, each representing one concept, with
YAML frontmatter that is readable by both humans and AI agents.

The **Governed Workspace Protocol (GWP)** layers governance metadata
(authority, stewardship, review, confidence, and alignment) on top of the
OKF base fields. The field set is documented in
[`schemas/gwp-metadata-schema.yaml`](../schemas/gwp-metadata-schema.yaml).

- **OKF** answers: *what knowledge exists?*
- **GWP** answers: *how should that knowledge be governed, trusted, reviewed, and consumed?*

---

## Governance

The first-class governance artifacts of the protocol:

- [Shared Alignment Context](governance/alignment.md) — why the workspace exists and the principles that keep it aligned.
- [Collaborative Review Standard](governance/review-standard.md) — how review preserves shared understanding.
- [Shared Responsibility & Stewardship](governance/stewardship.md) — who is responsible for what.
- [Authority Model & Trusted Sources](governance/authority-model.md) — trust, precedence, and conflict resolution.
- [Review History](governance/review-history/README.md) — preserving review lineage over time.

## Concepts

- [Shared Language](concepts/shared-language.md) — glossary of core GWP terms.

## Standards

- *(none yet — see [standards/README.md](standards/README.md))*

## Systems

- *(none yet — see [systems/README.md](systems/README.md))*

## Processes

- *(none yet — see [processes/README.md](processes/README.md))*

---

## Compliance level

This bundle currently targets **Level 3 — Governed workspace**: authority,
steward, and review are defined, and governance documents are present.
**Level 4** (active stewardship tooling) is future work — see
[`tools/context-steward/`](../tools/context-steward/README.md).
