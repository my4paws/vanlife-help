#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────────────────────
# generate_manifest.sh
# Generates manifest.json for the Vanlife Assistant remote help update system.
#
# USAGE:
#   cd /path/to/your/help-content-repo
#   bash generate_manifest.sh [version] [help_folder]
#
# EXAMPLES:
#   bash generate_manifest.sh 1.0.2
#   bash generate_manifest.sh 1.0.2 Vanlife_Assistant_App_Help
#
# The script scans all .md files in the help folder, computes SHA-256 hashes,
# and writes manifest.json to the repo root.
# ─────────────────────────────────────────────────────────────────────────────

VERSION="${1:-1.0.0}"
HELP_DIR="${2:-Vanlife_Assistant_App_Help}"

if [ ! -d "$HELP_DIR" ]; then
  echo "❌ Directory '$HELP_DIR' not found."
  exit 1
fi

echo "🔍 Scanning $HELP_DIR for help files..."

FILES_JSON=""
FIRST=true
COUNT=0

# Scan both markdown files and image files
while IFS= read -r -d '' file; do
  # Skip .DS_Store and hidden files
  BASENAME=$(basename "$file")
  if [[ "$BASENAME" == .* ]]; then
    continue
  fi

  # Relative path from the help dir root
  REL_PATH="${file#$HELP_DIR/}"

  # SHA-256 (macOS shasum, Linux sha256sum)
  if command -v shasum &>/dev/null; then
    HASH=$(shasum -a 256 "$file" | awk '{print $1}')
  else
    HASH=$(sha256sum "$file" | awk '{print $1}')
  fi

  # Escape double quotes in path (shouldn't happen but be safe)
  ESCAPED_PATH="${REL_PATH//\"/\\\"}"

  if [ "$FIRST" = true ]; then
    FIRST=false
  else
    FILES_JSON+=","$'\n'
  fi

  FILES_JSON+="    {\"path\": \"$ESCAPED_PATH\", \"sha256\": \"$HASH\"}"
  COUNT=$((COUNT + 1))

done < <(find "$HELP_DIR" \
    \( -name "*.md" -o -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.heic" \) \
    -not -name ".DS_Store" \
    -not -name ".*" \
    -print0 | sort -z)

COUNT=$(echo "$FILES_JSON" | grep -c '"path"' || true)

cat > manifest.json << JSON
{
  "version": "$VERSION",
  "files": [
$FILES_JSON
  ]
}
JSON

echo "✅ manifest.json written — version $VERSION, $COUNT files."
