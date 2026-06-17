---
type: standard
title: Knowledge Asset Authoring Standard
description: How knowledge assets in a GWP bundle are authored — file conventions, required frontmatter, and how assets link into the OKF knowledge graph.
tags: [standard, authoring, okf, frontmatter]
timestamp: 2026-06-17
authority:
  owner: GWP Contributors
steward:
  team: GWP Contributors
review:
  required: true
  cadence: annual
  last_reviewed: 2026-06-17
confidence: working
alignment:
  status: aligned
related:
  - ../concepts/shared-language.md
  - ../governance/review-standard.md
---

# Knowledge Asset Authoring Standard

This standard describes how to author a knowledge asset in a Governed Workspace
Protocol (GWP) bundle so that it is both human-readable and AI-consumable. It
also serves as a worked example of a `type: standard` asset.

The authoritative field list is
[`schemas/gwp-metadata-schema.yaml`](../../schemas/gwp-metadata-schema.yaml);
this standard explains how to apply it in practice.

## File conventions

- One concept per file. Each asset is a single markdown file.
- File names are lower-case `kebab-case` and stable once published (the file
  name acts as the asset's identifier in links).
- Place the file under the category that matches its `type`:
  `governance/`, `concepts/`, `standards/`, `systems/`, or `processes/`.

## Required frontmatter

Every asset begins with YAML frontmatter. Per the Open Knowledge Format, `type`
is the only strictly required field; GWP additionally expects the governance
fields below for any asset in a governed workspace.

- `type` — one of `governance`, `concept`, `standard`, `system`, `process`
  (OKF-required).
- `title`, `description`, `tags`, `timestamp` — OKF base fields; author all
  four for discoverability.
- `authority.owner` and `steward.team` — who is accountable for, and who
  maintains, the asset.
- `review` — whether review is required, its cadence, and the last review date.
- `confidence` — one of `authoritative`, `reviewed`, `working`,
  `experimental`, `deprecated`.
- `alignment.status` — one of `aligned`, `partial`, `under_review`,
  `conflicting`.

## Linking into the knowledge graph

- Express relationships with the `related` frontmatter list and with inline
  markdown links in the body.
- Use **relative markdown paths**, not bare wikilinks — for example
  `../concepts/alignment.md`. This keeps references unambiguous when a concept
  and a governance document share a base name.

## Review

Standards are normative, so `review.required` should be `true`. Significant
changes follow the [Collaborative Review Standard](../governance/review-standard.md).
