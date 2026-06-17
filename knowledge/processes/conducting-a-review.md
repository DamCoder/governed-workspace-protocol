---
type: process
title: Conducting a Collaborative Review
description: A repeatable process for reviewing a GWP workspace for alignment, reasoning continuity, and explainability, and recording the outcome.
tags: [process, review, runbook]
timestamp: 2026-06-17
authority:
  owner: GWP Contributors
steward:
  team: GWP Contributors
review:
  required: false
  cadence: as-needed
  last_reviewed: 2026-06-17
confidence: working
alignment:
  status: aligned
related:
  - ../governance/review-standard.md
  - ../governance/review-history/README.md
  - ../concepts/review.md
---

# Conducting a Collaborative Review

This process describes how to run a collaborative review of a workspace or a
specific project. It applies the criteria defined in the
[Collaborative Review Standard](../governance/review-standard.md) and serves as
a worked example of a `type: process` asset.

Review is human-led: AI may surface observations, but interpretation,
prioritization, and final decisions remain with human contributors.

## When to run

- Before a significant decision or milestone.
- When [context drift](../concepts/context-drift.md) is suspected.
- On a recurring cadence agreed by the workspace.

## Steps

1. **Set scope.** Decide whether the review is workspace-level or scoped to a
   specific project, and which assets are in scope.
2. **Gather context.** Collect the in-scope assets and their `related` links so
   reasoning can be followed across the knowledge graph.
3. **Assess each review area.** For each in-scope asset, check it against the
   review areas in the standard: purpose alignment, reasoning consistency,
   trusted-source alignment, workflow continuity, context freshness, and
   explainability.
4. **Record findings.** For each issue, note the area, a short description, and
   a priority (high / medium / low).
5. **Human decision.** Contributors discuss findings, decide what to act on, and
   capture the rationale.
6. **Update metadata.** Where assets changed, update their `review.last_reviewed`
   and, if needed, `confidence` and `alignment.status`.
7. **Preserve the record.** Save the outcome to a
   [Review History](../governance/review-history/README.md) at the appropriate
   workspace or project level.

## Output

A dated review record containing scope, findings, severities, decisions, and
resolution status — preserving review lineage and reasoning continuity over time.
