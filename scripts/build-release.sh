#!/usr/bin/env bash
#
# build-release.sh — assemble the downloadable GWP bundles.
#
# Produces two zips under dist/, both built from the repo's single source of truth:
#
#   dist/gwp-<version>.zip           full bundle: starter/ + reference/ + guide
#   dist/gwp-<version>-starter.zip   starter skeleton only + lean guide
#
# The starter/ tree is GENERATED from the reference content by tokenizing the
# frontmatter (owner/steward/dates), so the two trees can never drift.
#
# Usage:
#   scripts/build-release.sh [version]
#
# If [version] is omitted it is derived from `git describe --tags` (leading "v"
# stripped). Falls back to 0.0.0-dev outside a tagged checkout.

set -euo pipefail

# --- locate repo root (this script lives in <root>/scripts) ------------------
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$ROOT"

# --- resolve version ---------------------------------------------------------
if [[ $# -ge 1 && -n "${1:-}" ]]; then
  VERSION="${1#v}"
elif VERSION="$(git describe --tags --always 2>/dev/null)"; then
  VERSION="${VERSION#v}"
else
  VERSION="0.0.0-dev"
fi

FULL_NAME="gwp-${VERSION}"
STARTER_NAME="gwp-${VERSION}-starter"
DIST="$ROOT/dist"
FULL_STAGE="$DIST/$FULL_NAME"
STARTER_STAGE="$DIST/$STARTER_NAME"

echo "==> Building GWP $VERSION"

# --- clean staging -----------------------------------------------------------
rm -rf "$FULL_STAGE" "$STARTER_STAGE" \
       "$DIST/$FULL_NAME.zip" "$DIST/$STARTER_NAME.zip"
mkdir -p "$FULL_STAGE" "$STARTER_STAGE"

# --- build the starter tree (tokenized copy of knowledge/ + schemas/) --------
build_starter_tree() {
  local dest="$1"
  mkdir -p "$dest"
  cp -R "$ROOT/knowledge" "$dest/knowledge"
  cp -R "$ROOT/schemas"   "$dest/schemas"
  cp "$ROOT/packaging/starter-README.md" "$dest/README.md"

  # Tokenize frontmatter values so adopters fill in their own. Applied to
  # markdown only; keyed on the frontmatter key at start of line (with indent).
  find "$dest" -name '*.md' -type f -print0 | xargs -0 perl -i -pe '
    s/^(\s*owner:\s*).+$/${1}<your-team-or-role>/;
    s/^(\s*team:\s*).+$/${1}<your-team-or-role>/;
    s/^(\s*timestamp:\s*).+$/${1}<yyyy-mm-dd>/;
    s/^(\s*last_reviewed:\s*).+$/${1}<yyyy-mm-dd>/;
  '
}

echo "==> Generating starter tree"
build_starter_tree "$FULL_STAGE/starter"
build_starter_tree "$STARTER_STAGE/starter"

# --- assemble full bundle ----------------------------------------------------
echo "==> Assembling full bundle"
mkdir -p "$FULL_STAGE/reference"
cp -R "$ROOT/knowledge" "$FULL_STAGE/reference/knowledge"
cp -R "$ROOT/schemas"   "$FULL_STAGE/reference/schemas"
cp -R "$ROOT/docs"      "$FULL_STAGE/reference/docs"
cp "$ROOT/packaging/GETTING-STARTED.md" "$FULL_STAGE/GETTING-STARTED.md"
cp "$ROOT/LICENSE" "$FULL_STAGE/LICENSE"
echo "$VERSION" > "$FULL_STAGE/VERSION"

# --- assemble starter-only bundle -------------------------------------------
echo "==> Assembling starter-only bundle"
cp "$ROOT/packaging/GETTING-STARTED-starter.md" "$STARTER_STAGE/GETTING-STARTED.md"
cp "$ROOT/LICENSE" "$STARTER_STAGE/LICENSE"
echo "$VERSION" > "$STARTER_STAGE/VERSION"

# --- self-check: no example owners may survive in any starter tree -----------
echo "==> Self-check"
if grep -R -q "GWP Contributors" "$FULL_STAGE/starter" "$STARTER_STAGE/starter"; then
  echo "ERROR: 'GWP Contributors' found in a starter tree — tokenization failed." >&2
  grep -R -n "GWP Contributors" "$FULL_STAGE/starter" "$STARTER_STAGE/starter" >&2 || true
  exit 1
fi
if ! grep -R -q "<your-team-or-role>" "$FULL_STAGE/starter"; then
  echo "ERROR: expected token '<your-team-or-role>' not found in starter — check paths." >&2
  exit 1
fi

# --- zip (top-level folder inside each archive) ------------------------------
echo "==> Zipping"
( cd "$DIST" && zip -rq "$FULL_NAME.zip"    "$FULL_NAME" )
( cd "$DIST" && zip -rq "$STARTER_NAME.zip" "$STARTER_NAME" )

echo
echo "Built:"
echo "  dist/$FULL_NAME.zip"
echo "  dist/$STARTER_NAME.zip"
