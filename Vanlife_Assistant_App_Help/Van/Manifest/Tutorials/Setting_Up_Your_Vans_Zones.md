---
title: "Setting Up Your Van's Zones"
aliases:
  - "zones"
  - "add zone"
  - "create zone"
  - "onboard zone"
  - "offboard zone"
  - "zone setup"
  - "van floor plan"
  - "zone editor"
  - "manage zones"
  - "storage zones"
category: "Manifest"
type: "Tutorial"
tags: [help, vanlife-assistant, manifest, tutorial, zones, setup, onboard, offboard, floor-plan, grid]
last_updated: "2026-02-22"
---

# 🗺️ Setting Up Your Van's Zones

## Overview

Zones are the physical areas where your gear lives — the kitchen cupboard, the garage, the roof box, or an offboard storage unit. Every item in the Manifest must belong to a zone, so setting these up before adding items is the right place to start.

There are two kinds: **Onboard zones** live inside your vehicle and are painted onto your van's floor plan — the app uses their grid positions to calculate weight distribution. **Offboard zones** represent external locations and can optionally have a GPS coordinate, enabling arrival reminders via the Whiteboard.

---

## Creating Your First Zone

Open the Manifest, then tap the **tag icon** (⌗) in the top-right toolbar and choose **Zones**. This opens the Zone Manager. Tap **+** to create a new zone.

Alternatively, if the home screen is showing the "Add Zone" button in the Inventory Zones section, tap that directly.

---

## The Zone Editor

### Name
Give the zone a short, recognisable name — "Kitchen", "Garage", "Under-Bed", "Roof Box". This name appears on item rows, in search results, and is spoken by the voice assistant when answering *"Where is the…?"*

### Onboard Vehicle toggle
Switch this **on** for zones physically inside your van. Switch it **off** for zones outside the van (storage units, other properties, etc.).

This toggle controls two things: whether the zone appears under "Onboard Storage" or "Offboard Storage" on the home screen, and whether the zone's weight is included in the payload calculation. Only onboard zones count toward payload.

> **10 offboard zone limit.** iOS can monitor a maximum of 10 circular geofences at a time. The zone editor enforces this limit when you try to mark an eleventh zone as offboard. If you need a new offboard zone and have already hit 10, you'll need to delete or repurpose an existing one.

### Zone Colour
Choose a colour for this zone. The colour tints the zone card on the home screen, the zone header in detail view, and the icon on item rows. Using distinct colours for zones you use frequently makes it faster to scan lists at a glance.

### Zone Location (onboard zones)
When **Onboard Vehicle** is on, a **Zone Location** section appears with a grid painter representing your van's floor plan.

Tap and drag across the grid to paint the cells this zone occupies. The grid is calculated from your van's length and width settings, with each cell representing 0.5 metres × 0.5 metres. A 6-metre van produces a 12-row grid; a 2-metre-wide van produces a 4-column grid.

Painting the correct cells matters: it tells the app where that zone's weight sits on the vehicle, which is what the payload heatmap uses to show front-to-rear and left-to-right balance. See [[Payload_and_Weight_Management|Payload and Weight Management]].

If you're not sure, a rough approximation is fine — a few cells in the right general area is enough to give a meaningful heatmap reading.

Tap **Clear** to reset the grid selection for that zone.

### Geofence Location (offboard zones)
When **Onboard Vehicle** is off, a **Geofence Location** map appears instead of the grid.

**Tap the map to drop a pin** at the physical location of this offboard zone. The app will attempt to centre the map on your current GPS position when the sheet opens, so if you're standing outside your storage unit, the pin will land roughly in the right place.

Set the **Radius (m)** field to the detection distance you want — default is 100 metres. A smaller radius suits a precise location like a specific car park bay; a larger radius suits a sprawling area like a farm or holiday park.

Once a geofence is configured, any Whiteboard item with this zone as a location trigger will fire a notification when you arrive within range. See [[Due Dates and Location Triggers|Due Dates and Location Triggers]].

Tap **Clear Location** to remove the GPS pin without deleting the zone.

### Icon
Scroll through the icon grid and tap one that suits the zone. The icon appears on the zone card, in the zone detail header, and next to items listed in search and the Loading Bay.

### Saving
Tap **Save**. The zone appears immediately on the Manifest home screen.

---

## Managing Existing Zones

In the Zone Manager, zones are grouped by vehicle (onboard) and then offboard. You can:

- **Reorder** zones using the drag handles (tap Edit first). The order here determines the order they appear on the home screen.
- **Edit** any zone by tapping its row to reopen the editor.
- **Delete** a zone by swiping left. **Deleting a zone deletes every item inside it.** The app confirms before proceeding.

You can also edit a zone directly from its detail view — tap the **⋯** menu in the top-right corner of any open zone and choose **Edit Zone**.

---

## How Many Zones Should I Create?

There's no right answer, but a few principles help:

**Match physical reality.** If you mentally think of your van as having "the kitchen bit", "the garage", and "the wardrobe", create exactly those three zones rather than trying to be more granular. You can always subdivide later by adding containers inside a zone.

**One zone per physical compartment.** If your van has a clearly defined locker with a door, that's a zone. If it's an open shelf area, that might be a zone. The key test: would you describe this as a distinct storage area when telling someone where something is?

**Use offboard zones for gear you regularly move.** If you have a storage unit where winter gear goes when you don't need it, or a garage at a family home where you leave the snowboard kit, those are good offboard zones. Items can be moved between zones using the [[The_Loading_Bay|Loading Bay]].

---

## Related Articles
- [[Understanding_the_Manifest|Understanding the Manifest]]
- [[Adding_and_Editing_Items|Adding and Editing Items]]
- [[Payload_and_Weight_Management|Payload and Weight Management]]
- [[The_Loading_Bay|The Loading Bay]]
- [[Stocktaking_with_the_Audit_Tool|Stocktaking with the Audit Tool]]
- [[Due Dates and Location Triggers|Due Dates and Location Triggers]]
