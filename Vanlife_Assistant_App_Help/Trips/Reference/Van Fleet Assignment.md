---
title: "Van Fleet Assignment"
aliases:
  - "fleet"
  - "fleet assignment"
  - "multiple vans"
  - "van assignment"
  - "fleet manager"
  - "active van"
  - "switch van"
  - "fleet support"
  - "two vans"
  - "second van"
category: "Trips"
type: "Reference"
tags: [help, vanlife-assistant, trips, reference, fleet, van, multi-van, assignment, fleet-manager]
last\_updated: "2026-02-22"
---

# 🚐 Van Fleet Assignment

## Overview
Vanlife Assistant is built for more than just a single vehicle. The data model that underpins every expedition, drive log, and expense has **fleet support built in at its foundation** — each Trip, Drive Log, and financial transaction can be linked to a specific van in your garage.

This article explains how that linking works, what it means for single-van and multi-van users, and where fleet management lives in the app.

---

## How It Works

### The Relationship
Every **Trip** has an optional link to a **Van** in your fleet. This is a persistent, database-level relationship — when the link is set, the app knows exactly which vehicle was used for each chapter of your travels. A single van can have many trips; a trip belongs to at most one van.

### Automatic Assignment
When you create a new expedition, the van assignment happens silently in the background — there's no van picker in the expedition editor. On each app launch, the system scans for any trips that don't yet have a van assigned and links them to your **primary vehicle** automatically. 

For most users — those with a single van — this is completely transparent. Your trips are linked to your van and everything works as expected without any extra steps.

### What "Primary Vehicle" Means
Your primary vehicle is simply your first van — the one created earliest in the app. In the [[Van Fleet Assignment#The Fleet Manager|Fleet Manager]], the **Active Vehicle** badge marks which van is currently selected for your Dashboard, Maintenance tracking, and Drive Recorder. You can switch the active vehicle at any time, and the Trips tab will still show all your expeditions regardless of which van is currently active.

---

## The Fleet Manager

The **Fleet Manager** is your hub for managing multiple vehicles. Find it in the **Van tab → Settings → Fleet Manager**.

Each vehicle appears as a card showing:
* **Photo or icon** — your van's portrait or the custom icon you chose.
* **Make and model** — the vehicle identity at a glance.
* **Odometer** — your current recorded mileage.
* **Fuel level** — percentage remaining.
* **Health status** — a green/orange/red dot reflecting your maintenance task status across the van's service schedule.
* **ACTIVE VEHICLE** badge — shown on whichever van is currently selected.

**Tap a van card** to set it as your active vehicle. The card animates to the top of the list with a spring transition, and the Active badge moves with it.

**Tap the ⋯ menu** on any card for three options: **Edit Details**, **Set Active**, and **Delete Vehicle**.

---

## Adding a Second Vehicle

Tap **Add Another Vehicle** at the bottom of the Fleet Manager. A new van record is created immediately and the editor opens so you can fill in the details — name, make, model, registration, odometer, and a photo or icon.

Once added, the new van lives in your fleet alongside your existing one. Future trips you create will continue to be auto-assigned to your primary van; there is currently no manual trip-to-van picker in the expedition editor.

---

## What Happens If You Delete a Van?

Deleting a van from the Fleet Manager removes the vehicle record and all directly associated data — **maintenance logs, compliance documents, cargo zones, and gallery photos** belonging to that van.

Importantly, **expeditions are not deleted** when their associated van is removed. The trip record survives with its van link cleared, ready to be re-associated if you add a replacement vehicle. Your journey history is never lost due to a vehicle change.

> ⚠️ Deletion is permanent and cannot be undone. If you're retiring a vehicle rather than deleting it, consider simply leaving it in your fleet without setting it as active, so its maintenance history and trip association is preserved for reference.

---

## For Multi-Van Users

If you regularly drive different vehicles — a campervan and a day van, for example, or a van you've just sold and replaced — here's what to know about the current state of fleet support:

* **All trips appear in the Trips tab regardless of van.** The trip list is not filtered by active vehicle, so switching between vans doesn't change which expeditions you see.
* **Drive Logs, fuel entries, and vehicle expenses are linked to a specific van** and filter correctly per vehicle in the Van tab and financial reports.
* **Manual trip-to-van assignment** — selecting a specific van when creating or editing an expedition — is not yet available in the expedition editor. This is a planned feature as fleet support continues to develop.

If you need to separate your expedition history cleanly by vehicle in the meantime, the most reliable approach is to ensure each van has a distinct name, and to note which van each expedition was driven in using the **Notes** field in the expedition editor.

---

## Common Questions

**I only have one van — do I need to think about any of this?**
Not at all. Fleet assignment is entirely invisible if you have a single vehicle. Your trips are linked to your van automatically, and nothing in your workflow changes.

**I added a second van — will my old trips reassign to it?**
No. Existing trips that were already linked to your original van keep that link. Only trips that have no van assignment at all will be auto-linked on the next app launch, and those will go to your primary van (the first one created). To reassign a specific trip to a different van, this would need to be done manually — a feature that is planned for a future update.

**Why can't I choose a van when creating a trip?**
Van-per-trip selection in the expedition editor is on the roadmap but not yet released. In the current version, the link is managed automatically in the background so that single-van users — the vast majority — never have to think about it.

---

## Related Articles
* [[Creating a Trip (Expeditions)|Creating a Trip (Expeditions)]]
* [[The Trips Dashboard]]
* [[Drive Recorder|Drive Recorder]]
* [[Trip States - Future, Active, and Past Expeditions]]
