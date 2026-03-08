---
title: "The Trip Planner & Route Builder"
aliases:
  - "trip planner"
  - "route builder"
  - "route planner"
  - "plan a route"
  - "plan trip"
  - "add waypoint"
  - "waypoints"
  - "route list"
  - "route sheet"
  - "eta route"
  - "fuel estimate route"
  - "scout spots"
  - "binoculars spots"
  - "toll avoid"
  - "motorway avoid"
  - "navigate waypoint"
  - "mark visited"
  - "promote waypoint"
  - "route conditions"
  - "trip draft"
category: "Spots"
type: "Reference"
tags: [help, vanlife-assistant, spots, trip-planner, route-builder, waypoints, navigation, reference]
last_updated: "2026-03-08"
---

# 🛣️ The Trip Planner & Route Builder

## Overview

The Trip Planner is a full route-building tool that lives inside the Spots module. You build a multi-stop route by placing waypoints on the map — either as freehand drops or by picking spots from your Vault — and the app calculates the real-road route between them, including driving time, distance, and an estimated fuel cost based on your van's average fuel economy.

Routes are saved as **Trip Drafts**, which can be reopened and edited across sessions.

---

## Opening the Trip Planner

From the **Spots tab**, tap **Plan a Route** (or the routing icon). A new, blank draft opens with an empty map. The navigation bar title shows the draft name ("New Trip Draft" until you save with a custom title).

To open an existing draft, use the saved drafts list (accessible from the same button when at least one draft has been saved).

---

## Building Your Route

### Adding Waypoints by Long-Pressing

Long-press anywhere on the map to drop a pin. A confirmation dialog appears with three options:

- **Add as Custom Waypoint** — adds the tapped coordinate directly to your route. The app attempts to reverse-geocode a place name; you can edit the name from the route list.
- **Save to My Places** — saves the location as a Spot in your My Places collection without adding it to the route right now.
- **Cancel** — dismisses without action.

### Adding Spots from the Vault

Tap any Spot pin visible on the map to open the [[Spot_Detail_Reconnaissance|Reconnaissance sheet]]. At the bottom, tap **Add to Route** to append it as the next waypoint. The sheet closes and the spot's location joins the route.

Spots added this way are **linked** to their Vault entry — the waypoint shows "Linked Vault Spot" in the route list, and tapping the waypoint's info in the detail sheet reopens the Reconnaissance view.

### Waypoint Order

Waypoints are listed in the route sheet in the order they were added. You can:

- **Drag to reorder** — tap and hold the row, then drag it to a new position. The route recalculates automatically after reordering.
- **Swipe to delete** — swipe left on any row in the route sheet to remove that waypoint.

---

## The Route List Sheet

Once you have two or more waypoints, a **bottom sheet** appears beneath the map showing your route plan. The sheet has two detent positions — half-screen and expanded — and can be dragged between them freely while the map stays interactive.

### Header Stats

The header of the sheet shows:
- **Total driving time** (hours and minutes)
- **Total route distance** (km or miles, matching your units setting)
- **Estimated fuel cost** — calculated from your van's average fuel cost per km/mile as derived from your Money ledger's fuel category. Shown in your home currency. This figure only appears if the app has enough fuel transaction history to calculate an average.
- **Arrival time** — the estimated arrival if you were to leave right now, showing "Today HH:MM", "Tomorrow HH:MM", or a day + date for longer trips.

A status line below the stats shows the current routing state (Ready, Calculating, etc.).

### Per-Waypoint Details

Each row in the route list shows:
- A **numbered circle** (purple for pending, green with a checkmark for visited)
- The waypoint **name**
- For each stop after the first: **segment distance**, **segment drive time**, and **ETA** for that stop specifically

Tap any row to **pan the map** to that waypoint's location.

---

## Routing Options

A horizontal scroll bar beneath the header gives quick access to routing toggles and actions:

| Control | What it does |
|---------|-------------|
| **Tolls** toggle | Toggles toll road avoidance on/off. Strikethrough text indicates tolls are currently being avoided. |
| **Motorways** toggle | Toggles motorway/highway avoidance on/off. |
| **Conditions** button (purple) | Opens the [[Route_Conditions|Route Conditions]] oracle — weather and solar intel for your departure and next stop. Only available when two or more waypoints are set. |
| **Clear** button (red) | Clears the entire route after a confirmation prompt. |

