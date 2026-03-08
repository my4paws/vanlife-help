---
title: "Adding and Editing Items"
aliases:
  - "add item"
  - "edit item"
  - "new item"
  - "item fields"
  - "item editor"
  - "add to manifest"
  - "item weight"
  - "item category"
  - "item context"
  - "item expiry"
  - "link document to item"
  - "specific place"
category: "Manifest"
type: "Reference"
tags: [help, vanlife-assistant, manifest, reference, items, add, edit, weight, category, context, expiry, documents, inventory]
last_updated: "2026-02-22"
---

# ➕ Adding and Editing Items

## Overview

Items are the individual pieces of gear in your Manifest. Each item lives in a zone — optionally inside a container — and carries the data that powers payload calculation, voice lookups, stock monitoring, and expiry alerts.

This article covers every field in the item editor and explains what each one does.

---

## Opening the Editor

**To add a new item:** Tap the floating **+** button on the Manifest home screen, or tap **+** in the toolbar of any open zone.

**To edit an existing item:** Tap the item row and choose **Edit Item** from the context menu, or long-press the item row to bring up the context menu, or use the Edit option from the search results context menu.

**To add an item inside a container:** Open the container's detail view and tap **+** in its toolbar. The new item is automatically placed inside that container.

---

## The Item Header

As you type the item name, a large icon appears at the top of the editor — it uses the category icon you've chosen, or the container style icon if the container toggle is on. This live preview updates as you fill in the form, making it easy to spot if you've accidentally selected the wrong category.

---

## Section 1: Details

### Item Name *(required)*
The display name used everywhere in the app: zone lists, search results, the Loading Bay, voice answers, and the Gear List. Keep it clear and consistent — if you already have "Camping Stove" in one zone, don't add "camping stove" or "stove (camping)" in another. The move and merge logic uses name matching.

### Weight (kg)
The weight of a single unit. Leave at 0 if you don't want this item to count toward payload. For containers, this should be the weight of the empty container itself — the contents' weights are added automatically.

Weight is always stored and displayed in kilograms. The total payload calculation multiplies this by the item's quantity.

### Value
The replacement value of a single unit, in your local currency. Optional, but useful for insurance purposes. The zone detail view shows the total value of everything in a zone; the Gear List shows total value across all templates.

### Quantity
How many of this item are in this location. Use the stepper. For items you have multiples of spread across different zones, add them as separate entries — one per zone — rather than one entry with a high quantity. That way "move 2 of 5 to the garage" works correctly via the [[The_Loading_Bay|Loading Bay]].

---

## Section 2: Classification

### Zone *(required to appear in inventory)*
Where this item lives. The zone picker groups zones into Current Van, Offboard, and Other Vehicles. If you leave this unset, the item is saved only to the [[The_Gear_List|Gear List]] as a template — it won't appear in any zone's inventory.

### Inside Container
Appears once you've selected a zone, if that zone contains at least one container. Placing an item inside a container means it appears under that container's disclosure group in the zone view, and its weight is included in the container's stack total. Choose **None (Zone Root)** to place the item loose in the zone.

### Specific Place
A free-text note for items placed loose in a zone (hidden when Inside Container is set). Use this for sub-location notes that don't warrant a full container — "Behind the driver seat", "Top shelf, left side", "In the door pocket". 

As you type, the app suggests places already used by other items in the same zone. Tap a suggestion to apply it instantly. This makes "Top shelf" consistent across 12 items rather than having 12 slightly different spellings.

### Add to Gear List
Toggle (visible on new items only). When on, adding this item also creates a matching template in the [[The_Gear_List|Gear List]]. The default is on. Turn it off for one-off or consumable items you don't want cluttering the Gear List template library.

---

## Section 3: This is a Container

A toggle that marks this item as a physical container — a box, bag, case, or drawer that other items can live inside.

When switched on, the container style picker appears. Choose the style that best matches the physical object:

| Style | Suggested use |
|---|---|
| Box | Cardboard or plastic storage box |
| Bag | Soft-sided holdall or stuff sack |
| Backpack | Rucksack that gets moved in and out |
| Crate | Open-topped solid crate |
| Hard Case | Pelican-style waterproof case |
| Toolbox | Tool roll, toolbox, or organiser |
| Luggage | Suitcase or rolling bag |
| Drawer | Built-in drawer unit |
| Bin | Waste bin or open bin |
| Cupboard | Built-in cupboard or locker |
| Folder | Document folder or wallet |
| Envelope | Flat paper or padded envelope |

