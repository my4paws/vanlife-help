---
title: "Pre-Flight Checklist"
aliases:
  - "pre-flight"
  - "preflight"
  - "checklist"
  - "safety checks"
  - "ready to drive"
  - "all systems go"
  - "safety interlock"
  - "homekit sensors"
  - "pre flight"
category: "Trips"
type: "Reference"
tags: [help, vanlife-assistant, trips, reference, pre-flight, checklist, safety, homekit, driving, interlock, sensors]
last\_updated: "2026-02-22"
---

# ✅ Pre-Flight Checklist

## Overview

Every pilot runs through a checklist before leaving the ground. Vanlifers should too.

The **Pre-Flight Checklist** is a safety ritual built into the heart of the Trips Dashboard. Before you pull away from a spot, it gives you a structured, satisfying moment to confirm your van is actually ready to move—roof vent closed, step retracted, gas off, pets watered. When everything is ticked, the app gives you an unmistakeable green **ALL SYSTEMS GO** and stamps your van as cleared to drive for the next two hours.

It's the antidote to that creeping 30-minutes-down-the-motorway feeling of _"did I close the skylight?"_

---

## Finding It

The checklist lives on the **Journey Card** on your [[The Trips Dashboard|Trips Dashboard]]. Look for the small pill-shaped badge in the corner of the card:

- **Orange · "Pre-Flight"** — Checks are due. Tap to open the checklist.
- **Green · "Ready ✓"** — You've completed your checks within the last two hours. You're good to go.

Tapping either state opens the Pre-Flight sheet.

---

## The Two Sections

### 🧠 Smart Safety Checks

These are generated automatically by the app each time you open the checklist, based on live conditions at that exact moment. You can't add or delete them—they appear when they're relevant and disappear when they're not.

|Smart Check|When it appears|
|---|---|
|🐾 **Pets Secured & Watered**|When your crew includes a non-human [[Settings/Reference/Managing The Crew and Fleet Manager|Traveller]] (a dog, cat, or other animal added to Settings)|
|💡 **Exterior Lights Check**|After 8pm or before 6am—a reminder to verify your lights before driving in the dark|
|🔌 **[Sensor Name] Secured**|For every HomeKit contact sensor or door sensor connected via [[Van/SmartVan/SmartVan_Index|SmartVan]]—the app reads the live state and pre-ticks it if already closed|

The HomeKit checks are the real magic. If your awning sensor reports **Open**, the checklist shows it un-ticked and highlighted in orange so it demands attention before you can complete the list. If it's already **Closed**, it arrives pre-ticked—no extra taps needed.

### 🚐 Vehicle Checks

These are your personalised, persistent checks—the van-specific things only you know to look for. They're saved to your van's profile and survive between sessions.

**Out of the box, your van starts with five sensible defaults:**

- Gas / Propane Off
- Skylights Closed
- Step Retracted
- Fridge Locked
- Windows Secured

You can edit this list to match your exact setup.

---

## Customising Your Checklist

Tap **Edit** in the top-right corner of the checklist sheet to enter edit mode.

- **Add a check:** Tap _Add New Check Item_, give it a name (e.g. "Solar Panel Tilted Down"), and pick an icon from the full icon library.
- **Edit a check:** Tap any existing item to rename it or swap its icon.
- **Reorder:** Drag items into the order you'd naturally walk around the van.
- **Delete:** Swipe left on any item to remove it.

Tap **Done** to return to check mode. Your customised list is saved permanently to your van.

---

## Completing the Checks

Work through the list, tapping each item to mark it done. Each check gives a satisfying haptic pulse as it ticks over.

- **Smart checks** tick in your accent colour when confirmed.
- **Vehicle checks** tick in green.

Once every single item is ticked, the footer button transforms from the greyed-out **COMPLETE CHECKS** into a glowing green **ALL SYSTEMS GO ✓**. Tap it to seal the checklist—the app records the time, the Journey Card badge turns green, and you're cleared to drive.

---

## The Two-Hour Ready Window

A completed checklist doesn't last forever—it expires after **two hours**. This is intentional: if you ran your checks, then spent three hours at a café, conditions may have changed. The app nudges you to run through it again before setting off.

The clock resets each time you tap ALL SYSTEMS GO, so if you complete the list and drive immediately, you'll comfortably stay in the green for any normal drive.

### Parking Reset

There's also a **hard reset** that triggers the moment you use the van's Parked function. If you mark the van as parked _after_ your last check, the Ready state clears immediately—the app knows you're stationary and will need to re-verify everything fresh when you're ready to leave again.

> **Planning ahead?** You can actually run your Pre-Flight checks while still parked, then tap ALL SYSTEMS GO to prime the van. As long as you drive away within two hours, the Ready state will still be valid. The check only resets if parking was _recorded after_ your last completed checklist.

---

## Safety Interlock (SmartVan)

If you use the [[Van/SmartVan/SmartVan_Index|SmartVan]] integration to switch your van into **Driving mode** via the mode selector, the app performs a last-chance sensor scan before the mode switches. If any connected **contact sensor or door sensor** is still reporting as open at that moment, a **Safety Interlock** alert fires, listing every open sensor by name.

You're presented with two options:

- **Cancel** — Go back and physically close the flagged items.
- **Ignore & Drive** — Acknowledge the warning and switch to Driving mode anyway (your choice, your responsibility).

This is a safety net, not a hard block — you're always in control. But if your roof vent sensor has ever saved you from a motorway regret, you'll know exactly why it's there.

---

## Common Questions

**I don't use HomeKit — will Smart Checks still appear?** Yes. The HomeKit sensor rows only appear if you have a SmartVan setup connected. The **Pets** and **Night Lights** checks are completely independent and will still appear when relevant regardless of your smart home setup.

**Can I turn the Pre-Flight Checklist off entirely?** The checklist is always available, but nothing forces you to use it. If you prefer not to, simply ignore the orange Pre-Flight pill on the Journey Card. It will never block you from using any other part of the app.

**My HomeKit sensors aren't showing up in the Smart Checks.** The app reads sensor data from your SmartVan HomeKit home at the moment you open the checklist. If sensors aren't appearing, check that your [[Van/SmartVan/SmartVan_Index|SmartVan]] integration is connected and that the relevant accessories are contact sensors or door/garage sensors — other sensor types (motion, temperature, etc.) are not included in the pre-flight scan.

---

## Related Articles

- [[The Trips Dashboard]]
- [[Trips/Reference/Drive Recorder|Drive Recorder]]
- [[Van/SmartVan/SmartVan_Index|SmartVan]]