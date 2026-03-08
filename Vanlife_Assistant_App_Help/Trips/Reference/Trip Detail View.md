---
title: "Trip Detail View"
aliases:
  - "trip detail"
  - "expedition detail"
  - "travel feed"
  - "trip statistics"
  - "trip map"
  - "smart notebook"
  - "trip photos"
  - "trip spending"
  - "spending sheet"
  - "trip journal"
category: "Trips"
type: "Reference"
tags: [help, vanlife-assistant, trips, reference, expedition, detail, feed, statistics, map, photos, spending, journal]
last\_updated: "2026-02-22"
---

# 🗺️ Trip Detail View

## Overview
Tap into any expedition in your [[Creating a Trip (Expeditions)|Trip Manager]] and you land in the **Trip Detail View** — the richest screen in the entire app. It's part interactive map, part living journal, part financial ledger, and part photo album, all woven together into a single scrollable view that tells the full story of one specific chapter of your vanlife.

Everything here is scoped entirely to the expedition you're viewing. Statistics, check-ins, driving data, spending, and photos are all filtered to this trip alone.

---

## The Sticky Map Header

The top portion of the screen is a live **interactive map** of your entire expedition — every check-in pin, every drive route, all rendered together.

The map starts in **globe mode**, giving you a dramatic overview of your route from space. The moment you begin scrolling down or touch the map, it transitions smoothly into a flat **top-down view** and zooms to fit all your pins with comfortable padding.

As you scroll through the Travel Feed below, the map stays pinned to the top of the screen and **follows your reading position** — as each check-in card scrolls into the focal zone, the map pans and highlights the corresponding pin. You always know exactly where on the planet you were when that memory was made. A gentle haptic pulse accompanies each map focus shift.

The header is **elastic**: pull down from the top and the map stretches to fill more of your screen. Scroll up and it compresses down to a compact strip, maximising reading space for the Feed below.

---

## The Trip Header Card

Directly below the map sits the expedition's identity card, containing:

