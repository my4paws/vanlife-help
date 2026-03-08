---
title: "The Loading Bay"
aliases:
  - "loading bay"
  - "move items"
  - "bulk move"
  - "move between zones"
  - "transfer items"
  - "move to van"
  - "unload"
  - "load van"
  - "move gear"
  - "split stack"
  - "merge items"
category: "Manifest"
type: "Reference"
tags: [help, vanlife-assistant, manifest, reference, loading-bay, move, transfer, zones, bulk, split, merge]
last_updated: "2026-02-22"
---

# 🔄 The Loading Bay

## Overview

The Loading Bay is a dedicated tool for moving items between zones in bulk. Instead of editing items one by one and changing each one's zone, the Loading Bay lets you pick a source, pick a destination, tick off what you want to move, and confirm in one go.

It's how you load seasonal kit from the storage unit into the van, transfer gear to another vehicle in your fleet, or reorganise a zone that's gotten messy.

---

## Opening the Loading Bay

From the **Manifest home screen**, tap the **Loading Bay** button in the payload header (or reach it from any zone's **⋯** menu → **Move Items Here**). When opened from a zone's menu, the destination is pre-set to that zone.

---

## The Route Selector

At the top of the Loading Bay is a **route selector** — a source → destination picker.

**Source** is where the items currently live. Tap it to choose any zone from your active van, offboard zones, or other vehicles in your fleet.

**Destination** is where you're moving them to. Same options.

The route selector calculates the **payload impact** of the move and shows it below the selectors:
- Moving from an offboard zone into an onboard van zone → **+ Xkg** (van gets heavier)
- Moving from an onboard zone to offboard → **− Xkg** (van gets lighter)
- Moving between two onboard zones → no net payload change (shown as 0)
- Moving between offboard zones → no payload impact

This lets you sanity-check a move before confirming it. If a planned move would push you over payload, the number shows in red.

---

## Selecting Items

Once a source zone is chosen, the available items are listed below the route selector, grouped into **Containers** (shown first) and then **category groups** for loose items.

Use **Select All** / **Deselect All** to quickly select or clear the whole source.

Tap any item row to select it. A stepper appears on the row so you can choose how many of that item to move when the quantity is greater than 1.

### Moving Containers

When you select a container, its entire contents move with it. The container appears as a single entry; its row shows the total stack weight (container + contents). You cannot select individual items from inside a container in the Loading Bay — to move a subset of a container's contents, open the container first and use the per-item Move option from the context menu.

### Selecting Quantities

For items with quantity > 1, you can move a partial quantity. Set the stepper to the number you want to transfer. The remainder stays in the source zone. If the destination already has items with the same name, the moved quantity is merged into the existing stack.

---

## Performing the Move

Once you've selected your items and confirmed the route, tap **Move X Items** at the bottom.

The app processes the move:

**Merge logic** — before creating new item records, the app checks the destination for items with matching names. If a match is found, the moved quantity is added to the existing item and the source item's quantity is reduced (or deleted if all units moved). This prevents duplicate entries.

**Split logic** — if you move a partial quantity of an item and no matching item exists at the destination, a new item record is created at the destination with the moved quantity, and the source item's quantity is reduced by the same amount.

**Recursive zone update** — when a container moves, every item inside it (and every item inside nested containers) has its zone updated recursively. There is no risk of orphaned items.

The move completes immediately and the view dismisses. The payload header updates to reflect the new load.

---

## Moving a Single Item

For moving a single item without opening the Loading Bay, long-press any item row in a zone or search result and choose **Move Item**. This opens a focused move sheet for just that item, with destination zone and container pickers, a quantity selector, and a single Move button.

This sheet is the fastest route when you know exactly where one thing needs to go.

---

## Common Questions

**I moved an item but it disappeared.**
The item moved to the destination zone. Check the destination zone on the home screen — it should show an increased item count. If the destination was an offboard zone, the item won't appear in the onboard inventory sections.

**The destination zone isn't in the list.**
Only zones that currently exist appear in the picker. If you need to move items to a new zone, create the zone first via the Zone Manager. See [[Setting_Up_Your_Vans_Zones|Setting Up Your Van's Zones]].

**Can I move items to another van in my fleet?**
Yes. The route selector includes all vans in your fleet grouped under their vehicle names. Moving items to another van's zones works identically to moving within your active van.

**Can I move an entire zone's worth of gear at once?**
Yes — use Select All in the Loading Bay with the relevant source zone selected. All top-level items are selected for the full available quantity. Confirm the move to transfer everything.

---

## Related Articles
- [[Understanding_the_Manifest|Understanding the Manifest]]
- [[Setting_Up_Your_Vans_Zones|Setting Up Your Van's Zones]]
- [[Containers_and_QR_Labels|Containers and QR Labels]]
- [[The_Gear_List|The Gear List]]
