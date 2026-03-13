---
title: "The Drive Recorder"
aliases:
  - "drive recorder"
  - "live drive"
  - "record drive"
  - "route recording"
  - "gps tracking"
  - "start drive"
  - "end drive"
  - "pre-flight checklist"
  - "pre flight"
  - "elevation profile"
  - "live map"
  - "tracking mode"
  - "balanced tracking"
  - "high accuracy"
  - "breadcrumb"
category: "Van"
type: "Reference"
tags: [help, vanlife-assistant, van, drive, recorder, gps, tracking, route, live-map, reference]
last_updated: "2026-02-23"
---

# 🛣️ The Drive Recorder

## Overview

The Drive Recorder captures your route as you drive — building a live GPS track with elevation data, distance, and altitude gain. Every drive is saved to [[Drive_History|Drive History]] where you can replay it, view it on a map, and see it contribute to your lifetime stats. It's how the app knows where you've been, how far you've driven, and what the terrain looked like along the way.

---

## Opening the Drive Recorder

Tap **Drive Recorder** on the Van tab tools grid (the pink steering wheel card). The Live Drive View opens as a full-screen sheet. It can also be opened from the Trips tab.

---

## The Pre-Flight Checklist

Before a drive, you'll be prompted with the **Pre-Flight Checklist** — a quick rundown of things to check before moving the van. This runs automatically when you open the Drive Recorder.

### Smart Checks

The checklist includes contextual "smart" checks that appear based on your setup:

- **Handbrake off** — Always shown
- **Doors secured** — Always shown
- **Lights on** — Shown if it's after 8pm or before 6am
- **Pets secured** — Shown if you have any pet crew members in [[The_Crew|The Crew]]
- **Roof vents closed** — Shown if you have a Smart Van accessory configured as a roof vent

Tick each check as you go. The checklist won't block you from starting — it's a reminder, not a gate. Tap **All Clear — Let's Go** once all checks are ticked (or **Skip** to proceed without completing them).

### Custom Checks

You can add your own pre-flight items — anything specific to your van or routine. In the Pre-Flight Checklist sheet, tap **Edit** in the toolbar, then **+** to add a custom check. Give it a name and an icon. Custom checks persist across drives and appear every time you open the checklist.

Edit or reorder custom checks by entering Edit mode. Swipe left on any custom item to delete it.

The last completed pre-flight date is saved to your van profile and shown in the Van editor.

---

## The Live Drive Screen

Once you dismiss the pre-flight checklist, the Live Drive Recorder screen shows:

### Recording Controls

The large button in the top-right toggles recording:

**Start Drive** — Arms the recorder. The button turns red showing "End Drive". The status changes to "Armed" → "Recording" as the first GPS fix comes in.

**End Drive** — Stops recording and saves the drive log. A summary of the drive is saved to Drive History.

### Status Indicators

- **Recording** (red dot) — GPS data is actively being captured, either at high accuracy or in breadcrumb mode
- **Armed** (orange) — Recording intent is active but GPS has not yet acquired a first fix (typically a brief moment after tapping Start Drive)
- **Standby** (grey) — Not recording

### Live Stats

Three stat cells update in real time:
- **ALT** — Current altitude in metres
- **DIST** — Distance driven so far in km
- **CLIMB** — Total ascent accumulated in metres

### Live Map

A map shows your route in real time with your current position. Choose between **Standard**, **Satellite**, and **Hybrid** map styles using the picker above the map. The map centres on your position as you move.

Route segments are colour-coded by GPS tracking quality:
- **Green** — High accuracy GPS fix
- **Orange** — Breadcrumb or lower-accuracy segment
- **Red** — Very low accuracy or signal interruption

### Elevation Profile

Below the map, a chart shows your elevation profile for the current drive — altitude on the Y axis, distance on the X axis. The chart fills in as you drive. Segments are colour-coded to match the map (green = high accuracy, orange = breadcrumb).

---

## Tracking Modes

The recorder automatically adapts its GPS precision based on your movement and battery considerations. Three modes exist:

**High Accuracy** — Full GPS precision, more battery use. Used when actively driving.

**Breadcrumb** — Periodic location updates, lower battery use. Used during extended stationary periods (parked for a meal stop, etc.).

**Stopped** — Recorder is idle.

### Tracking Preference Setting

In the Live Drive screen, you can set a tracking preference that influences how the recorder balances quality vs battery:

**Balanced** (recommended) — Switches intelligently between high accuracy and breadcrumb.

**High Accuracy** — Always uses maximum precision. Best track quality, highest battery use. Good for challenging terrain where the route matters.

**Breadcrumb Only** — Uses periodic low-frequency updates throughout. Very battery-efficient for long drives where you just want to capture the general route.

The preference is saved and applied to all future drives.

---

## Keeping Screen On

The Drive Recorder requests that the screen stays on while recording. This prevents the phone from sleeping and interrupting the GPS session during a drive. You can override this in iOS Settings → Display & Brightness if needed.

---

## Saving a Drive

Tap **End Drive**. The app stops recording, processes the track, and saves it as a DriveLog to [[Drive_History|Drive History]]. Elevation data is fetched for the route automatically.

If you close the app during a recording, the drive continues in the background using iOS background location updates. It saves when you return to the app and tap End Drive.

---

## Related Articles
- [[Drive_History|Drive History]]
- [[Van_Profile_and_Setup|Setting Up Your Van Profile]]
- [[The_Crew|The Crew]]
