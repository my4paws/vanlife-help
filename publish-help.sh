#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────────────────────
#  publish-help.sh
#  Vanlife Assistant — Help Content Publisher
#
#  WHAT THIS DOES:
#  1. Copies your latest help files from the Xcode project to the git repo
#  2. Bumps the version number automatically
#  3. Regenerates manifest.json with correct SHA-256 hashes
#  4. Commits and pushes to GitHub
#  5. Purges the jsDelivr CDN cache so users get the new files immediately
#
#  HOW TO USE:
#  Just double-click this file on your Desktop (or drag it to Terminal and press Enter)
# ─────────────────────────────────────────────────────────────────────────────

# --- PATHS (edit these if you ever move things) ---
XCODE_HELP="/Users/vikkisibbick/Desktop/Apps/Vanlife Assistant/Features/HelpSystem/Vanlife_Assistant_App_Help"
REPO_DIR="$HOME/Desktop/vanlife-help"
HELP_DIR="$REPO_DIR/Vanlife_Assistant_App_Help"
MANIFEST_SCRIPT="$REPO_DIR/generate_manifest.sh"
MANIFEST_FILE="$REPO_DIR/manifest.json"
GITHUB_USER="my4paws"
GITHUB_REPO="vanlife-help"
GITHUB_BRANCH="main"

# ─────────────────────────────────────────────────────────────────────────────

echo ""
echo "🚐  Vanlife Assistant — Help Publisher"
echo "────────────────────────────────────────"

# Step 1: Sync files from Xcode project to repo
echo ""
echo "📂  Syncing help files from Xcode project..."
cp -r "$XCODE_HELP/" "$HELP_DIR/"
echo "    ✅ Done."

# Step 2: Read current version and bump the patch number
#         e.g. 1.0.4 → 1.0.5
CURRENT_VERSION="1.0.0"
if [ -f "$MANIFEST_FILE" ]; then
    CURRENT_VERSION=$(grep '"version"' "$MANIFEST_FILE" | head -1 | sed 's/.*"version": *"\([^"]*\)".*/\1/')
fi

IFS='.' read -r MAJOR MINOR PATCH <<< "$CURRENT_VERSION"
PATCH=$((PATCH + 1))
NEW_VERSION="$MAJOR.$MINOR.$PATCH"

echo ""
echo "🔢  Version: $CURRENT_VERSION → $NEW_VERSION"

# Step 3: Regenerate manifest.json
echo ""
echo "📋  Generating manifest.json..."
cd "$REPO_DIR"
bash "$MANIFEST_SCRIPT" "$NEW_VERSION" Vanlife_Assistant_App_Help
echo "    ✅ Done."

# Step 4: Commit and push
echo ""
echo "🚀  Pushing to GitHub..."
git add .
git commit -m "Help content update v$NEW_VERSION"
git push

echo ""
echo "    ✅ GitHub updated."

# Step 5: Purge jsDelivr CDN cache for every file in the manifest
#         Without this step, the CDN can serve stale files for hours even
#         after GitHub has the new content — causing hash mismatch errors.
echo ""
echo "🧹  Purging CDN cache..."

BASE_PURGE_URL="https://purge.jsdelivr.net/gh/$GITHUB_USER/$GITHUB_REPO@$GITHUB_BRANCH"

# Always purge the manifest itself first
curl -s "$BASE_PURGE_URL/manifest.json" > /dev/null
echo "    • manifest.json"

# Parse the manifest and purge every file listed in it
python3 - "$MANIFEST_FILE" "$BASE_PURGE_URL" << 'PYEOF'
import sys, json, urllib.request, urllib.parse

manifest_path = sys.argv[1]
base_url      = sys.argv[2]

with open(manifest_path) as f:
    manifest = json.load(f)

total  = len(manifest["files"])
purged = 0

for entry in manifest["files"]:
    path = entry["path"]
    # Encode each path segment so spaces and special chars are safe
    encoded = "/".join(
        urllib.parse.quote(seg, safe="") for seg in path.split("/")
    )
    url = f"{base_url}/{encoded}"
    try:
        urllib.request.urlopen(url, timeout=10)
        purged += 1
    except Exception:
        print(f"    ⚠️  Could not purge: {path}")

print(f"    ✅ Purged {purged}/{total} files from CDN cache.")
PYEOF

echo ""
echo "────────────────────────────────────────"
echo "✅  All done! Help content v$NEW_VERSION is live."
echo "    The app will pick up the changes on its next 24-hour check."
echo "    On the simulator you can delete and re-run immediately."
echo ""

read -p "Press Enter to close..."
