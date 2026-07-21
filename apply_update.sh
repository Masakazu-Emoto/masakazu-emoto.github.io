#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET="${1:-.}"

mkdir -p \
  "$TARGET/_data" \
  "$TARGET/_pages" \
  "$TARGET/_includes" \
  "$TARGET/_publications" \
  "$TARGET/_teaching" \
  "$TARGET/_sass/theme" \
  "$TARGET/assets/css"

cp "$SCRIPT_DIR/_config.yml" "$TARGET/_config.yml"
cp "$SCRIPT_DIR/_data/navigation.yml" "$TARGET/_data/navigation.yml"
cp "$SCRIPT_DIR/_includes/research-single.html" "$TARGET/_includes/research-single.html"
cp "$SCRIPT_DIR/_pages/about.md" "$TARGET/_pages/about.md"
rm -f "$TARGET/_pages/research.md"
cp "$SCRIPT_DIR/_pages/research.html" "$TARGET/_pages/research.html"
cp "$SCRIPT_DIR/_pages/publications.html" "$TARGET/_pages/publications.html"
cp "$SCRIPT_DIR/_pages/teaching.html" "$TARGET/_pages/teaching.html"
cp "$SCRIPT_DIR/_pages/cv.md" "$TARGET/_pages/cv.md"

while IFS= read -r sample; do
  [ -z "$sample" ] || rm -f "$TARGET/$sample"
done < "$SCRIPT_DIR/DELETE_THESE_SAMPLE_FILES.txt"

cp "$SCRIPT_DIR/_publications/"*.md "$TARGET/_publications/"
cp "$SCRIPT_DIR/_teaching/"*.md "$TARGET/_teaching/"
cp "$SCRIPT_DIR/_sass/theme/_emoto_light.scss" "$TARGET/_sass/theme/_emoto_light.scss"
cp "$SCRIPT_DIR/_sass/theme/_emoto_dark.scss" "$TARGET/_sass/theme/_emoto_dark.scss"
cp "$SCRIPT_DIR/assets/css/main.scss" "$TARGET/assets/css/main.scss"

# Remove obsolete custom colour variants from earlier drafts.
rm -f \
  "$TARGET/_sass/theme/_navy_light.scss" \
  "$TARGET/_sass/theme/_navy_dark.scss" \
  "$TARGET/_sass/theme/_black_light.scss" \
  "$TARGET/_sass/theme/_black_dark.scss" \
  "$TARGET/_sass/theme/_brabham_light.scss" \
  "$TARGET/_sass/theme/_brabham_dark.scss"

echo "Academic Pages content and Black Primary / Deep Blue theme applied to $TARGET"
