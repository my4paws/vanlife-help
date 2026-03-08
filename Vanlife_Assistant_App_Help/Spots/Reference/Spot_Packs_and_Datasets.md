---
title: "Spot Packs & the Dataset Manager"
aliases:
  - "spot packs"
  - "dataset manager"
  - "import spots"
  - "spot datasets"
  - "my places"
  - "delete spot pack"
  - "hide spot pack"
  - "toggle spots"
  - "spots csv import"
  - "manage datasets"
  - "spots database"
  - "spots vault size"
category: "Spots"
type: "Reference"
tags: [help, vanlife-assistant, spots, packs, datasets, import, manager, reference]
last_updated: "2026-03-08"
---

# 📦 Spot Packs & the Dataset Manager

## Overview

Every spot in the Spots Vault belongs to a **Spot Pack** — a named collection that acts like a folder. The Dataset Manager is where you view, import, toggle, and delete these packs. You can have as many packs as your device storage allows.

Open the Dataset Manager by tapping the **🗂 layers FAB** in the Spots Vault or Trip Planner maps, or from the import button within the Trip Planner.

---

## My Places

**My Places** is the built-in, protected pack that cannot be deleted. All spots you save manually — by long-pressing the map and choosing "Save to My Places" — are stored here.

My Places is marked with a 🔒 lock icon in the manager to distinguish it from imported datasets. It syncs via iCloud alongside the rest of your app data, so your personal collection survives device upgrades and restores.

---

## Imported Datasets

Any CSV file you import creates a new Spot Pack with the file's name as its default title. Large datasets (tens of thousands of spots) load quickly because the Vault uses a spatial R*Tree index — location queries run in microseconds regardless of pack size.

Each pack row in the manager shows:
- **Pack name**
- **Spot count** — how many locations are in the pack
- **File size** — on-disk storage used
- **Date added**
- **Visibility toggle** — blue for imported packs, orange for My Places

---

## Toggling Pack Visibility

The toggle on the right of each pack row controls whether that pack's spots appear on the map and in the routing engine.

- **Toggle ON** — spots are included in all spatial queries (the map, Scout, and filter searches)
- **Toggle OFF** — spots are hidden but not deleted. The data is preserved and the toggle can be switched back on at any time.

Use this to declutter the map when you have multiple datasets loaded and only want to see spots relevant to your current region or trip type.

> **Note:** The My Places pack cannot be hidden via the toggle — your personally saved locations are always shown.

---

## Deleting a Pack

Swipe left on any imported pack row to reveal the **Delete** option. You'll be asked to confirm with the pack name and its spot count before deletion proceeds.

**Deleting a pack permanently removes all its spots from your device.** There is no undo. If you might want the data again later, keep the source CSV file so you can re-import it.

My Places cannot be swiped to delete. If you want to clear individual spots from My Places, do so from the [[Spot_Detail_Reconnaissance|Spot Reconnaissance sheet]] (⋯ → Delete Spot) or by editing in the Spot Editor.

---

## Importing a New Dataset

Tap the **download icon** (↓) in the Dataset Manager toolbar to launch the **Import Wizard**. See [[Spots/Reference/Importing_a_CSV_Dataset|Tutorial: Importing a CSV Dataset]] for a full step-by-step walkthrough.

In brief:
1. Select a CSV file from Files
2. Give the pack a name
3. Map your CSV columns to the required spot fields (latitude, longitude, and optionally name)
4. Tap Start Import and monitor progress

The wizard auto-detects common column names (any column containing "lat", "lon", "lng", or "name") and pre-maps them for you.

---

## Common Questions

**How large a CSV can I import?**
The Vault has been tested with datasets of over 300,000 rows. Import speed depends on your device, but typical datasets of 10,000–50,000 spots import in a few seconds. Very large imports (100k+) may take a minute or two.

**I imported a dataset but my spots still aren't showing on the map.**
First check that the pack's visibility is toggled on. Then pan and zoom the map towards the region where your spots should be — the Vault only loads spots visible in the current viewport, so you need to be looking at the right area.

**Can I edit spots from an imported pack?**
Yes. Any spot can be edited via the Reconnaissance sheet, regardless of which pack it belongs to. A warning is shown in the editor reminding you that re-importing the same CSV will overwrite your edits to that pack's spots. If you want permanent custom edits, consider promoting the spot to My Places by saving a copy there.

**My pack shows 0 spots after import.**
This usually means the latitude and longitude columns weren't mapped correctly, or they contained text values the importer couldn't parse. Revisit the Import Wizard and check which columns are mapped to Latitude and Longitude — they must contain decimal degree values (e.g. 48.85341 and 2.34880, not DMS format like 48°51'12"N).

---

## Related Articles
- [[The_Spots_Vault|The Spots Vault]]
- [[Spots/Reference/Importing_a_CSV_Dataset|Tutorial: Importing a CSV Dataset]]
- [[Spot_Detail_Reconnaissance|Spot Detail & Reconnaissance]]
