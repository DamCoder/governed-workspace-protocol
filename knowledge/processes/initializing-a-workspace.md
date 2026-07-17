---
type: process
title: Initializing a Workspace
description: An AI-assisted process for turning the GWP starter bundle into a workspace-specific governed baseline, with human approval.
tags: [process, onboarding, initialization, runbook]
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
  - ../governance/alignment.md
  - ../governance/authority-model.md
  - ../governance/stewardship.md
  - ../governance/review-history/README.md
  - conducting-a-review.md
---

# Initializing a Workspace

This process turns a freshly copied GWP starter bundle into a workspace-specific
governed baseline. It is designed to be run **with an AI assistant**, but the AI
only elicits, drafts, and updates — a human defines purpose and authority and
approves the result.

Initialization is human-led: the AI reads the files, asks questions, and proposes
edits; the human answers, corrects, and approves. The workspace files — not the
chat — are the durable source of truth (see
[Authority Model & Trusted Sources](../governance/authority-model.md)).

## When to run

- Immediately after copying the GWP starter into a new workspace.
- When standing up an additional governed workspace from the starter template.

## The AI-assisted flow

1. **Read.** The AI reads the GWP files in the workspace (starting from
   `knowledge/index.md`) and briefly summarizes what it found.
2. **Find placeholders.** The AI identifies the fill-in tokens (`<your-team-or-role>`,
   `<yyyy-mm-dd>`) and any content that is still generic.
3. **Ask.** The AI asks the human the minimum initialization questions below.
   Advanced questions can be deferred.
4. **Draft updates.** From the answers, the AI replaces the placeholders across the
   frontmatter and customizes the
   [Shared Alignment Context](../governance/alignment.md) to describe *this*
   workspace's purpose.
5. **Set governance.** The AI records authority (owner) and stewardship (steward),
   the review cadence, and the trusted sources contributors should prioritize.
6. **Seed content.** If the human named a first system, project, or process, the AI
   adds a first asset of the appropriate `type`.
7. **Record the baseline.** The AI creates an initial review-history entry from the
   [entry template](../governance/review-history/entry-template.md), noting that the
   workspace was initialized and what was decided.
8. **Human approval.** The human reviews every change and approves (or edits) the
   initialized baseline. Nothing is authoritative until a human approves it.

## Initialization questions

**Minimum (needed for a useful baseline):**

1. What is this workspace for?
2. Who owns the workspace (the team or role accountable for its content)?
3. Who maintains or stewards it? If solo, should owner and steward be the same?
4. Should the initialized workspace start as `working`, `reviewed`, or
   `authoritative`?

**Optional (can be deferred without blocking initialization):**

- What kinds of knowledge will this workspace govern?
- What is the first system, project, or process that should be documented?
- What trusted sources should contributors prioritize?
- How often should governance docs be reviewed (e.g. annual, quarterly, as-needed)?

## Definition of done

The workspace is initialized when:

- No `<your-team-or-role>` or `<yyyy-mm-dd>` tokens remain.
- The Shared Alignment Context names a real, workspace-specific purpose.
- An `authority.owner` and a `steward.team` are set on the governance artifacts.
- A review cadence is set (or explicitly chosen as `as-needed`).
- An initial review-history entry exists recording the initialization.
- A human has reviewed and approved the result.

## Output

A workspace-specific governed baseline: customized governance artifacts, resolved
metadata, and a first review-history entry — ready for collaborative work with
reasoning continuity preserved from day one.
