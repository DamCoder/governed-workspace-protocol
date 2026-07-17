# Governed Workspace Protocol (GWP)

A lightweight protocol for maintaining aligned, explainable, and reviewable collaboration across shared human and AI workspaces.

## What Is GWP?

Governed Workspace Protocol (GWP) is a lightweight collaboration protocol designed to help humans and AI systems work together through:

* shared context,
* explainable reasoning,
* alignment-aware workflows,
* trusted sources,
* and reviewable collaboration artifacts.

GWP is filesystem-native, but conceptually portable across:

* Git repositories,
* shared folders,
* documentation systems,
* research workspaces,
* architecture repositories,
* and collaborative knowledge environments.

GWP governs collaboration behavior, not workspace structure.

## Download & Adopt GWP

You don't need to clone this repo to use GWP. Each tagged release publishes ready-to-use
bundles on the [Releases page](https://github.com/DamCoder/governed-workspace-protocol/releases):

* **`gwp-<version>.zip`** — the full bundle: a drop-in `starter/` skeleton (frontmatter
  genericized with fill-in tokens) plus a `reference/` copy of the complete worked
  example. Best if you're new to GWP and want the example to learn from.
* **`gwp-<version>-starter.zip`** — the starter skeleton only. Best if you already know
  GWP and just want a fresh template to spin up another workspace.

Both include a `GETTING-STARTED.md` that walks through copying the files into your own
workspace. The fastest way to go from generic files to a workspace-specific baseline is
the **AI-assisted initialization** flow: open the bundle with your AI assistant, paste
the provided prompt, and answer a few questions — it replaces the placeholders,
customizes the alignment context, and drafts a first review record for you to approve.
The governed procedure is [`Initializing a
Workspace`](knowledge/processes/initializing-a-workspace.md). The bundles are built by
[`scripts/build-release.sh`](scripts/build-release.sh) and exclude all repo-only tooling.

## Why GWP Exists

As AI collaboration becomes more common, teams are beginning to encounter new operational challenges:

* context drift,
* conflicting assumptions,
* disconnected reasoning,
* prompt sprawl,
* hidden decision criteria,
* duplicated guidance,
* and loss of explainability over time.

Most current AI tooling focuses on:

* models,
* prompts,
* agents,
* orchestration,
* and automation.

GWP focuses on a different problem:

How do humans and AI maintain aligned, explainable, and trustworthy collaboration over time?

The goal is not simply generating outputs.

The goal is preserving shared understanding.

## Relationship to ICM and MWP

GWP is heavily influenced by emerging ideas in:

* Interpretable Context Methodology (ICM),
* Model Workspace Protocols (MWP),
* filesystem-native AI collaboration,
* and context-oriented workflows.

In particular, the work of Jake Van Clief and others exploring workspace-oriented AI systems helped shape many of the ideas explored here.

GWP is intended to complement — not replace — existing ICM/MWP workspace models.

### General Relationship

| Concept | Focus |
| --- | --- |
| ICM / MWP | How workspaces may be organized |
| GWP | How collaboration remains aligned and explainable within those workspaces |

GWP intentionally avoids prescribing:

* folder structures,
* workflow stages,
* implementation models,
* or domain-specific processes.

Instead, GWP focuses on:

* collaborative continuity,
* reasoning alignment,
* trusted context,
* and explainable review.

## Core Ideas

GWP is built around several foundational principles:

### Humans Lead the Process

Humans remain responsible for:

* direction,
* judgment,
* approval,
* and stewardship.

AI systems assist collaboration by helping:

* organize information,
* identify gaps,
* surface inconsistencies,
* summarize reasoning,
* and support contextual continuity.

### Context Should Remain Explainable

Workspaces should remain:

* understandable,
* reviewable,
* maintainable,
* and useful to future contributors.

The protocol encourages:

* visible reasoning,
* documented assumptions,
* and explainable collaboration.

### Alignment Before Action

Execution should remain connected to:

* shared purpose,
* documented reasoning,
* trusted sources,
* and collaborative understanding.

### Review Supports Shared Understanding

Review exists to help identify:

* misalignment,
* context drift,
* conflicting assumptions,
* stale reasoning,
* and explainability gaps.

The goal of review is not rigid enforcement.

The goal is preserving collaborative continuity over time.

## Current Protocol Components

GWP is structured as an [Open Knowledge Format (OKF)](https://cloud.google.com/blog/products/data-analytics/how-the-open-knowledge-format-can-improve-data-sharing/) bundle — a directory of markdown files with governed YAML frontmatter. See [`knowledge/index.md`](knowledge/index.md) for the bundle entry point.

This OKF layout is a recommended substrate, not a requirement: consistent with GWP governing collaboration behavior rather than workspace structure, each governance artifact remains a self-contained, drop-in markdown file, and teams can adopt GWP's principles without adopting this directory tree.

```text
knowledge/
├── index.md
├── governance/
│   ├── alignment.md          (was ALIGNMENT.md)
│   ├── review-standard.md    (was REVIEW_STANDARD.md)
│   ├── stewardship.md        (was SHARED_RESPONSIBILITY.md)
│   ├── authority-model.md    (was TRUSTED_SOURCES.md)
│   └── review-history/       (was REVIEW_HISTORY/)
└── concepts/
    └── shared-language.md    (was SHARED_LANGUAGE.md)

schemas/gwp-metadata-schema.yaml  — OKF base + GWP governance fields
tools/context-steward/            — planned tooling (Level 4)
```

These artifacts are intended to support:

* alignment,
* reasoning continuity,
* explainability,
* and collaborative stewardship.

## Design Goals

GWP is designed to be:

* lightweight,
* explainable,
* portable,
* filesystem-native,
* AI-aware,
* human-centered,
* and intentionally non-prescriptive.

The protocol should support:

* experimentation,
* interoperability,
* and collaborative evolution.

## Potential Use Cases

GWP is not limited to software engineering.

Potential applications may include:

* enterprise architecture,
* research collaboration,
* education,
* healthcare,
* legal review,
* nonprofit coordination,
* product development,
* policy workflows,
* and critical infrastructure environments.

Anywhere humans and AI collaborate through shared context, alignment becomes important.

## Current Status

GWP is an evolving open exploration of:

* collaborative AI workspace concepts,
* alignment-oriented workflows,
* explainable reasoning systems,
* and human/AI operational design.

The ideas here are intentionally lightweight and experimental.

Feedback, discussion, and collaborative exploration are welcome.

## Contributing

Contributions, critiques, and discussions are encouraged.

Especially from people exploring:

* ICM,
* MWP,
* context engineering,
* AI governance,
* collaborative reasoning systems,
* explainable workflows,
* or operational AI design.

## Linting

Markdown is linted with [markdownlint-cli2](https://github.com/DavidAnson/markdownlint-cli2) using the shared [`.markdownlint.jsonc`](.markdownlint.jsonc) config. The same pinned command runs in your editor (the markdownlint extension), in a local pre-commit hook, and in CI — so the three never disagree.

Run it manually:

```sh
npx markdownlint-cli2@0.22.1 "**/*.md" "#node_modules" "#video"
# add --fix to auto-correct most issues
```

Enable the pre-commit hook once per clone (hooks are version-controlled under `.githooks/`):

```sh
git config core.hooksPath .githooks
```

CI runs the identical command on every push and pull request via
[`.github/workflows/markdownlint.yml`](.github/workflows/markdownlint.yml).

## License

MIT License

## Disclaimer

This repository represents an open exploration of collaborative AI workspace concepts and does not represent the official views or positions of any employer or organization.
