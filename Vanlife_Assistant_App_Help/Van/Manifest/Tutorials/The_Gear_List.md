---
title: "The Gear List"
aliases:
  - "gear list"
  - "templates"
  - "gear locker"
  - "master inventory"
  - "template"
  - "item template"
  - "add to gear list"
  - "gear catalogue"
category: "Manifest"
type: "Reference"
tags: [help, vanlife-assistant, manifest, reference, gear-list, templates, catalogue, kit-planning]
last_updated: "2026-02-22"
---

# 🎒 The Gear List

## Overview

The Gear List is your master catalogue of gear — items defined by *what they are*, independent of where they currently live. It's a library of templates. Where the zone inventory answers "What's in the van right now?", the Gear List answers "What do I own, and where is it across my entire setup?"

It's also the foundation for trip kit planning and voice readiness queries.

---

## Opening the Gear List

From the Manifest home screen, tap **Gear List** in the payload header area. The Gear List opens as a full-screen sheet.

---

## What's in the Gear List

The Gear List shows all your templates grouped by category in expandable disclosure sections. Tap a section header to expand or collapse it.

At the top, a three-tile summary shows the total number of items, combined weight, and combined replacement value across all templates.

Each template row shows:
- Category icon and name
- Any contexts assigned to the template
- Current location summary — where this item actually lives right now, across all zones and vans

The location summary is a live cross-reference: it scans all your live inventory items for name matches and reports where they're found. "Kitchen (x2), Under-Bed (x1)" means the app has found three items with this template's name — two in the Kitchen zone and one Under-Bed. This gives you an instant overview of where your gear has ended up.

---

## How Templates Are Created

Templates are created automatically when you add a new item with the **Add to Gear List** toggle switched on (the default). Every time you add a new piece of gear to a zone for the first time, a matching template is created in the Gear List.

You can also create templates directly from the Gear List by tapping **+** in the toolbar. Templates created this way have no zone assigned — they represent gear that exists but isn't currently loaded into any zone.

You can save an item from inside a zone or container directly to the Gear List via its context menu — tap the item row and choose **Save to Gear List** (or **Already in Gear List** if a template with that name already exists, in which case the option is disabled).

---

## Editing a Template

Tap any template row to open the item editor pre-populated with that template's data. Templates support all the same fields as live items: name, weight, value, quantity, category, contexts, notes, linked documents.

Templates do not have a zone — that's by design. They describe what an item is, not where it is.

---

## The Relationship Between Templates and Live Items

Templates and live items are separate records that happen to share a name. Editing a template does not update live items in your zones, and changing a live item does not update the template. The connection between them is purely the name match used to build the location summary.

This is intentional: your Gear List stays stable as a catalogue even when live items move around, get renamed, or are deleted from a zone.

---

## Using the Gear List for Kits and Trip Planning

The voice assistant uses Gear List templates when answering readiness queries. Saying *"Do I have everything for a hiking weekend?"* causes the assistant to look at all templates tagged with the "Hiking" context and check whether matching live items exist in onboard zones.

To get useful answers from this, make sure your frequently-used kits are:
1. In the Gear List as templates
2. Tagged with an appropriate context (Hiking, Skiing, Beach, etc.)

The [[The_Loading_Bay|Loading Bay]] can then be used to quickly load those items from offboard or other-van storage into the active van when you need them.

---

## Deleting Templates

Swipe left on any template row and tap Delete, or use the system edit mode (tap **Edit** in the toolbar).

Deleting a template removes it from the Gear List but does not affect live items in your zones. If you later re-add a live item with the same name and the Add to Gear List toggle is on, a new template will be created.

---

## Related Articles
- [[Understanding_the_Manifest|Understanding the Manifest]]
- [[Adding_and_Editing_Items|Adding and Editing Items]]
- [[The_Loading_Bay|The Loading Bay]]
