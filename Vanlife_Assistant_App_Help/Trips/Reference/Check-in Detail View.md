---
title: "Check-in Detail View"
aliases:
  - "check-in detail"
  - "checkin detail"
  - "check in detail"
  - "stop detail"
  - "travel day"
  - "daily elevation"
  - "daily drive stats"
  - "gallery check-in"
  - "set as cover"
  - "open in maps"
category: "Trips"
type: "Reference"
tags: [help, vanlife-assistant, trips, reference, check-in, detail, journal, gallery, map, elevation, travel-day, postcard]
last\_updated: "2026-02-22"
---

# 📍 Check-in Detail View

## Overview
Tap any check-in card in the [[Trip Detail View|Travel Feed]] and the full **Check-in Detail View** opens — a rich, scrollable record of that single stop. Hero photo, location identity, weather snapshot, journal notes, photo gallery, and the complete driving story of that specific day are all collected in one place, scoped entirely to this one moment in your vanlife.

---

## The Hero Photo

The view opens with a **full-bleed hero photograph** that fills the screen from edge to edge, bleeding underneath the navigation bar with a subtle parallax effect as you scroll. A dark gradient rises from the bottom to ensure the title text above it is always readable regardless of the photo's colours.

If the check-in has no photo attached, the hero area renders as a soft blue-to-purple gradient — the view always looks intentional, never broken.

---

## The Header: Identity at a Glance

Directly beneath the hero image, a compact header assembles everything that identifies the stop:

* **Title** — displayed large and bold. Tap the pencil icon in the toolbar to edit it.
* **Star rating** — shown as a warm yellow pill in the top-right of the header, if you rated the spot.
* **Flag & Date** — your country flag emoji sits beside the full date and time of the check-in.
* **Weather snapshot** — if weather data is attached, a blue pill shows the temperature, the condition icon, and a plain-English description (e.g., "☁️ 12°C · Overcast"). Weather is loaded from the snapshot captured at creation time, or fetched from a historical weather service if the data wasn't stored.
* **Altitude** — displayed below the weather pill as a mountain icon with height in metres or feet, depending on your unit preference.
* **Location name & Open in Maps** — the reverse-geocoded place name sits on the left with a pin icon. On the right, an **Open in Maps** link hands the exact coordinates to Apple Maps, pre-labelled with your check-in title, ready for directions or sharing.
* **Tags** — if you added context tags to the check-in, they appear as a horizontal scrolling row of subtle grey capsules beneath the location line.

---

## Services Badges

Below the header, a flowing grid of icon-and-label tiles shows the **place type and every service** recorded at this stop — all in one glance.

The first tile always shows the [[Checkins and Timeline|place type]] (Wild Camp, Free Aire, Paid Aire, Campsite, or Unspecified) in its map colour. Every enabled service follows: Electricity (with a distinction between free and paid), Water, Toilets, Showers, Laundry, Grey Waste, Black Waste, and Trash. Only services you recorded appear — the grid never shows empty slots.

---

## Journal

If you wrote notes on the check-in, a **Journal** section appears below the services — a card styled like a notebook page, with your text displayed at a comfortable reading size with generous line spacing.

Long entries collapse to **four lines** by default. Tap **Read More** to expand the full entry in place, and **Read Less** to fold it back. The transition is animated.

---

## Gallery

Every photo in your Camera Roll that was taken near this stop — in time and location — is automatically gathered into a **Gallery** grid below the journal. The app uses a scoring algorithm that weighs both how close a photo was taken to the check-in's coordinates and how close in time it was captured, so the right photos find their way here without you having to do anything.

The grid shows up to **9 photos** at a time. If there are more, a **Show All (n)** button expands the grid to display every matched photo.

**Tap any photo** to open it in the full-screen viewer, where you can swipe through the entire gallery in sequence.

**Long-press any photo** for a context menu with two powerful actions:

