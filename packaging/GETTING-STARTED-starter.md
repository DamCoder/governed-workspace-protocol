# GWP Starter

A fresh, drop-in skeleton of the **Governed Workspace Protocol (GWP)** for standing up
a new governed workspace. This bundle is the starter *only* — for the full worked
example and background, see the repo or download the complete bundle.

Project home: <https://github.com/DamCoder/governed-workspace-protocol>

## Contents

```text
.
├── GETTING-STARTED.md   ← you are here
├── LICENSE              MIT (covers the protocol scaffolding)
├── VERSION              the GWP release you downloaded
└── starter/
    ├── README.md
    ├── knowledge/       governance artifacts + concepts, with fill-in tokens
    └── schemas/         the GWP/OKF frontmatter schema
```

## Drop it in

```sh
cp -R starter/knowledge  /path/to/your-workspace/knowledge
cp -R starter/schemas    /path/to/your-workspace/schemas
```

No runtime, SDK, or build step — GWP is just governed markdown.

## Then customize the frontmatter tokens

Every asset carries YAML frontmatter with placeholder tokens where you make a decision:

1. **Ownership / stewardship** — replace `<your-team-or-role>` in `authority.owner`
   and `steward.team`.
2. **Dates** — replace `<yyyy-mm-dd>` in `timestamp` and `review.last_reviewed`; set
   `review.cadence` (`annual`, `quarterly`, `as-needed`, …).
3. **Trust / alignment** — set `confidence`
   (`authoritative | reviewed | working | experimental | deprecated`) and
   `alignment.status` (`aligned | partial | under_review | conflicting`).

Field definitions: `starter/schemas/gwp-metadata-schema.yaml`. Authoring guidance and
a full example live in the repo at `knowledge/standards/knowledge-asset-authoring.md`.

## Updates

New releases: <https://github.com/DamCoder/governed-workspace-protocol/releases>
