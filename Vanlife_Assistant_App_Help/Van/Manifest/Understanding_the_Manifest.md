---
title: "Understanding the Manifest"
aliases:
  - "what is the manifest"
  - "manifest overview"
  - "inventory overview"
  - "van inventory"
  - "manifest intro"
  - "what does the manifest do"
category: "Manifest"
type: "Reference"
tags: [help, vanlife-assistant, manifest, reference, overview, zones, containers, items, payload, weight]
last\_updated: "2026-02-22"
---

# 📦 Understanding the Manifest

## What It Is

The Manifest is the app's complete inventory system for your van. It tracks everything you own, where it lives, how much it weighs, and what it's worth — across every zone of your vehicle, any offboard storage, and the rest of your fleet.

It's not just a packing list. The Manifest feeds your payload calculation, powers the QR scanner, triggers low-stock alerts to your shopping list, and gives the voice assistant the context to answer questions like *"Where's the first aid kit?"*. Everything you put in, you get back in multiple places.

---

## The Hierarchy

Everything in the Manifest lives inside a three-level structure:

**Zone → Container (optional) → Item**

**Zones** are physical areas of your van — the kitchen cupboard, the garage space under the bed, the roof box. Each onboard zone is painted onto your van's floor plan, so the app knows where on the vehicle that weight sits. You can also create offboard zones for storage units, a parent's garage, or any other location your gear ends up.

**Containers** are physical boxes, bags, drawers, and cases that live inside a zone. A container holds items and rolls their weight up into a single total. Containers can also nest inside other containers — a toolbox inside the garage zone, with individual tools inside the toolbox. Every container gets a unique QR code you can print and stick to the physical box.

**Items** are the individual pieces of gear. Each item has a name, weight, value, quantity, category, and a set of optional properties that make it smarter: an expiry date, a minimum stock level, seasonal contexts, and links to Glovebox documents like warranties or manuals.

The hierarchy means you never just know *what* you own — you know exactly *where* it is, right down to which container on which shelf.

---

## Getting Started

If this is your first time using the Manifest, the app will launch a short onboarding wizard the first time you open it. This creates some sensible default categories and contexts to get you started.

The first thing to set up before adding any items is your zones. See [[Setting_Up_Your_Vans_Zones|Setting Up Your Van's Zones]].

---

## What's on the Home Screen

The Manifest home screen has four main areas:

**Expiring Items card** — appears at the top when any item has an expiry date within 30 days. Each chip shows the item name and how many days remain. Tap any chip to edit that item directly.

**Payload header** — shows your van's name, the weight currently loaded against your payload allowance, and a colour-coded ring (green → orange → red as you approach the limit). Tap the **Weight Distribution** button if you have it enabled to flip to the heatmap view. See [[Payload_and_Weight_Management|Payload and Weight Management]].

**Inventory Zones grid** — your onboard zones (linked to the active van) and offboard zones are shown as tappable cards. Each card shows the zone name, container count, and item count. Tap a card to open the zone and see everything inside it.

**Other Vehicles** — if you have multiple vans in your fleet, the remaining vehicles appear below with their zone counts. Tap one to browse its zones.

---

## The Toolbar

Three buttons sit in the navigation bar:

**QR scanner** (top left, camera viewfinder icon) — opens the live camera scanner. Point it at any printed container label to jump directly to that container's contents. Only available on devices that support DataScannerViewController.

**Search** (top right, magnifying glass) — searches item names across all zones of the active van. Results show zone, weight, and quantity. Long-press any result for Move, Edit, or Delete.

**Tag menu** (top right, tag icon) — opens management screens for Categories, Contexts, and Zones. Use this when you want to rename a category, create a new context, or edit and reorder your zone list.

---

## The Floating Add Button

The **+** button in the bottom-right corner opens the item editor to add a new item. It only appears once you have at least one zone set up. See [[Adding_and_Editing_Items|Adding and Editing Items]].

---

## Key Concepts to Understand

**Onboard vs Offboard zones.** Onboard zones are physically inside your van and contribute to the payload calculation. Offboard zones are external locations — your gear living there is tracked but doesn't affect your van's weight. See [[Setting_Up_Your_Vans_Zones|Setting Up Your Van's Zones]].

**Containers as items.** A container is just a regular item with the "This is a container" flag turned on. This means a container itself has a weight (its own body weight, separate from its contents), a category, and all other item properties. See [[Containers_and_QR_Labels|Containers and QR Labels]].

**Recursive weight.** An item's `totalStackWeight` includes its own weight multiplied by its quantity, plus the total weight of everything inside it if it's a container. This rolls up all the way to the zone level. The payload header shows the sum of all top-level items' stack weights across all onboard zones.

**The Gear List.** When you add a new item, a toggle asks whether to also add it to the Gear List. The Gear List is a separate catalogue of templates — items defined by what they are, not where they currently are. It's your master inventory reference and the source for trip kit planning. See [[The_Gear_List|The Gear List]].

**Contexts.** Every item can be tagged with a *When* (Always, or one or more months) and any number of custom contexts like "Hiking", "Remote Work", or "Winter". These tags don't filter the inventory view, but the voice assistant and future features use them to understand when an item is relevant.

---

## Where to Go Next

- [[Setting_Up_Your_Vans_Zones|Setting Up Your Van's Zones]] — *Required first step*
- [[Adding_and_Editing_Items|Adding and Editing Items]] — *Every field explained*
- [[Containers_and_QR_Labels|Containers and QR Labels]] — *Physical labelling for your gear*
- [[Payload_and_Weight_Management|Payload and Weight Management]] — *The weight calculation in full*
- [[The_Gear_List|The Gear List]] — *Your master inventory catalogue*
- [[The_Loading_Bay|The Loading Bay]] — *Moving gear between zones and vehicles*
- [[Stocktaking_with_the_Audit_Tool|Stocktaking with the Audit Tool]] — *Verifying what's actually in the van*
- [[Inventory_Control_and_Expiry_Dates|Inventory Control and Expiry Dates]] — *Low-stock alerts and expiry tracking*
