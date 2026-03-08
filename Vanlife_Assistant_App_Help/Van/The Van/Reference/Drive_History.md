---
title: "Drive History"
aliases:
  - "drive history"
  - "past drives"
  - "drive log"
  - "saved drives"
  - "drive replay"
  - "replay drive"
  - "drive map"
  - "all trips map"
  - "gpx import"
  - "import gpx"
  - "elevation data"
  - "missing elevation"
  - "drive stats"
  - "route history"
category: "Van"
type: "Reference"
tags: [help, vanlife-assistant, van, drive, history, replay, map, gpx, elevation, reference]
last_updated: "2026-02-23"
---

# 📍 Drive History

## Overview

Every drive you record with the [[Drive_Recorder|Drive Recorder]] is saved here. Drive History is a record of every route the van has taken — distance, duration, ascent, descent, and a map of the track. Over time it becomes a genuinely satisfying archive of everywhere you've been, and the All Trips Map view overlays all your routes at once.

---

## Opening Drive History

Tap **Drive History** on the Van tab tools grid (the indigo card). Drive History shows a list of drive cards sorted by date, newest first.

---

## The Summary Strip

At the top of the list (when at least one drive is recorded), a strip of summary pills shows your totals across all drives:

- **Total drives** logged
- **Total distance** driven
- **Total time** on the road

These are unfiltered lifetime totals.

---

## Drive Cards

Each drive appears as a card showing:

- **Date** of the drive
- **Distance** in your preferred units (km or miles)
- **Duration** (e.g. "2h 34m")
- **Ascent and descent** in metres
- A mini **route thumbnail** — a coloured polyline of the GPS track on a small map

Cards that qualify as "expedition-worthy" (long distance, significant elevation, or high vertical density per km) get a special badge treatment.

Tap a card to open the Drive Detail view.

---

## Drive Detail View

The Drive Detail view shows the full picture of a saved drive:

### Stats Row
- Distance
- Total ascent and descent
- Net elevation change

### Route Map
The full GPS track on a map. Standard, Satellite, and Hybrid style options. The route is colour-coded by GPS tracking quality (green = high accuracy, orange = breadcrumb).

### Elevation Profile
A chart of altitude over distance for the drive, colour-coded to match the map. Gives you a visual sense of the terrain — a flat coastal drive looks completely different from a mountain pass.

### Replay

Tap **Replay** (via the context menu: long-press the drive card or use the ⋮ menu in Detail view) to open the **Drive Replay View**. This animates a playhead moving along the route at adjustable speed, showing your position at each moment of the drive. Use it to relive a memorable route or to review where the track went if it looks unusual.

---

## Sorting

The toolbar sort menu offers four options:

**Date** — Most recent first (default)

**Longest Drive** — Highest total distance first

**Highest Ascent** — Most climbing first

**Highest Descent** — Most descending first

---

## All Trips Map

Tap the **map icon** in the Drive History toolbar to open the All Trips Map — a single map view showing every recorded drive as overlaid route lines. Zoom and pan to explore. Routes from different drives are distinguishable by their opacity and overlay order.

This view is the "everywhere you've been" payoff for recording drives consistently.

---

## Importing GPX Files

Already have GPS tracks from a previous app, a Garmin device, a hiking watch, or a route you downloaded? Tap the **+** menu in the Drive History toolbar and select **Import GPX File**.

The GPX Import Wizard walks you through:
1. Selecting a .gpx file from Files
2. Previewing the track before import
3. Confirming the import

Imported drives appear in Drive History alongside recorded drives, with the same stats and map views.

---

## Fetching Missing Elevation

GPS altitude data can be missing or inaccurate, especially for older recordings or imported GPX files. Tap the **+** menu and select **Fetch Missing Elevation** to trigger the elevation enrichment service.

The app processes drives that are missing elevation data and fetches altitude values for each point from an external elevation API. A progress overlay shows which drive is currently being processed and how many remain.

This is a batch operation that runs for all drives with missing elevation. There is a daily API rate limit — if you have many drives to process, it may take more than one day to enrich them all. A rate limit alert is shown if the limit is reached.

---

## Deleting a Drive

Long-press any drive card to reveal the context menu, then tap **Delete Drive**. The drive and all its GPS points are permanently removed.

---

## Related Articles
- [[Drive_Recorder|The Drive Recorder]]
- [[Van_Profile_and_Setup|Setting Up Your Van Profile]]