---

## The Scout Tool 🔭

Tap the **binoculars** button (top-right of the route sheet header) when a route is calculated to activate **Scout mode**. Scout searches for Vault spots within a corridor around your planned route.

A menu lets you choose your search corridor width:

- Scout 5 km
- Scout 10 km
- Scout 15 km
- Scout 20 km

After scouting, pins from your Vault datasets appear along the route corridor, so you can see what options exist without detouring away from your path. This is especially useful when you want to find a specific type of stop — a grey waste dump, a wild camp, or a paid aire — that fits naturally into your existing route.

Scout mode uses a separate task that can be cancelled by triggering a new scout or by panning the map.

---

## Navigating to the Next Stop

Each waypoint in the route list shows navigation controls on its row. Only the **active waypoint** (the first pending stop) shows the primary controls:

- **Flag + checkered circle** — tap to **mark the current waypoint as visited** and advance the route to the next stop. The waypoint circle turns green and gets a checkmark.
- **Arrow turn circle** — tap to **navigate** to this waypoint in your chosen navigation app.

Long-pressing the navigation arrow on the active waypoint opens a context menu to choose a specific navigation app for this journey:
- Apple Maps
- Google Maps
- Waze
- CityMapper

The app you explicitly select is remembered for the session. Your default navigation app (set in Settings) is used for future sessions unless overridden.

### Setting a Default Navigation App
If you haven't yet chosen a default navigation app, tapping the navigation arrow opens a one-time **navigation app picker** sheet. Select your preferred app and it becomes the default for all future navigation taps.

---

## Waypoint States

| State | Appearance | Meaning |
|-------|-----------|---------|
| **Pending** | Purple circle, numbered | Not yet visited; your upcoming stop |
| **Visited** | Green circle, ✓ | Marked as reached; route advances to next stop |
| **Active** | Purple circle with nav + flag controls visible | The current next stop |

Visited waypoints remain in the list with a strikethrough name, giving you a record of where you've been during the journey.

---

## Saving and Re-Opening Drafts

Tap **Save Plan** in the navigation bar to save the current draft. Drafts are persisted in SwiftData and sync via iCloud. Give the draft a meaningful title to find it easily later.

To reopen a draft, open the Trip Planner and select it from the drafts list. All waypoints, their states, and your routing preferences are restored.

---

## Common Questions

**The fuel estimate isn't appearing. Why?**
The estimate requires your Money ledger to contain transactions categorised as fuel expenses for your active van. If you haven't logged any fuel fills yet, or if your fuel entries aren't linked to a van, the estimate can't be calculated. See [[Fuel_Log_and_Economy|Fuel Log and Economy]] to set this up.

**My route is showing a much longer time than expected.**
Check whether Avoid Motorways is toggled on — this forces all-roads routing which can dramatically increase drive times. Also check that Avoid Tolls isn't sending you on significant detours.

**The Scout tool didn't find any spots.**
Scout only finds spots from datasets that are currently visible in the Dataset Manager. Check that your packs are toggled on. Scout also only looks within the corridor width you selected — try a wider radius if you have a sparse dataset.

**Can I use a Trip Planner draft as an actual Expedition?**
Waypoints in a Trip Planner draft can be promoted to full Trip Check-ins inside an Expedition. This is covered in the Trips module — see [[Creating a Trip (Expeditions)|Creating a Trip (Expeditions)]].

---

## Related Articles
- [[The_Spots_Vault|The Spots Vault]]
- [[Spot_Detail_Reconnaissance|Spot Detail & Reconnaissance]]
- [[Route_Conditions|Route Conditions]]
- [[Spot_Packs_and_Datasets|Spot Packs & the Dataset Manager]]
- [[Fuel_Log_and_Economy|Fuel Log and Economy]] *(Source of the fuel cost estimate)*
- [[Creating a Trip (Expeditions)|Creating a Trip (Expeditions)]] *(Promoting a draft to a full expedition)*
