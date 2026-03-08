---
title: "The Manifest System — How Gear Is Organised"
aliases:
  - "manifest concept"
  - "how manifest works"
  - "manifest explained"
  - "inventory concept"
  - "gear organisation concept"
  - "zone container item"
  - "manifest hierarchy"
  - "inventory system explained"
category: "Concepts"
type: "Reference"
tags: [help, vanlife-assistant, concepts, manifest, inventory, zones, containers, items, reference]
last_updated: "2026-03-08"
---

# 📦 The Manifest System — How Gear Is Organised

The Manifest is Vanlife Assistant's inventory system. It tracks everything in your van — where it lives, how much it weighs, and when it expires.

This article explains the mental model behind the system: why it's structured the way it is, and what each layer of the hierarchy actually means.

---

## Why a Manifest?

A van is a vehicle and a home at once. The stuff inside it is everything: camping kit, kitchen equipment, tools, food, clothing, first aid supplies, spare parts, and hundreds of other items that collectively determine whether you're comfortable, safe, and legal.

Knowing *what* you have is useful. Knowing *where* it is — which bag, which cupboard, which box — is the difference between a calm morning and a 20-minute rummage at 7am in a car park.

The Manifest exists to answer three questions:
1. **What's in the van?** — complete inventory with weights, values, and quantities
2. **Where exactly is it?** — down to the specific container on the specific shelf
3. **Is anything running low or about to expire?** — stock levels and expiry tracking with Whiteboard alerts

---

## The Hierarchy

Everything in the Manifest lives in a three-level structure:

```
Van
 └── Zone (Kitchen Cupboard, Garage, Roof Box…)
      └── Container (Toolbox, Dry Goods Box…) [optional]
           └── Item (Wrench, Pasta, First Aid Kit…)
```

Items can also sit directly in a Zone without a Container in between. Containers can nest inside other containers — a med kit inside the garage zone, with individual supplies inside the med kit.

---

## Zones — The Physical Layout

**Zones** are areas of your van. Each zone corresponds to a physical space: a cupboard, a drawer, a garage compartment, the roof box, a bedside pocket.

Every onboard zone is painted onto a **grid** that represents your van's floor plan. This grid tracks which cells of the floor the zone occupies, which is how the app calculates the **Payload Heatmap** — a visual representation of where weight is distributed across your vehicle.

Zones have two types:

**Onboard zones** are physically inside your van. Items in onboard zones contribute to your payload calculation. When you weigh everything and add it to the Manifest, the app tracks your total loaded weight against your van's Gross Vehicle Mass.

**Offboard zones** are external locations — a storage unit, a parent's garage, your climbing gear stored at a friend's place. Items in offboard zones are tracked but don't affect your van's weight or payload.

You set up zones first, before adding any items. The zone structure defines the shape of your inventory.

→ See [[Setting_Up_Your_Vans_Zones]]

---

## Containers — The Boxes Within the Spaces

**Containers** are physical boxes, bags, cases, and drawers that live inside a zone. A container holds items and aggregates their weight.

The key thing to understand about containers: **a container is just an item with a flag set**. It has its own weight (the empty box or bag itself), its own category, its own replacement value. This means container weight contributes to the payload total, not just the items inside.

Containers have two superpowers:

**Nesting** — containers can live inside other containers. A toolbox lives in the garage zone. Inside the toolbox are individual tools. The app rolls weight all the way up the chain, so the zone's total weight reflects everything inside it, no matter how deep.

**QR labels** — every container gets a unique QR code. Print it and stick it to the physical box. Point the app's scanner at it to jump directly to that container's contents — useful during a stocktake or when someone asks where something is.

→ See [[Containers_and_QR_Labels]]

---

## Items — The Gear Itself

**Items** are individual pieces of gear. Each item has:
- **Name** — what it is
- **Weight** — per-unit weight in kg (multiplied by quantity for total stack weight)
- **Quantity** — how many you have
- **Replacement value** — what it would cost to replace
- **Category** — the item's type (Electrical, Food, Clothing, Tools, etc.)
- **Context tags** — when it's relevant (*Always*, *Winter*, *Hiking*, *Remote Work*, specific months)
- **Expiry date** — triggers an alert in the Whiteboard when approaching
- **Minimum stock level** — triggers a low-stock alert when quantity falls below this threshold

Items also have an optional **preferred zone** — where an item *should* go when it's not currently in use. This is distinct from where it currently *is*. The Loading Bay can help you move things between zones.

### The Gear List

Every item can optionally be added to the **Gear List** — a master catalogue of item templates. The Gear List is not tied to any location. It's your complete list of *what you own*, independent of *where it currently is*.

The Gear List is useful for trip kit planning: build a kit of items you want to take, and check them off as you load the van.

---

## Weight and Payload

The Manifest feeds your **payload calculation** in real time.

Your van profile stores its Gross Vehicle Mass (GVM) and kerb weight. The difference is your payload capacity — how much you're legally allowed to carry in total. The Manifest calculates the combined `totalStackWeight` of every item across all onboard zones (including the empty weight of containers themselves) and shows this against your payload limit.

The payload header on the Manifest home screen shows a colour-coded ring: green when you have plenty of capacity, orange as you approach the limit, red if you're over.

The **Payload Heatmap** shows the same information spatially — a colour gradient across your van's floor plan, hot where weight is concentrated. Useful for checking whether your load is balanced front-to-rear and side-to-side.

→ See [[Payload_and_Weight_Management]]

---

## Inventory Control

Two features help you manage stock levels over time:

**Expiry dates** — set an expiry date on any perishable item (food, medication, vehicle fluids). The app tracks these and surfaces expiring items in the Manifest home screen and in the Whiteboard as reminders.

**Minimum stock levels** — set a minimum quantity on consumable items (gas canisters, tinned food, water purification tablets). When your count drops below the threshold, the item appears as a low-stock alert, and the Whiteboard can automatically add it to your shopping list.

---

## The Audit Tool

The **Audit Tool** runs a zone-by-zone stocktake. It presents each zone in turn and asks you to confirm which items are actually present. Items you mark as missing are flagged; your last-audited date is recorded on the zone.

Use the Audit Tool at the start of a new trip to confirm the van is fully loaded, or at the end to see what was used or lost.

→ See [[Stocktaking_with_the_Audit_Tool]]

---

## Voice Integration

Because the Manifest exists as structured data, the Voice Assistant can query it by name, zone, category, or weight. Asking "where's the first aid kit?" returns its zone and container. Asking "what's in the garage zone?" lists its contents. Asking "how much does the van weigh?" gives the total payload from the Manifest.

---

## Related Articles

- [[Understanding_the_Manifest]] — *The Manifest home screen in detail*
- [[Setting_Up_Your_Vans_Zones]] — *Required first step*
- [[Adding_and_Editing_Items]] — *Every field explained*
- [[Containers_and_QR_Labels]] — *Physical labelling for your gear*
- [[Payload_and_Weight_Management]] — *The weight calculation in full*
- [[Stocktaking_with_the_Audit_Tool]] — *Verifying what's actually in the van*
- [[Inventory_Control_and_Expiry_Dates]] — *Low-stock alerts and expiry tracking*
