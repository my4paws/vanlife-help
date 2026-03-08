---
title: "The Spots Vault"
aliases:
  - "spots vault"
  - "spots browser"
  - "spots map"
  - "browse spots"
  - "spots map browser"
  - "park-up map"
  - "camping map"
  - "my places"
  - "save a spot"
  - "long press spot"
  - "spots filter"
  - "spot types"
  - "wild camp"
  - "free aire"
  - "paid aire"
  - "campsite"
  - "spots van size"
  - "lez zone spot"
  - "zoom in spots"
category: "Spots"
type: "Reference"
tags: [help, vanlife-assistant, spots, vault, browser, map, filter, reference]
last_updated: "2026-03-08"
---

# 🗺️ The Spots Vault

## Overview

The Spots Vault is a live, map-based browser for your entire location database. Open it from the **Spots tab**, and as you pan and zoom the map, locations are pulled from the on-device database and pinned on screen in real time. Each pin represents a park-up, campsite, service stop, or anywhere you've chosen to save.

Everything is stored locally in a high-performance SQLite database. No account, no internet, no subscription required to browse your own data.

---

## Opening the Vault

Tap the **Spots tab** in the app's main tab bar. The Vault opens full-screen over an edge-to-edge map. If you have imported datasets or saved any My Places spots, they will begin loading as soon as the map settles.

---

## How Spots Load

The Vault uses a **spatial query** — it only fetches spots visible in the current map viewport, not the entire database at once. This keeps performance fast even at dataset sizes of hundreds of thousands of locations.

A small status label appears near the top of the map:

- **"Long press map to save a spot"** — the map is showing all available spots in view (under ~150 results).
- **"Zoom in to see more spots"** — the viewport is too large and the result limit has been reached. Zoom in to see individual spots.

The query fires automatically 0.25 seconds after you stop panning, giving the map time to settle before fetching. While a sheet or the filter drawer is open, spatial queries are paused to avoid unnecessary database load.

---

## The FAB Toolbar

A column of four floating action buttons (FABs) sits on the right edge of the map:

### 📍 Location Button
Centres the map on your current GPS location. Useful for quickly finding what's available near you right now.

### 🌐 / 🗺️ Map Type Toggle
Switches between **Standard** (road map) and **Hybrid** (satellite with road labels) map styles. Hybrid is useful when you want to see the terrain around a potential spot — tree cover, water features, and road access are all more readable in satellite view.

### 🗂 Dataset Manager
Opens the [[Spot_Packs_and_Datasets|Dataset Manager]] — a sheet for managing your imported spot collections. See which packs you have, toggle their visibility on and off, import new ones, or delete old ones.

### ≡ Filters
Opens the **Filters drawer** from the right edge of the screen. The filter icon turns orange and fills when any filter is active, so you can see at a glance whether your current view is filtered. See *Filtering* below.

---

## Spot Types and Colours

Every spot on the map has a colour-coded pin that reflects its type:

| Colour | Type | Description |
|--------|------|-------------|
| 🟢 Green | Wild camp | Free, off-grid overnight stop |
| 🩵 Teal | Free aire | Designated free motorhome parking |
| 🔴 Red | Paid aire | Motorhome service areas with a nightly fee |
| 🟣 Indigo | Campsite | Official campsite with pitches |
| 🟣 Purple | Accommodation | B&B, hotel, hostel, or similar |
| ⚫ Grey | Services only | Water, waste, or service dump with no overnight stay |

Spots without a type assigned show as a default mappin icon.

---

## Tapping a Spot

Tap any pin on the map to open the **Reconnaissance sheet** — a detailed half-sheet showing the spot's name, type, amenities, ratings, notes, and a Look Around or satellite preview of the location.

From the Reconnaissance sheet you can edit, delete, or navigate to the spot. See [[Spot_Detail_Reconnaissance|Spot Detail & Reconnaissance]] for the full guide.

---

## Saving a New Spot (Long Press)

Long-press anywhere on the map to pin a custom location. A small confirmation dialog appears at the press point with two options:

- **Save to My Places** — opens the Spot Editor sheet so you can give the location a name, type, amenities, and notes before saving. The new spot is stored in your protected **My Places** pack and immediately appears on the map.
- **Cancel** — dismisses without saving.

When the Spot Editor opens, the app attempts to auto-fill a name using reverse geocoding from the coordinates (e.g. "Bois de Boulogne" or "Aire de la Côte d'Azur"). You can edit or replace this name before saving.

> **Tip:** Long-press is the fastest way to bookmark a spot you discover while browsing — you don't need to import a CSV to build up your My Places collection.

---

## Filtering

Tap the Filters FAB to slide in the filter drawer from the right. Filters let you show only the spots that meet your van's specific needs. All filters stack — you can combine them freely.

### Location Type
Select one or more spot types (Wild camp, Free aire, Paid aire, Campsite, Accommodation, Services only). If nothing is selected, all types are shown. Selecting specific types narrows the map to only those categories.

### Quality & Rating
Use the stepper to set a minimum star rating. Only spots that have been rated at or above your minimum will be shown. Set to "Any Rating" (0) to include all spots regardless of rating.

### Restrictions & Safety

| Filter | Effect |
|--------|--------|
| **Avoid Heavy Shade** | Hides spots flagged as heavily tree-shaded (relevant if you rely on solar) |
| **Avoid Low Emission Zones (LEZ)** | Hides spots inside an LEZ boundary |
| **Enforce My Van Size Limits** | Hides spots whose maximum vehicle length or height is smaller than your van's dimensions (pulled from your Van profile) |

### Essential Services
Toggle on any services you require: Water, Electricity, Showers, Toilets, Laundry.

### Waste & Disposal
Toggle on: Grey Waste, Black Waste, Trash / Bins.

### Amenities
Toggle on: WiFi, Pet Friendly, Shops Nearby.

Tap **Apply Filters** to close the drawer and refresh the map. Tap **Clear All** to reset every filter at once. The filter icon on the FAB turns orange whenever any filter is active.

---

## Common Questions

**Why aren't my imported spots showing up?**
Check the Dataset Manager (the 🗂 FAB) and confirm the pack's visibility toggle is switched on. If a pack is toggled off, its spots are excluded from the spatial query entirely.

**The map shows "Zoom in to see more spots" — why?**
The Vault applies a dynamic display limit (up to ~500 spots at close zoom, fewer at wider zooms) to keep the map readable. Zoom in to the area you're interested in and the nearest spots will load.

**I saved a spot but it disappeared.**
If you just saved it and the map hasn't refreshed yet, pan slightly or wait — the Vault listens for a `spotSaved` notification and re-queries immediately after a save. If it still isn't appearing, check that the My Places pack is visible in the Dataset Manager.

**Can I import someone else's list of spots?**
Yes. Export any spreadsheet of locations as a CSV with at least latitude and longitude columns, then use the Dataset Manager → Import to bring it in. See [[Importing_a_CSV_Dataset|Tutorial: Importing a CSV Dataset]].

---

## Related Articles
- [[Spot_Detail_Reconnaissance|Spot Detail & Reconnaissance]]
- [[Trip_Planner_and_Route_Builder|The Trip Planner & Route Builder]]
- [[Spot_Packs_and_Datasets|Spot Packs & the Dataset Manager]]
- [[Van_Profile_and_Setup|Setting Up Your Van Profile]] *(Sets the dimensions used by the van size filter)*