The style determines the icon shown on the container row and in the QR label sheet. It has no functional effect beyond display.

See [[Containers_and_QR_Labels|Containers and QR Labels]] for the full guide to working with containers.

---

## Section 4: Inventory Control

### Monitor Stock Levels
Toggle. When on, the app watches this item's quantity and fires a low-stock alert when it falls to or below the alert threshold. The alert appears as a banner on the zone detail view offering to add the item to your shopping list.

### Alert Threshold
The quantity at which the low-stock alert fires. Set to 1 to be notified when you're on the last one; set to 3 to get advance warning. Only visible when Monitor Stock Levels is on.

See [[Inventory_Control_and_Expiry_Dates|Inventory Control and Expiry Dates]] for full details.

---

## Section 5: When

The **When** section defines when this item is typically in the van. It doesn't filter what you see — it's metadata that helps the voice assistant and future features understand seasonality.

**Always** — item lives in the van year-round. This is the default for new items and is selected automatically if you select all 12 months.

**Month grid** — tap individual months to indicate which months this item is typically loaded. Selecting months clears "Always". Selecting all 12 months reverts to "Always" automatically.

Example uses: mark the snowboard kit as Nov–Mar; mark the beach gear as May–Sep; mark the awning as Apr–Oct.

---

## Section 6: Contexts

Contexts are freeform tags you define yourself. Where the **When** section handles time-based metadata, contexts handle activity-based metadata — "Hiking", "Remote Work", "Festival", "Dog Friendly", "Emergency".

Tap an existing context chip to toggle it on this item. Tap **+** to open the Context Manager and create new contexts with custom colours.

Contexts are used by the voice assistant for trip readiness queries (*"Do I have everything for a hiking weekend?"*) and can be used to understand your inventory at a glance.

---

## Section 7: Documentation

Link Glovebox documents to this item — useful for warranties, manuals, receipts, or certificates.

**Link Existing** — opens a picker showing all your Glovebox documents grouped by category. Tap to link or unlink.

**Add New** — opens the document scanner to photograph or import a new document and add it directly to this item. The document is simultaneously saved to the Glovebox.

Once linked, document thumbnails appear in the Documentation section. Tap a thumbnail to view the document, or long-press for a menu with View and Unlink options. Unlinking removes the document from this item but does not delete it from the Glovebox.

---

## Section 8: Notes

A freeform text field for anything else — warranty details, purchase date, a reminder about how to operate something, a note that the item needs servicing. Grows vertically as you type. Not searchable in the current version.

---

## Section 9: Expiry Date

Toggle **Has Expiry Date** on, then set the date. The item will appear in the **Expiring Soon** card on the Manifest home screen from 30 days before the date, with a countdown showing days remaining or "Expired" in red.

A notification is scheduled 7 days before the expiry date: "Expiring Soon: [Item Name] — expires in 7 days. Location: [Zone]."

Remove the expiry date by switching the toggle back off. The pending notification is cancelled automatically.

See [[Inventory_Control_and_Expiry_Dates|Inventory Control and Expiry Dates]] for more.

---

## Saving

Tap **Save** (top-right). The item appears immediately in its zone. If **Add to Gear List** was on and this is a new item, a matching template is also created in the Gear List.

**Save** is disabled until the Item Name field is non-empty.

---

## Editing an Existing Item

All fields are identical to creating a new item. The **Add to Gear List** toggle is hidden when editing (templates are managed separately in the Gear List). If the item has an associated container or zone, these are pre-populated.

---

## Related Articles
- [[Understanding_the_Manifest|Understanding the Manifest]]
- [[Setting_Up_Your_Vans_Zones|Setting Up Your Van's Zones]]
- [[Containers_and_QR_Labels|Containers and QR Labels]]
- [[The_Gear_List|The Gear List]]
- [[Inventory_Control_and_Expiry_Dates|Inventory Control and Expiry Dates]]
- [[The_Loading_Bay|The Loading Bay]]
- [[Stocktaking_with_the_Audit_Tool|Stocktaking with the Audit Tool]]
