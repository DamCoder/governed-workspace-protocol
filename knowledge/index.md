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

## GWP and structure

GWP governs collaboration behavior, not workspace structure. This OKF layout
is a **recommended substrate** for packaging the protocol — not a requirement.

The governance artifacts are deliberately structure-agnostic: each one is a
self-contained markdown file that can be dropped into any repository, folder,
or documentation system. A team can adopt GWP's principles without adopting
this directory tree at all. OKF is offered here because it makes the same
artifacts portable, discoverable, and AI-consumable — adding interoperability
without changing what GWP is.

---

## Governance

The first-class governance artifacts of the protocol:

- [Shared Alignment Context](governance/alignment.md) — why the workspace exists and the principles that keep it aligned.
- [Collaborative Review Standard](governance/review-standard.md) — how review preserves shared understanding.
- [Shared Responsibility & Stewardship](governance/stewardship.md) — who is responsible for what.
- [Authority Model & Trusted Sources](governance/authority-model.md) — trust, precedence, and conflict resolution.
- [Review History](governance/review-history/README.md) — preserving review lineage over time.

## Concepts

- [Shared Language](concepts/shared-language.md) — glossary index for the concepts below.
- [Alignment](concepts/alignment.md)
- [Context](concepts/context.md)
- [Context Drift](concepts/context-drift.md)
- [Trusted Source](concepts/trusted-source.md)
- [Shared Understanding](concepts/shared-understanding.md)
- [Review](concepts/review.md)
- [Stewardship](concepts/stewardship.md)
- [Reasoning Continuity](concepts/reasoning-continuity.md)
- [Workspace](concepts/workspace.md)

## Standards

- [Knowledge Asset Authoring Standard](standards/knowledge-asset-authoring.md) — how assets in this bundle are authored.

## Systems

- *(none yet — see [systems/README.md](systems/README.md))*

## Processes

- [Initializing a Workspace](processes/initializing-a-workspace.md) — AI-assisted setup of a new governed workspace from the starter. Start here.
- [Conducting a Collaborative Review](processes/conducting-a-review.md) — a step-by-step review runbook.

---

## Compliance level

This bundle currently targets **Level 3 — Governed workspace**: authority,
steward, and review are defined, and governance documents are present.
**Level 4** (active stewardship tooling) is future work — see
[`tools/context-steward/`](../tools/context-steward/README.md).
