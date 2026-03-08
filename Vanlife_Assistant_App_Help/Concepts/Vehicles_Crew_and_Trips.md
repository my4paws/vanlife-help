---
title: "Vehicles, Crew and Trips"
aliases:
  - "vehicles crew trips"
  - "van scoping"
  - "fleet explained"
  - "how vans work"
  - "active van concept"
  - "multi-van"
  - "crew concept"
  - "travellers explained"
  - "switching vans"
  - "how crew works"
category: "Concepts"
type: "Reference"
tags: [help, vanlife-assistant, concepts, van, fleet, crew, travellers, trips, reference]
last_updated: "2026-03-08"
---

# 🚐 Vehicles, Crew and Trips

Vanlife Assistant is built around the idea that everything in the app belongs to something. Trips belong to a van. Inventory belongs to a van. Documents belong to a van. This structure makes multi-vehicle life possible — but it also means that one setting (which van is active) affects what you see across the whole app.

This article explains how vans, crew, and trips relate to each other.

---

## Vans — The Container for Everything

A **Van** in the app is more than a vehicle profile. It's the organisational container that everything else hangs from:

- **Manifest zones and items** — your inventory belongs to specific zones on a specific van
- **Trips and drives** — each expedition is associated with the van you were driving
- **Glovebox documents** — insurance, MOT, vehicle registration, all filed per van
- **Maintenance schedule** — service intervals and task history tracked per vehicle
- **Ledger entries** — transactions can be tagged to a specific van
- **SmartVan devices** — home automation rooms and devices live within a van profile
- **Drive logs** — GPS routes are recorded against the active van

The reason for this structure is that two vans are not the same. Your Transit Nugget and your Sprinter 4x4 have different inventories, different documents, different maintenance schedules, and completely separate trip histories. If you're running two vehicles, or you change vans mid-journey, the data needs to stay cleanly separated.

---

## The Active Van

At any point, one van is marked as the **active van**. This determines what you see across the app:

- The **Van tab** shows the active van's profile, manifest, and documents
- The **Trips dashboard** counts drives and check-ins associated with the active van
- The **Days on Road** counter and mileage statistics reflect the active van's history
- New **drives, check-ins, and transactions** are linked to the active van by default
- The tab bar changes its label and icon to show the active van's name and custom icon

Switching the active van changes all of this simultaneously. If you're looking at your Sprinter's statistics and switch to your old Ford, the Days on Road counter, the trip history, and the manifest all update to reflect the Ford's data instead.

**This is the most common source of confusion when people have multiple vans.** If the app seems to have "forgotten" trips or inventory, the first thing to check is whether you're looking at the right active van.

You switch the active van in the Van tab's Fleet Manager.

---

## The Fleet Manager

The **Fleet Manager** shows all your vans. Each van in the list shows:
- Its custom name and photo
- Key specs (make, model, registration)
- Whether it's currently active

Tapping a van in the Fleet Manager and marking it active makes it the current vehicle. All subsequent recording (drives, check-ins, transactions) will be attributed to it.

---

## Crew — The People (and Pets) in the Van

**Crew members**, called Travellers in the app, are the people and animals travelling with you. Each Traveller has:

- **Name** — what they're called
- **Date of birth** — used for age calculations
- **Role** — Passenger, Driver, Pet, or a custom role
- **Species** — Human (default) or animal species for pets
- **Weight** — included in the van's payload calculation alongside gear
- **Home country** — determines Schengen residency status
- **Photo** — an avatar from your camera roll or a symbol

### Why Crew Weight Matters

Every Traveller's weight contributes to the van's total payload calculation alongside the Manifest inventory. If you have two humans (combined ~160kg), a dog (30kg), and a full manifest, all of that feeds into the payload display. Accurate crew weights give you an accurate total loaded weight.

### Crew and Schengen

The Schengen status card only appears when at least one Traveller has a non-Schengen home country. The app checks each Traveller's `homeCountryCode` against the list of 26 Schengen Zone countries. Travellers from Schengen Zone countries are automatically exempt and don't trigger the counter.

This means if you have a mixed crew — one EU passport, one UK passport — the Schengen tracking activates for the non-EU traveller.

---

## Trips — Belonging to a Van

Every **Trip** (expedition) is linked to a specific van. When you create a new trip, it's associated with whichever van is currently active. The trip remains linked to that van permanently — switching the active van later doesn't move the trip, it just hides it from the current view.

This matters for the **Days on Road** counter. The counter shows days from trips linked to the current active van, not all trips across all vans combined. If you want to see your total travel history across all vehicles, you can use the full map view, which can show drives from all vans.

---

## Multiple Vans in Practice

If you operate two vans sequentially (sold one, bought another), the pattern is:

1. Set up the new van profile
2. Mark it as active
3. Create a new trip under it

Your old van's full history remains intact and accessible via the Fleet Manager — you haven't lost anything, you've just made the new van the focus of the app.

If you operate two vans simultaneously (e.g. a couple with separate vehicles on the same trip), each van has its own profile, and you'd switch active van when using the app for whichever vehicle you're managing at that moment.

---

## Related Articles

- [[Fleet Manager]] — *Adding and managing multiple vans*
- [[Setting Up Your Van Profile]] — *First-time van configuration*
- [[The Manifest System — How Gear Is Organised]] — *Why inventory belongs to a van*
- [[Schengen Tracking Explained]] — *How Traveller nationality affects the counter*
- [[Payload and Weight Management]] — *Crew weight in the payload calculation*
