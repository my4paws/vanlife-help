---
title: "Cameras"
aliases:
  - "cameras"
  - "cctv"
  - "cctv monitor"
  - "cctv grid"
  - "live feed"
  - "camera feed"
  - "camera view"
  - "full screen camera"
  - "security camera"
  - "push to talk"
  - "talkback"
  - "two-way audio"
  - "camera audio"
  - "mute camera"
  - "spotlight camera"
  - "camera spotlight"
  - "indoor camera"
  - "outdoor camera"
  - "camera location"
  - "motion camera"
  - "no signal"
  - "camera offline"
  - "zoom camera"
category: "SmartVan"
type: "Reference"
tags: [help, vanlife-assistant, smartvan, cameras, cctv, live, feed, reference]
last_updated: "2026-02-23"
---

# 📷 Cameras

## Overview

Any HomeKit camera in your van appears in Smart Van's dedicated camera section on the dashboard. You can view all feeds simultaneously in a CCTV grid, open individual cameras full-screen, and (if your camera supports it) listen in, spotlight, and talk back. Cameras are also treated as security accessories on their room tiles, with motion state displayed according to the van's current mode.

---

## Camera Feeds on the Dashboard

When at least one HomeKit camera is set up, a **CCTV Live Feeds** section appears on the Smart Van dashboard above the scenes carousel. It shows a horizontal scrolling row of preview cards — one per camera:

- A live video thumbnail (16:9, 280×160pt, rounded corners)
- A green live dot and the camera's name below
- A "No Signal" overlay if the camera stream fails or the accessory is offline

Streams auto-stop when the app goes to background to preserve battery and bandwidth. Returning to the dashboard restarts them.

**Tap any preview card** to open that camera full-screen.

**Tap the "CCTV Live Feeds" header button** (the grid icon) to open the [[#CCTV Grid View]] showing all cameras simultaneously.

---

## CCTV Grid View

The CCTV Grid opens as a full-screen sheet over a black background. All cameras are shown in a 2-column scrolling grid, each in a 16:9 aspect ratio with its name and live dot below.

- Streams are active for all visible cameras simultaneously
- Tap any camera in the grid to open it [[#Full-Screen Camera View|full-screen]]
- Tap the ✕ in the top-right to dismiss the grid

This is the closest thing to a traditional security monitor view — useful for a quick scan of all angles from a single screen.

---

## Full-Screen Camera View

Tapping any camera opens a full-screen immersive view over a black background. The feed scales to fill the screen.

### Pinch-to-Zoom
Pinch to zoom in (up to 5× digital zoom). Once zoomed, drag to pan around the frame. Pinch back to 1× to return to the default view. Zoom resets to 1× if you pinch below the minimum threshold.

### Controls Bar
A set of circular icon buttons in the bottom-right of the screen:

**Indoor/Outdoor Toggle** (house or tree icon) — marks this camera as indoor or outdoor. This affects how motion events are handled: outdoor cameras always report motion to the dashboard and to Van Brain automations. Indoor cameras only report motion when the van is in **Sentry Mode** — in all other modes, indoor camera motion is suppressed entirely to avoid false alarms when you're moving around inside. The setting is saved per camera. See [[#Motion Filtering]] below.

**Spotlight Toggle** (lightbulb icon) — visible only if the camera accessory has a linked Lightbulb service (e.g. a floodlight camera with an integrated spotlight). Tapping toggles the spotlight on and off. The icon fills yellow when the spotlight is on.

**Audio Toggle** (speaker icon) — mutes or unmutes incoming audio from the camera. Starts muted by default. When unmuted, the camera's audio stream plays through your phone's speaker. The icon shows a speaker with waves when unmuted and a crossed-out speaker when muted.

**Push-to-Talk button** (microphone icon) — press and hold to talk. This is not a tap — it uses a hold gesture so you release to stop talking:
- Press: microphone activates, the button pulses red, a status dot in the bottom-left turns orange and pulses
- Release: microphone deactivates
Audio is routed bidirectionally during talk (your voice → camera speaker, camera mic → your phone). The session status badge in the bottom-left shows the camera name and a red dot normally; it pulses orange while you're talking.

### Camera Name Badge
In the bottom-left of the full-screen view, a badge shows the camera's name and a status dot (red = live stream, orange pulsing = currently talking). This confirms which camera you're viewing.

### Closing
Tap the ✕ button in the top-right to close the full-screen view. The CCTV carousel on the dashboard refreshes its streams when you return.

---

## Motion Filtering

Smart Van applies a filter to indoor camera motion events to prevent false alarms:

- **Outdoor cameras** — motion always triggers alerts, tile state changes, and Van Brain automations
- **Indoor cameras** — motion is completely ignored unless the van is in **Sentry Mode**. In Sentry Mode, all camera motion (indoor and outdoor) is treated as active. In Camped, Sleep, Stealth, Driving, or any custom mode, indoor camera motion is suppressed.

To mark a camera as indoor or outdoor, open it full-screen and tap the house/tree toggle button. The setting persists across sessions.

---

## No Signal

If a camera stream fails to start or the accessory becomes unreachable:

- The preview card on the dashboard shows a "No Signal" overlay with a slashed camera icon
- The full-screen view shows the same overlay over a dimmed background
- Streams retry automatically if the accessory comes back online

If a camera consistently fails to connect, check it in the Apple Home app to confirm it's reachable.

---

## Cameras as Security Tiles

In addition to the dedicated CCTV section, cameras appear as tiles in their assigned room card under the **Security** type group. The tile shows the camera's motion state (Clear or Motion) and, if the camera has a spotlight, a small power indicator. The tile background tints yellow when the spotlight is on.

Motion state on the tile respects the same indoor/outdoor filtering as described above.

---

## Related Articles
- [[Rooms_and_Devices|Rooms and Devices]]
- [[SmartVan_Dashboard|The Smart Van Dashboard]]
- [[Van_Modes|Van Modes]]
- [[Van_Brain|The Van Brain]]
