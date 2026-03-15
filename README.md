---
sidebar:
  hidden: true
---

# Vanlife Assistant — Help Content Updates

This folder is the publishing hub for all in-app help content.
Changes pushed here go live to users **without an App Store update**.

---

## How to update help content

### Step 1 — Edit in Obsidian
Make your changes to the help articles in Obsidian as normal.
Images go in the `Assets` folder inside your Obsidian vault.

### Step 2 — Copy into Xcode
Copy the updated files into the Xcode project at:
```
Vanlife Assistant/Features/HelpSystem/Vanlife_Assistant_App_Help/
```
Images go in:
```
Vanlife Assistant/Features/HelpSystem/Vanlife_Assistant_App_Help/Assets/
```

### Step 3 — Publish
Double-click **`publish-help.sh`** in this folder.

That's it. The script will:
- Sync files from Xcode into this folder
- Auto-increment the version number
- Regenerate the manifest
- Push everything to GitHub

Users get the update the next time they open the Help Desk (within 24 hours).

---

## Important notes

- **Don't edit files directly in this folder.** Always edit in Obsidian first,
  then copy to Xcode, then run the script. This folder is just a publishing mirror.

- **Images** must be `.png`, `.jpg`, `.jpeg`, or `.heic`.
  In Obsidian, embed them like this: `![[imageName.heic|200]]`
  The number is the display width in points.

- **The version number** is bumped automatically each time you run the script
  (1.0.0 → 1.0.1 → 1.0.2 etc). You never need to touch it manually.

- **jsDelivr CDN** (which serves the files to the app) can take up to 5 minutes
  to reflect a new push. If you're testing, wait a few minutes before checking.

---

## If something goes wrong

If the script fails with a git error, open Terminal and run:
```bash
cd ~/Desktop/vanlife-help
git status
```
This will tell you what's wrong. Most likely fix:
```bash
git pull
```
Then run `publish-help.sh` again.

---

## Folder structure

```
vanlife-help/
  manifest.json                        ← auto-generated, don't edit
  publish-help.sh                      ← double-click to publish
  generate_manifest.sh                 ← called by publish-help.sh
  README.md                            ← this file
  Vanlife_Assistant_App_Help/
    Assets/                            ← images go here
    Getting_Started/
    Money/
    Trips/
    Van/
    Voice Assistant/
    Whiteboard/
    Settings/
    Spots/
    Advanced/
```

---

## Where the content lives

| Location | Purpose |
|---|---|
| Obsidian vault | Where you write and edit |
| Xcode project `Features/HelpSystem/` | Bundled with the app (offline fallback) |
| This folder `~/Desktop/vanlife-help/` | Publishing mirror — pushed to GitHub |
| GitHub `my4paws/vanlife-help` | The source the app downloads from |
| jsDelivr CDN | Serves files to users' devices |
