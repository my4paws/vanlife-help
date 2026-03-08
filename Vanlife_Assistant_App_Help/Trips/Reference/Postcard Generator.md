---
title: "Postcard Generator"
aliases:
  - "postcard"
  - "share photo"
  - "create postcard"
  - "postcard styles"
  - "cinematic"
  - "journal style"
  - "badge style"
  - "share check-in"
  - "vanlife postcard"
category: "Trips"
type: "Reference"
tags: [help, vanlife-assistant, trips, reference, postcard, share, photo, check-in, social, export]
last\_updated: "2026-02-22"
---

# 📮 Postcard Generator

## Overview
Every great parkup deserves more than a raw phone photo. The **Postcard Generator** transforms any [[Trips/Reference/Checkins and Timeline|Check-in's]] hero photograph into a beautifully designed, shareable postcard — automatically layered with the location name, date, GPS coordinates, altitude, and weather conditions captured at the time.

Three distinct visual styles give you a different aesthetic for different moods. The result is a high-resolution 3:4 image you can send directly to friends, post on Instagram, or drop into a message — a proper memory, not just a snapshot.

---

## How to Open It

The Postcard Generator lives inside the **[[Trips/Reference/Check-in Detail View|Check-in Detail View]]**.

1. Open any expedition from the [[Trip Detail View|Trip Detail View]].
2. Tap a check-in card in the Travel Feed to open its detail page.
3. Tap the **↑ share icon** in the top-right corner of the toolbar.

The generator opens automatically, pre-loaded with that check-in's hero photo and all of its metadata. There's nothing to fill in manually — it reads everything from the check-in record you've already built.

> **No hero photo?** The share icon only appears when the check-in has a hero photo attached. If you haven't added one yet, edit the check-in and anchor a photo to it first. See [[The Magic of Check-ins - Automated Journaling]] for how photos get matched automatically.

---

## The Three Styles

Swipe left and right across the preview, or tap the segmented picker below it, to move between the three styles. The postcard re-renders live with each change.

---

### 🎞️ Cinematic
*Inspired by editorial travel photography.*

Your photo fills the entire frame edge-to-edge. A deep black gradient rises from the bottom, and over it sits bold **serif headline text** in all-caps — your check-in title set large and confident, with location and date on the line below. A third row carries altitude, weather temperature with its condition icon, and precise GPS coordinates in a smaller weight.

This is the style for dramatic landscapes, golden-hour shots, and anywhere the photo itself is the hero. The typography steps aside and lets the image breathe, while the metadata anchors it to a specific moment in time and space.

---

### 📓 Journal
*The instant film look.*

A warm off-white border frames a square crop of your photo — the classic proportions of a Polaroid. In the caption area below the photo, your check-in title is set in a **handwritten-style font**, giving it the feeling of something written with a felt-tip pen on the back of a print. Location and date appear in small monospaced type to the left; weather and altitude icons cluster quietly to the right.

This style suits candid, intimate shots — van interiors, roadside meals, wild camp mornings. It looks like something you'd stick to a corkboard or slip into an envelope.

---

### 🏅 Badge
*Clean, bold, layered.*

Your photo fills the frame again, but this time a **frosted glass circular badge** sits in the top-right corner — your own personalised expedition stamp. Inside the badge: the word VANLIFE across the top, the temperature (or a location pin if no weather was recorded) large in the centre, altitude below it, and the date at the foot. Your check-in title appears at the bottom-left in a frosted pill label.

This style works well on square or portrait shots where the sky or a clear area in the top-right gives the badge room to float. It has a sticker quality that translates well to social media.

---

## What Data Appears on Each Postcard

All data is pulled directly from the check-in record at the moment the generator opens. Nothing needs to be typed.

| Data field              | Source                                                                                                                 |
| ----------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| **Title**               | Check-in title                                                                                                         |
| **Location**            | Reverse-geocoded place name stored on the check-in                                                                     |
| **Date**                | Check-in date, formatted as abbreviated text (e.g., "22 Feb 2026")                                                     |
| **GPS Coordinates**     | Check-in latitude and longitude, to 4 decimal places                                                                   |
| **Altitude**            | GPS altitude recorded at check-in time, converted to your unit preference                                              |
| **Weather temperature** | Weather snapshot attached by the [[The Magic of Check-ins - Automated Journaling\\|Vision AI wizard]] at creation time |
| **Weather icon**        | Condition symbol from the weather snapshot (sun, cloud, rain, snow, etc.)                                              |

Altitude and weather only appear if that data exists on the check-in. If you logged a spot manually without a weather snapshot, those fields are simply omitted — the postcard still looks complete.

---

## Sharing the Postcard

Once you've chosen your style, tap the **Share Postcard** button. This hands the image to the standard iOS ShareSheet, where you can:

* Send it via **Messages**, **WhatsApp**, **Signal**, or any messaging app.
* Save it to your **Photos** library.
* Post it to **Instagram**, **Twitter/X**, or any social app installed on your phone.
* Copy it to your **clipboard** to paste anywhere.
* **AirDrop** it to a nearby device.

The generated image is **1200 × 1600 pixels** rendered at 3× scale — large enough for crisp display at full screen on any device, and the right proportions for a portrait social post.

---

## Common Questions

**The share icon isn't showing on my check-in.**
The Postcard Generator requires a hero photo to be attached to the check-in. Without one, there's nothing to generate a postcard from, so the icon is hidden. To add a photo: open the check-in, tap **Edit**, and anchor a photo from your Camera Roll.

**The postcard says "Developing Photo…" and doesn't load.**
The generator fetches a high-resolution version of your photo from your Photos library. On older devices or with large RAW files, this can take a few seconds. If it never loads, check that Vanlife Assistant still has Photos access in **iPhone Settings → Privacy & Security → Photos**.

**My postcard doesn't show weather or altitude.**
Weather is only present on check-ins that were created using the [[The Magic of Check-ins - Automated Journaling|photo-first wizard]], which attaches a weather snapshot automatically at creation time. Manually entered check-ins don't have weather unless the wizard ran. Altitude is recorded from your iPhone's GPS at the time of the check-in — in areas with poor vertical accuracy (dense cities, underground car parks), it may be absent.

**Can I change the check-in title before generating?**
Not from within the Postcard Generator itself — but you can tap **Close**, edit the check-in title in the editor, then reopen the generator. The title updates immediately.

---

## Related Articles
* [[Trips/Reference/Check-in Detail View|Check-in Detail View]]
* [[The Magic of Check-ins - Automated Journaling]]
* [[Trips/Reference/Checkins and Timeline|Check-ins and Timeline]]
* [[Trip Detail View]]
