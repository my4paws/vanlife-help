#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────────────────────
#  publish-help.sh
#  Vanlife Assistant — Help Content Publisher
#
#  WHAT THIS DOES:
#  1. Copies your latest help files from the Xcode project to the git repo
#  2. Bumps the version number automatically
#  3. Regenerates manifest.json
#  4. Commits and pushes to GitHub
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

# Split into major.minor.patch and increment patch
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
echo "────────────────────────────────────────"
echo "✅  All done! Help content v$NEW_VERSION is live."
echo "    Users will get the update within 24 hours."
echo ""

# Keep the Terminal window open so you can see the result
read -p "Press Enter to close..."
