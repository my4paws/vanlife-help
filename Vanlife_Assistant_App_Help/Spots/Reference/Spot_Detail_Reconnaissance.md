---
title: "Spot Detail & Reconnaissance"
aliases:
  - "spot detail"
  - "reconnaissance"
  - "spot info"
  - "spot sheet"
  - "spot amenities"
  - "spot ratings"
  - "look around spot"
  - "satellite spot"
  - "navigate to spot"
  - "edit spot"
  - "delete spot"
  - "spot lez"
  - "spot vehicle size"
  - "add to route spot"
category: "Spots"
type: "Reference"
tags: [help, vanlife-assistant, spots, detail, reconnaissance, navigate, amenities, ratings, reference]
last_updated: "2026-03-08"
---

# 🔍 Spot Detail & Reconnaissance

## Overview

Tapping any spot pin on the Spots Vault map opens the **Reconnaissance sheet** — a detailed view of everything known about that location. The word "Reconnaissance" is intentional: this is your chance to gather intel before committing to a stop.

The sheet slides up as a half-sheet, and can be expanded to full-screen by dragging the handle upwards.

---

## The Hero Section

The top portion of the sheet is a full-width, interactive **visual preview** of the location. The app tries to load an **Apple Look Around** scene (Apple's street-level imagery) for the coordinates first.

- **Look Around available** — you see a live, interactive ground-level preview. You can look around by swiping in any direction, just as in Apple Maps.
- **Look Around unavailable** — the app falls back to a **satellite map view** centred on the spot's exact coordinates, with a typed marker showing the spot name and type.

### Switching Views
When a Look Around scene is available, a toggle button appears in the top-right corner of the hero section:

- **Globe icon** — switch to satellite view
- **Binoculars icon** — switch back to Look Around

This lets you quickly flip between ground-level context and a bird's-eye view of the surrounding area.

---

## Location Info

Below the hero section:

- **Spot name** in bold
- **Type badge** — coloured and iconised, e.g. 🟢 Wild camp, 🔴 Paid aire
- **Coordinates** — latitude and longitude to five decimal places, useful for navigating with a standalone GPS device

---

## Ratings

If the spot has been rated (either from your own check-ins or from an imported dataset that includes ratings), a horizontal scroll of rating pills appears:

| Pill | What it measures |
|------|-----------------|
| **Overall** ⭐ | General stay quality (1–5) |
| **Beauty** 📷 | Scenery and natural attractiveness |
| **Privacy** 👁 | How overlooked or secluded the spot feels |
| **Access** 🛣️ | Road quality and ease of arrival |

---

## Notes

If the spot has notes attached, they appear as a freeform text block. Notes can be added or edited in the Spot Editor (see *Editing a Spot* below).

---

## Amenities & Rules

The bottom of the sheet shows an icon grid of every badge applicable to this spot. Badges fall into three groups:

### Core Identity
The spot type (Wild camp, Campsite, etc.) always appears as the first badge, matching the map pin colour.

### Restrictions (shown in alert colours)
| Badge | Meaning |
|-------|---------|
| ⚠️ **LEZ Zone** (red) | This location is inside a Low Emission Zone |
| ↔ **Max Xm** (purple) | Maximum vehicle length limit set for this spot |
| ↕ **Max Xm** (purple) | Maximum vehicle height limit set for this spot |
| 🍃 **Heavy Shade** (green) | Significantly shaded — limited solar generation |

### Services Present
A badge appears for each service that is flagged as available:

Water · Electricity (Free or Paid) · Showers · Toilets · Laundry · Grey Waste · Black Waste · Trash · Wi-Fi · Pet Friendly · Shops Nearby

Only services that are present are shown — absent services produce no badge.

---

## Editing a Spot

Tap the **⋯ menu** in the top-right toolbar to access:

- **Edit Spot** — opens the Spot Editor sheet (see below)
- **Delete Spot** — permanently removes the spot from your database after a confirmation prompt

### The Spot Editor
The editor opens as a sheet and lets you change:

- **Name** — freeform text
- **Notes** — freeform multi-line notes
- **Type** — tap a type tile to select: Wild camp, Free aire, Paid aire, Campsite, Accommodation, Services only
- **Services & Amenities** — toggles for all 11 service flags (water, electricity, showers, toilets, laundry, grey waste, black waste, trash, wi-fi, pet friendly, shops nearby)

> **Note on imported spots:** If the spot belongs to an imported dataset (not My Places), a warning appears in the editor reminding you that if you delete and re-import the same dataset later, your custom edits will be overwritten. Spots in My Places are always protected.

Tap **Save** to confirm. Changes reflect immediately on the map and in the Vault.

---

## Navigating to a Spot

### From the Spots Vault (Browse Mode)
When you open a spot from the Spots Vault browser (not from the Trip Planner), a **Navigate** button appears pinned to the bottom of the sheet.

Tapping Navigate launches your default navigation app immediately. Long-press or tap the caret on the button to choose a different app for this journey:

- **Apple Maps** (default)
- **Google Maps**
- **Waze**
- **CityMapper**

The last app you explicitly chose is remembered as your default for future taps.

### From the Trip Planner (Routing Mode)
When you open a spot from the Trip Planner map, the bottom of the sheet shows an **Add to Route** button instead of Navigate:

- **Add to Route** (purple) — adds the spot as the next waypoint in your planned route and closes the sheet
- **Added to Route** (grey, disabled) — shown if this spot is already in your current route

---

## Common Questions

**Look Around isn't showing — is that a bug?**
No. Look Around coverage is determined by Apple and isn't available everywhere — rural areas, private roads, and many locations outside major routes may have no coverage. The app falls back to satellite view automatically.

**The amenity badges I see don't match what I experienced at this spot.**
Badges come from the data stored with the spot, whether that's from an imported CSV or from your own entry. Open the editor (⋯ → Edit Spot) and toggle the correct services on or off. Your edit is saved locally and will survive future app updates.

**I can see the spot on the map but I can't delete it.**
You can only delete spots that belong to My Places, or spots from imported packs. If you don't see the Delete option in the ⋯ menu, check which pack the spot belongs to by noting the spot's pack (visible in the Dataset Manager). For imported packs, you can either delete the entire pack from the Dataset Manager or delete individual spots via the editor.

---

## Related Articles
- [[The_Spots_Vault|The Spots Vault]]
- [[Trip_Planner_and_Route_Builder|The Trip Planner & Route Builder]]
- [[Spot_Packs_and_Datasets|Spot Packs & the Dataset Manager]]