* **Set as Cover** — makes this photo the hero image for the check-in, replacing whatever was there before. The view updates instantly.
* **Set as check-in location** — reads the GPS metadata embedded in the photo and reverse-geocodes it into a proper place name and country code, then updates the check-in's location to match exactly where the camera was when you took the shot. Ideal for correcting imprecise check-in locations after the fact.

---

## Travel Day

If you used the [[Drive\_Recorder|Drive Recorder]] on the same calendar day as this check-in, a **Travel Day** section appears at the bottom of the view. This is the per-stop equivalent of the expedition-level [[Elevation\_Charts|Expedition Profile]] — everything scoped to just this one day's driving.

### Drive Stats Bar
A horizontally scrollable strip of four statistics covering all drives recorded that day:

| Stat            | What it shows                                               |
| --------------- | ----------------------------------------------------------- |
| 🚐 **Distance** | Total kilometres or miles driven on this calendar day       |
| ↗ **Ascent**    | Total elevation gained, shown in green                      |
| ↘ **Descent**   | Total elevation lost, shown in purple                       |
| ⏱ **Duration**  | Total time behind the wheel, formatted as hours and minutes |

### Embedded Map
Below the stats, a **live map** renders the day's full drive route with the check-in pin highlighted at the focus point. The map adjusts its region to frame the route and the stop together with comfortable padding.

The map style can be switched using the **map icon button** in the map's corner — tap it to choose between **Standard**, **Hybrid**, and **Satellite** views. This preference is saved and applies to all embedded maps in the app.

### Day Elevation Profile
If drive route data is available for that day, a **mini elevation chart** appears below the map — a cyan-to-indigo gradient silhouette of the terrain you drove through, plotted against distance. It uses the same smoothed GPS data as the expedition-level chart, just filtered to this single day.

> **No Travel Day section?** It only appears when at least one Drive Log was recorded on the same calendar day as the check-in, or when the check-in has valid GPS coordinates. If you were stationary or parked that day without recording a drive, this section stays hidden.

---

## Toolbar Actions

Two buttons sit in the top-right toolbar:

* **✏️ Edit** (pencil circle) — opens the full [[Check-in Services and Journaling|Check-in Editor]] to change the title, place type, notes, services, rating, or location.
* **↑ Share** (upload arrow) — opens the [[Postcard Generator]] pre-loaded with this check-in's hero photo and all its metadata. This button only appears when a hero photo is attached.

---

## Common Questions

**The Gallery is empty even though I took photos at this spot.**
The gallery pulls from your iPhone's Camera Roll using location and timestamp matching. For photos to appear, the app needs **Photos access** — check **iPhone Settings → Privacy & Security → Photos** and ensure Vanlife Assistant has access. Also confirm that your camera had Location Services enabled when the photos were taken, as the scoring algorithm relies on GPS coordinates embedded in the image.

**The weather pill isn't showing.**
Weather data is attached at creation time by the [[The Magic of Check-ins - Automated Journaling|photo-first check-in wizard]]. If you created the check-in manually without a photo, weather may not have been captured. The app will attempt to load historical weather when you open the detail view — this requires an internet connection and may take a moment.

**The Travel Day section is missing.**
This section only renders when Drive Logs exist for the same calendar day as the check-in. Make sure you had the [[Drive\_Recorder|Drive Recorder]] running during your drive to that stop. Drives recorded on a different day won't appear here even if they're part of the same expedition.

**I set a photo as the cover but the hero image didn't update.**
Try closing and reopening the Check-in Detail View. The hero match is saved to the database immediately, but the photo loader occasionally needs a fresh load to pick up the change.

---

## Related Articles
* [[Checkins\_and\_Timeline|Check-ins and Timeline]]
* [[Check-in Services and Journaling]]
* [[The Magic of Check-ins - Automated Journaling]]
* [[Postcard Generator]]
* [[Drive\_Recorder|Drive Recorder]]
* [[Elevation\_Charts|Elevation Charts]]
* [[Trip Detail View]]
