---
title: "Spots vs Check-ins — What's the Difference?"
aliases:
  - "spots vs check-ins"
  - "spot or check-in"
  - "what's the difference spots checkins"
  - "spots checkins difference"
  - "potential vs actual"
  - "spots vs camps"
  - "spot check-in confusion"
category: "Concepts"
type: "Reference"
tags: [help, vanlife-assistant, concepts, spots, check-ins, difference, reference]
last_updated: "2026-03-08"
---

# 📍 Spots vs Check-ins — What's the Difference?

This is the most common point of confusion in Vanlife Assistant, and it's worth clearing up properly.

**A Spot is a place you might go. A check-in is a place you actually went.**

---

## The One-Line Explanation

| | Spot | Check-in |
|---|---|---|
| **What it is** | A reference entry in the location database | A personal travel record |
| **When it's created** | Before (or without) visiting | After visiting |
| **Does it have a date?** | No | Yes |
| **Does it have a journal entry?** | No | Yes |
| **Does it have your weather?** | No | Yes — captured at visit time |
| **Does it count toward stats?** | No | Yes |
| **Where it lives** | The Spots Vault (SQLite, local-only) | Your travel history (iCloud-synced) |
| **Who creates it?** | You, or a CSV dataset you import | You (or the Voice Assistant) |

---

## What a Spot Is

A **Spot** is an entry in the **Spots Vault** — the app's offline location database. Think of it like a saved pin on a map, but with structured information: type, services, vehicle restrictions, ratings, and your own notes.

Spots come from two sources:

**Your own "My Places" pack** — anything you add yourself by tapping and holding on the map, or saving a location while browsing. These are personal bookmarks: potential wild camps you read about, free aires noted from a guidebook, service points you want to remember.

**Imported packs** — CSV datasets of third-party locations. These might be community-sourced wild camp lists, aire databases, or any structured location file you can import via the CSV Wizard. A single pack can contain hundreds of thousands of locations.

Spots live entirely on your device — they are never uploaded to iCloud. If you get a new phone, you import your packs again. This is intentional: large location datasets would be impractical to cloud-sync, and your location data stays private.

A Spot on its own has no meaning in your travel history. The Schengen counter ignores it. The Visited Countries card ignores it. The All-Time Records don't know it exists. It's purely reference information for planning and scouting.

→ See [[The Spots Vault]]

---

## What a Check-in Is

A **check-in** is a record in your personal travel history. It's what you create *after* you've stopped somewhere — the confirmation that you were there.

Check-ins live in iCloud alongside your trips and drives. They have timestamps, weather snapshots, hero photos, journal notes, and GPS coordinates. They count toward your Schengen total, your country list, your all-time records, and every travel statistic in the app.

A check-in without a Spot is perfectly normal — most check-ins are created directly, without the location having been in the Spots database beforehand. You're simply recording where you slept.

→ See [[Check-ins — The Engine of the Travel Journal]]

---

## The Same Place, Seen Two Ways

Imagine you find a great wild camp spot. Here's how the two systems relate:

**Before your visit:** You might save it in My Places as a Spot — a pin on the map with notes ("great views, tight track, max 6m").

**After your visit:** You create a check-in. You record what it was like: the overnight rating, whether there were facilities, the weather, a photo, your notes. This goes into your travel history.

If you've saved a location in My Places before visiting, the app can **promote** that Spot into a check-in when you're ready — pre-filling the form with the Spot's details so you don't have to type them again.

---

## Why the Distinction Matters

The separation exists because planning and history serve different purposes:

**Planning** needs to be lightweight, searchable across thousands of locations, and filterable by vehicle size, facilities, and type — without slowing down the rest of the app. That's what SQLite is built for.

**History** needs to be richly structured, personally meaningful, and synced across your devices — with dates, weather, photos, and connections to trips, spending, and statistics. That's what the SwiftData + iCloud system is built for.

Mixing them would make both worse. Your travel journal shouldn't need to be fast-queried against 200,000 campsites. Your campsite database shouldn't be cluttered with your personal notes and memories.

---

## Campsites: Type or Database?

One more distinction worth making: the word "campsite" has two meanings in the app.

A **check-in type** called "Campsite" is one of six place types you can assign to any check-in (along with Wild camp, Free aire, Paid aire, Accommodation, and Services Only). This is your classification of what kind of place it was.

A **spot in the database** *of type* "Campsite" is a location record in the Spots Vault that describes a specific campsite, with its GPS coordinates and facilities.

These are related concepts but separate things. A check-in of type "Campsite" doesn't have to have come from a Spot in the Spots database. And a Spot of type "Campsite" in the database has no travel history until you've visited it and created a check-in.

---

## Quick Reference

**Use the Spots Vault when:**
- You want to browse locations before visiting
- You're building a route and scouting potential stops
- You want to import a dataset of campsites, aires, or wild camp locations
- You want to save a location for future reference

**Create a check-in when:**
- You've arrived somewhere and want to log the visit
- You want the location to count toward your statistics
- You want to record weather, photos, ratings, and notes
- You want it to appear in your Trips timeline

---

## Related Articles

- [[Check-ins — The Engine of the Travel Journal]] — *The full concept of check-ins*
- [[The Spots Vault]] — *How the location database works*
- [[How to create a Check-in]] — *Step-by-step guide*
- [[Spot Detail Reconnaissance]] — *Scouting a Spot before you visit*
- [[The Trip Planner & Route Builder]] — *Planning routes using Spots*
