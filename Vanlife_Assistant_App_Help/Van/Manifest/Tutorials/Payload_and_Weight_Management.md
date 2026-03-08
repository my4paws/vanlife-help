---
title: "Payload and Weight Management"
aliases:
  - "payload"
  - "weight"
  - "overweight"
  - "gvm"
  - "payload calculation"
  - "weight limit"
  - "payload allowance"
  - "heatmap"
  - "weight distribution"
  - "centre of gravity"
  - "payload ring"
  - "fuel weight"
  - "water weight"
  - "crew weight"
category: "Manifest"
type: "Deep Dive"
tags: [help, vanlife-assistant, manifest, deep-dive, payload, weight, gvm, heatmap, distribution, fuel, water, crew]
last_updated: "2026-02-22"
---

# ⚖️ Payload and Weight Management

## Overview

Payload is the legal maximum weight you're allowed to carry in your van above its empty kerb weight. Exceed it and you're driving overloaded — a legal issue, an insurance issue, and a safety issue. The Manifest calculates your current payload usage in real time as you add, edit, and move items.

This article explains how the calculation works, what feeds into it, and how to read the heatmap.

---

## The Payload Calculation

The formula is:

```
Payload Allowance = GVM − Kerb Weight
Payload Used      = Items + Crew + [Fuel] + [Water]
Payload Available = Allowance − Used
```

**GVM** (Gross Vehicle Mass) is the maximum legal total weight of the loaded vehicle. Found in your V5C logbook or on the VIN plate.

**Kerb Weight** is the weight of the empty vehicle with a full tank of fuel and all standard fluids, but no cargo or passengers. Also on the V5C or VIN plate.

**Items** is the sum of `totalStackWeight` for every top-level item in every onboard zone linked to the active van. This includes the recursive weight of containers and their contents.

**Crew** is the sum of traveller weights set in your Van profile (the Travellers section). If you haven't added travellers, this is zero.

**Fuel** and **Water** are only included in the calculation when **Weight Distribution** is enabled in your Van settings. When enabled, fuel weight is calculated as current fuel level × tank capacity × fuel density (0.84 kg/L for diesel, 0.75 kg/L for petrol). Water weight is current water level × tank capacity × 1.0 kg/L.

> Offboard zones do not contribute to payload — items stored outside the van (in a storage unit, another property, or another vehicle) are tracked but don't affect the weight calculation.

---

## The Payload Header

The payload header on the Manifest home screen is a card showing:

- Your van's profile photo (or a bus icon if none is set)
- The van's name
- A status label: **Available**, **Over Limit**, or **Setup Required**

**Setup Required** means your van profile is missing GVM or kerb weight values. The ring still shows but carries no meaningful reading. Add these values in your Van profile to unlock the payload tracking.

Below the header information sits a central **donut ring** that fills from green (empty) through orange (>90% used) to red (over limit). The arc fills clockwise as weight is added. When overloaded, the ring displays a warning triangle instead of the weight figure.

Inside the ring, the display shows either:
- The available payload remaining (positive = fine)
- The amount overweight (displayed in red when Over Limit)

### Fuel and Water Sliders

When Weight Distribution is enabled and your van has a fuel tank or water tank configured, two interactive **vertical sliders** appear flanking the donut — fuel on the left, water on the right. Drag the sliders to adjust the current level; the payload calculation and heatmap update in real time. This lets you model "if I fill the water tank before leaving, am I still within payload?"

---

## The Weight Distribution Heatmap

Tap the **Weight Distribution** button (scales icon, visible when Weight Distribution is enabled in Van settings) to flip the payload header card. The back face shows the **heatmap** — a top-down view of your van's floor plan with weight intensity rendered as colour.

### Reading the Heatmap

Each cell on the grid corresponds to a 0.5m × 0.5m square of your van's floor. Cells are coloured from cool (light, low weight) to hot (deep orange/red, high concentration of weight). The colour scale is relative to the heaviest cell in the current load, so the hottest colour always appears at the highest concentration regardless of absolute weight.

> The weight in each zone is distributed evenly across the cells you painted for that zone when setting it up. A zone painted over 4 cells with 80kg of items contributes 20kg per cell.

### Centre of Gravity

A **crosshair icon** (⊕) shows the calculated centre of gravity — the weighted average position of all the mass in the van. Ideally this sits near the centre of the floor plan, slightly forward of mid-length. Weight distributed too far rearward increases the risk of oversteer and can affect steering axle load; weight too far to one side affects cornering.

The centre of gravity includes items, fuel, and water (when Weight Distribution is enabled).

### Returning to the Donut

Tap the **Flip** button in the heatmap header to return to the donut view.

---

## Getting Accurate Readings

The payload calculation is only as good as the data you put in. A few things affect accuracy:

**Item weights.** Items with weight set to 0 don't contribute. If you want a meaningful total, add realistic weights — even rough estimates (a sleeping bag at 2kg, a tool kit at 8kg) are better than zeros.

**Zone grid painting.** Items contribute to the heatmap only if their zone has grid cells painted. Zones with no grid cells selected contribute to the donut ring total but appear as dead space on the heatmap.

**Van GVM and kerb weight.** These need to be set in your Van profile. If they're missing, the header shows "Setup Required" and Available/Used figures display as 0.

**Fuel and water.** These only appear when Weight Distribution is enabled. A full 100L water tank adds 100kg — significant for payload.

---

## Common Questions

**The payload ring shows "Setup Required".**
Your van profile is missing GVM or kerb weight. Open the Van tab, edit your van profile, and enter both values from your V5C logbook or VIN plate.

**My payload shows a very different number from what I expect.**
Check that all your items have weights set. Items with weight 0 are invisible to the calculation. Also check the crew weight — if you've added travellers, their weights are included. Finally, if Weight Distribution is on, fuel and water contribute; adjust the sliders to match your actual levels.

**I'm over the payload limit but only by a small amount.**
The Manifest tracks what you tell it. If you've set conservative weights, your actual load may be under the limit. If you've been precise with weights, consider what you can remove or move to offboard storage.

**The heatmap shows weight in an unexpected area.**
Check the grid painting on your zones in the Zone Editor. If a zone is painted in the wrong area of the floor plan, its items' weight will appear in the wrong location on the heatmap. See [[Van/Manifest/Tutorials/Setting_Up_Your_Vans_Zones|Setting Up Your Van's Zones]].

---

## Related Articles
- [[Understanding_the_Manifest|Understanding the Manifest]]
- [[Van/Manifest/Tutorials/Setting_Up_Your_Vans_Zones|Setting Up Your Van's Zones]]
- [[Adding_and_Editing_Items|Adding and Editing Items]]
