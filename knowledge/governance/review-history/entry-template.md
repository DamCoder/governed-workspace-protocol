---
type: governance
title: Review History Entry Template
description: A copy-and-fill template for a single review-history record, so entries stay consistent across a workspace.
tags: [review, history, template, governance]
timestamp: 2026-07-17
authority:
  owner: GWP Contributors
steward:
  team: GWP Contributors
review:
  required: false
  cadence: as-needed
  last_reviewed: 2026-07-17
confidence: working
alignment:
  status: aligned
related:
  - README.md
  - ../../processes/conducting-a-review.md
  - ../../processes/initializing-a-workspace.md
---

# Review History Entry Template

Copy this file to a dated entry in the appropriate review-history location and
fill it in. Suggested filename: `YYYY-MM-DD-short-topic.md`
(e.g. `2026-07-17-initialization.md`). Delete this guidance line once filled.

---

- **Date:** `YYYY-MM-DD`
- **Scope:** *(workspace-level, or the specific project/assets reviewed)*
- **Participants:** *(humans and any AI assistant involved)*
- **Type:** *(initialization | scheduled review | drift investigation | ad-hoc)*

## Findings

> One bullet per finding. For each: the review area, a short description, and a
> priority of high / medium / low. For an initialization entry, note what was set:
> purpose, owner, steward, cadence, starting confidence, trusted sources.

## Decisions

> What the humans decided, and the rationale. Which findings will be acted on.

## Metadata changes

> Assets whose `review.last_reviewed`, `confidence`, or `alignment.status`
> changed as a result.

## Resolution status

> open | resolved | deferred — with a follow-up owner if open or deferred.