* **Trip name and date range** — exactly as you set them in the expedition editor.
* **Country count** — the total number of countries visited, updated live as you add check-ins and the [[Border Crossing Detection|Border Crossing Detection]] engine logs transitions.
* **Flag ribbon** — a flowing row of flag emoji for every country you visited, in the order they were detected.
* **📷 Photo button** — opens the [[Trip Detail View#Smart Notebook (Photo Gallery)|Smart Notebook]] to browse every photo taken during the trip.
* **Spending button & total** — tapping "Spending" opens the full [[Trip Detail View#The Spending Sheet|Spending Sheet]]; the running total is always visible at a glance on the right.

---

## Trip Statistics

Below the header card, a statistics panel gives you the headline numbers for the whole expedition at a glance, split across two areas:

### Summary Grid
Four tiles arranged in a 2×2 grid:

| Tile          | What it shows                                                          |
| ------------- | ---------------------------------------------------------------------- |
| **Days**      | Total calendar days from start date to end date (or today, if ongoing) |
| **Stops**     | Total number of distinct stopping points                               |
| **Countries** | Countries visited, as detected by the border crossing engine           |
| **Check-ins** | Total [[Checkins and Timeline|Check-ins]] saved to this expedition   |

### Expedition Driving
If you used the [[Drive Recorder|Drive Recorder]] during this trip, three driving stats appear below the grid:

* 🚐 **Distance** — total kilometres or miles driven (respects your unit setting).
* ↗ **Ascent** — total elevation gained across all drives.
* ↘ **Descent** — total elevation lost across all drives.

Beneath these, the full **[[Elevation Charts|Expedition Profile]]** chart renders — the continuous elevation-over-distance silhouette stitched together from every drive.

---

## The Travel Feed

The heart of the view. The **Travel Feed** is a chronological timeline of everything that happened on your trip, rendered as a vertical scroll of large, photo-first cards connected by a slim timeline line.

### Check-in Cards
Each [[Checkins and Timeline|Check-in]] appears as a bold card showing:
* **Hero photo** — full-width image, filling a square frame.
* **Place type icon and name** — overlaid on the image in the bottom-left corner.
* **Location name** — shown beneath the place name.
* **Star rating** — shown as a pill in the bottom-right corner of the photo, if rated.
* **Journal notes** — if you wrote notes, they appear directly below the photo in a clean text block.

Tap any card to open the full [[Check-in Detail View|Check-in Detail View]]. Long-press for a context menu with **Edit** and **Delete** options.

### Drive Connectors
Between check-in cards, slim connector capsules appear on the timeline whenever a drive was recorded between two stops. These show:
* The **distance driven** between those two check-ins.
* The **ascent** for that segment, if it was significant.
* A **flag transition** arrow if you crossed a border between those two stops.

These connectors give the feed its sense of motion — you can literally see the journey unfold as you scroll.

### Sort Order
A small sort toggle sits above the Feed. Tap it to switch between **Newest First** and **Oldest First**. Your preference is remembered until you change it. Ascending (oldest first) reads like a diary; descending (newest first) puts your most recent memories at the top.

---

## Smart Notebook (Photo Gallery)

Tap the **📷 photo icon** in the Trip Header Card to open the **Smart Notebook** — a full photo gallery of every image in your Camera Roll whose timestamp falls within this expedition's date range.

The gallery pulls directly from your iPhone's Photos library (with your permission). You don't need to manually import anything — if you took a photo while the trip was active, it appears here automatically.

Tapping any photo opens a **full-screen viewer** where you can:
* Swipe through all trip photos in sequence.
* See which **check-in** this photo is already linked to, if any.
* Tap **"Add Check-in from this photo"** to instantly launch the [[The Magic of Check-ins - Automated Journaling|Vision AI check-in wizard]] with this photo as the hero image — the fastest way to turn an untagged memory into a proper journal entry.

> **Privacy note:** Your photos never leave your device. The Smart Notebook reads directly from your local Photos library and stores nothing externally.

---

## The Floating + Button

For active and past trips, a floating **⊕ button** sits in the bottom-right corner of the screen at all times. Tap it to launch the [[How to create a Check-in|Check-in Creation Wizard]] and add a new stop to this expedition without having to navigate back to the Dashboard. It's your quick-add shortcut, always within thumb's reach.

> The floating button is intentionally hidden for **upcoming** trips — instead, the detail view shows the [[Creating a Trip (Expeditions)|Expedition Wizard]] planning view for future trips.

---

## The Spending Sheet

Tap **Spending** in the Trip Header Card to open a dedicated financial summary for the expedition. This sheet pulls all transactions from your [[Adding Transactions|Money Ledger]] whose dates fall within the trip's date range.

At the top, a **summary header** shows:
* Total **income** recorded during the trip.
* Total **expenses** recorded during the trip.
* **Net** (income minus expenses).

Below the summary, every transaction is listed grouped by day, with a daily sub-total on the right. Tap any transaction to edit it directly without leaving the context of your trip.

---

## Common Questions

**Why does the map start as a globe?**
The globe view is a deliberate, dramatic moment — seeing your entire route from orbit before zooming in gives a sense of the scale of what you've done. It transitions automatically as soon as you start scrolling or interacting with the map.

**My Trip Statistics show different country counts from the main Dashboard.**
The Detail View filters strictly to this expedition's date range. The Dashboard cards may aggregate all-time data. Both counts are correct — they're just answering different questions.

**Photos aren't appearing in the Smart Notebook.**
Check that Vanlife Assistant has **Photos access** in your iPhone Settings → Privacy & Security → Photos. If access is set to "Selected Photos", only the specific photos you've granted access to will appear.

**The Travel Feed is empty even though I have check-ins.**
Check-ins must be linked to this specific expedition to appear in its feed. If you added check-ins while a different trip was active, they'll appear in that trip's feed instead. You can reassign them by editing the check-in and selecting the correct expedition.

---

## Related Articles
* [[Creating a Trip (Expeditions)|Creating a Trip (Expeditions)]]
* [[Checkins and Timeline|Check-ins and Timeline]]
* [[The Magic of Check-ins - Automated Journaling]]
* [[Check-in Detail View|Check-in Detail View]]
* [[Elevation Charts|Elevation Charts (Expedition Profile)]]
* [[The Compass and Records Card]]
* [[Drive Recorder|Drive Recorder]]
* [[Border Crossing Detection|Border Crossing Detection]]
