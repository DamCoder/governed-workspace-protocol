# Getting Started with the Governed Workspace Protocol (GWP)

The **Governed Workspace Protocol (GWP)** is a lightweight, filesystem-native
protocol for keeping human + AI collaboration aligned, explainable, and reviewable
over time. It layers governance metadata (authority, stewardship, review, confidence,
alignment) on top of [Google's Open Knowledge Format
(OKF)](https://cloud.google.com/blog/products/data-analytics/how-the-open-knowledge-format-can-improve-data-sharing/).

Project home: <https://github.com/DamCoder/governed-workspace-protocol>

## What's in this download

```text
.
├── GETTING-STARTED.md   ← you are here
├── LICENSE              MIT (covers the protocol scaffolding)
├── VERSION              the GWP release you downloaded
├── starter/             a drop-in skeleton to copy into your workspace
│   ├── README.md
│   ├── knowledge/       governance artifacts + concepts, with fill-in tokens
│   └── schemas/         the GWP/OKF frontmatter schema
└── reference/           the full GWP worked example, exactly as authored
    ├── knowledge/
    ├── schemas/
    └── docs/
```

- Use **`starter/`** as the thing you actually copy into your own workspace. Its
  frontmatter uses placeholder tokens instead of real owners and dates, so it's meant
  to be customized.
- Use **`reference/`** as the answer key. It's the complete, filled-in GWP bundle —
  read it to see what "good" looks like when you're deciding how to fill in the
  starter.

## Quick start

1. Copy the starter into your workspace (a git repo, shared folder, docs system —
   anywhere):

   ```sh
   cp -R starter/knowledge  /path/to/your-workspace/knowledge
   cp -R starter/schemas    /path/to/your-workspace/schemas
   ```

2. Replace the placeholder tokens (see the next section).
3. Commit it alongside your work. That's it — GWP is just governed markdown; there is
   no runtime, SDK, or build step to install.

## Customize these three things

Every asset carries YAML frontmatter. The starter leaves placeholder tokens where you
need to make a decision:

1. **Ownership and stewardship** — replace `<your-team-or-role>`:

   ```yaml
   authority:
     owner: <your-team-or-role>     # who is accountable for this asset's content
   steward:
     team: <your-team-or-role>      # who maintains it over time (may differ from owner)
   ```

2. **Dates** — replace `<yyyy-mm-dd>` in `timestamp` and `review.last_reviewed` with
   real ISO-8601 dates, and set `review.cadence` (e.g. `annual`, `quarterly`,
   `as-needed`) to whatever fits your team.

3. **Trust and alignment** — set `confidence`
   (`authoritative | reviewed | working | experimental | deprecated`) and
   `alignment.status` (`aligned | partial | under_review | conflicting`) to reflect
   the real maturity of each asset. New content usually starts at `working` /
   `under_review`.

The full field definitions live in `starter/schemas/gwp-metadata-schema.yaml`.

## Adding your own assets

Each file is one knowledge asset with a `type`
(`index | governance | concept | standard | system | process`). To author new ones,
follow the authoring standard — it's included at
`reference/knowledge/standards/knowledge-asset-authoring.md` (kebab-case filenames, one
concept per file, relative markdown links in `related:`).

## You don't have to adopt the whole tree

GWP governs collaboration *behavior*, not workspace *structure*. Each governance
artifact is a self-contained, drop-in markdown file. If the full directory layout is
more than you need, take just the pieces that help — e.g. drop
`governance/alignment.md` and `governance/authority-model.md` into an existing `docs/`
folder. The OKF layout is a recommended substrate, not a requirement.

## Compliance levels

GWP describes five adoption levels (defined in the schema):

| Level | Meaning |
| --- | --- |
| 0 | Standard markdown repository |
| 1 | OKF-compliant repository |
| 2 | OKF repository with GWP metadata |
| 3 | Governed workspace (authority, steward, review, governance docs present) |
| 4 | Governed workspace with active stewardship tooling |

Copying this starter and filling in the governance artifacts puts you at **Level 3**.
Level 4 (tooling) is future work.

## Staying up to date

New releases are published at
<https://github.com/DamCoder/governed-workspace-protocol/releases>. Because your
customized copy is just markdown in your own workspace, upgrading is a matter of
diffing a newer `reference/` against your files and pulling in what's changed.
