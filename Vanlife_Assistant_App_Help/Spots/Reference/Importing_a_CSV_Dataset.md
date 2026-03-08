---
title: "Tutorial: Importing a CSV Dataset"
aliases:
  - "import csv spots"
  - "import spots tutorial"
  - "csv import tutorial"
  - "import dataset spots"
  - "spots csv"
  - "import park-ups"
  - "import camping spots"
  - "spots file import"
category: "Spots"
type: "Tutorial"
tags: [help, vanlife-assistant, spots, tutorial, csv, import, dataset]
last_updated: "2026-03-08"
---

# 📥 Tutorial: Importing a CSV Dataset

This tutorial walks you through importing a CSV file of locations into your Spots Vault. By the end, your imported spots will appear on the map as a searchable, filterable dataset.

**Time required:** 2–5 minutes  
**What you'll need:** A CSV file with at least latitude and longitude columns

---

## Step 1: Prepare Your CSV

Your CSV must contain at minimum a **latitude column** and a **longitude column**. Coordinates must be in **decimal degrees** (e.g. `48.85341`, `2.34880`) — DMS format (48°51'12"N) is not supported.

Useful optional columns the importer can map:
- **Name / Title** — the spot name shown on the map and in the Reconnaissance sheet
- **Notes** — freeform description

The column header names don't need to match exactly — the importer scans for common variants (`lat`, `latitude`, `lon`, `longitude`, `lng`, `name`, `title`) and pre-maps them automatically.

**Example CSV structure:**

```
name,latitude,longitude,notes
Forêt de Fontainebleau,48.4085,2.7028,Quiet forest aire
Plage de Pampelonne,43.2295,6.6547,Beach parking May-Sep only
```

---

## Step 2: Open the Dataset Manager

1. Open the **Spots tab**
2. Tap the **🗂 layers FAB** on the right side of the map

The **Dataset Manager** sheet opens, showing your existing packs (or an empty state if you have none yet).

---

## Step 3: Launch the Import Wizard

Tap the **↓ download icon** in the top-right of the Dataset Manager toolbar.

The Import Wizard opens with three steps: select a file, name the pack, and map the columns.

---

## Step 4: Select Your CSV File

Tap **Select CSV File** to open the system Files picker. Navigate to your CSV file — it can be in iCloud Drive, On My iPhone, a third-party cloud service, or a shared link you've downloaded.

Tap your file to select it. The wizard reads the first row of the file as column headers and advances to the next step automatically.

> **Supported formats:** `.csv` and `.txt` files with comma-separated values. If your file uses a different delimiter (semicolons, tabs), you may need to convert it first using a spreadsheet app like Numbers or Excel.

---

## Step 5: Name Your Pack

The wizard pre-fills the **Pack Name** field with the filename (minus the extension). Edit this to something descriptive — for example "France Wild Camps 2025" or "Spanish Motorhome Aires". This name appears in the Dataset Manager and map overlays.

---

## Step 6: Map Your Columns

The wizard shows a list of **Spot Fields** — the pieces of information it can store for each location. For each field, a dropdown lets you select which column from your CSV provides that data.

**Required mappings (import won't start without these):**
- **Latitude** → your latitude column
- **Longitude** → your longitude column

**Optional mappings:**
- **Name** → your name/title column
- Other fields (notes, type, etc.) if your CSV contains them

The wizard automatically maps columns whose headers contain common keywords. Review the auto-mappings and adjust any that look wrong before proceeding.

> **Tip:** If your CSV doesn't have a name column, spots will be imported without names and will appear as their coordinates. You can name individual spots later from the Reconnaissance sheet.

---

## Step 7: Start the Import

Tap **Start Import** in the top-right toolbar. The wizard switches to a progress view showing:

- A progress bar filling as rows are processed
- **X Saved** — running count of successfully imported spots (green)
- **X Failed** — rows that couldn't be parsed, typically due to missing or invalid coordinates (red)

Large files may take a few seconds to several minutes depending on row count and device performance.

---

## Step 8: Review and Finish

When the progress bar completes and a **Done** button appears, your import is finished. The summary shows the final count of saved and failed rows.

Tap **Done** to close the wizard. The Dataset Manager refreshes automatically and your new pack appears in the list with its spot count and file size.

Close the Dataset Manager and pan your map to the region where your spots should be — they'll load onto the map within a moment.

---

## Troubleshooting

**The file picker isn't showing my CSV.**
Make sure the file has a `.csv` or `.txt` extension. Files stored in a third-party app that uses its own file system (not the standard iOS Files interface) may not appear. Try saving the file to iCloud Drive first.

**All my spots show as "Failed".**
This usually means the latitude and longitude columns weren't mapped to columns containing valid decimal coordinates. Return to the Import Wizard and double-check the column mappings. Also check that your CSV doesn't use a header row of all text with no data rows, or that the file isn't empty.

**The pack imported successfully but nothing shows on the map.**
Check that the pack's **visibility toggle is ON** in the Dataset Manager. Then pan the map to the region where your spots are located — the Vault only loads spots visible in the current viewport.

**I imported the wrong file and want to start over.**
Open the Dataset Manager, swipe left on the pack, and tap Delete. This permanently removes the pack and all its spots. Then re-run the import with the correct file.

---

## Related Articles
- [[Spot_Packs_and_Datasets|Spot Packs & the Dataset Manager]]
- [[The_Spots_Vault|The Spots Vault]]
- [[Planning_Your_First_Route|Tutorial: Planning Your First Route]]
