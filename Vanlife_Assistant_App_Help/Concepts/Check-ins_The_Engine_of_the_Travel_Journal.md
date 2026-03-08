---
title: "Check-ins — The Engine of the Travel Journal"
aliases:
  - "what is a check-in"
  - "check-in concept"
  - "why check-ins"
  - "check-in explained"
  - "how check-ins work"
  - "park-up concept"
  - "journal engine"
category: "Concepts"
type: "Reference"
tags: [help, vanlife-assistant, concepts, check-ins, journal, travel, reference]
last_updated: "2026-03-08"
---

# 📍 Check-ins — The Engine of the Travel Journal

Check-ins are the most important thing you create in Vanlife Assistant. They sit at the centre of the app's travel system — connecting places, memories, statistics, documents, and spending into a single record.

This article explains what a check-in actually is, why it's designed the way it is, and how it feeds the rest of the app.

---

## What a Check-in Is

A check-in is a **timestamped record of a place you stopped**. It's not a route (that's a drive). It's not a potential location to visit (that's a Spot). A check-in is a confirmation: *I was here. This is what it was like.*

Every check-in has:
- A GPS coordinate and reverse-geocoded location name
- A date and time
- A place type (Wild camp, Free aire, Paid aire, Campsite, Accommodation, or Services Only)
- A country code, detected automatically

And optionally:
- A hero photo, matched from your camera roll by proximity and time
- A weather snapshot from WeatherKit — temperature, conditions, wind, rain chance, UV
- Your altitude at that moment
- A journal note
- Ratings across four dimensions: stay quality, access, beauty, and privacy
- Facilities: whether there was electricity, showers, water, waste disposal, wifi, and more
- An overnight flag and a cost note
- Tags for your own categorisation

Nothing about this is passive. Every field you fill in becomes queryable: by voice, in the timeline, in map views, in statistics cards.

---

## Why They Exist

Vanlife happens in places. A travel app that only records routes misses the most important part of the story — *where you actually stayed*.

A check-in is the digital equivalent of writing in a travel journal at the end of the day: this is where we slept, this is what it was like, this is what we paid. But it does this automatically where it can (weather, location name, hero photo matching), and lets you add depth where you want to.

The design intent is that creating a check-in should take about 30 seconds at the end of a day's driving, and that the record it creates will still be meaningful five years later.

---

## How a Check-in Is Created

There are three ways:

**The photo-first wizard** — you pick a photo from your camera roll. The app reads its EXIF timestamp and GPS coordinates, reverse-geocodes the location, fetches the weather for that time and place, and pre-fills the form. You confirm the type and add any notes. This is the fastest route to a rich check-in.

**The map-first method** — you long-press a location on the Trips map or tap the check-in button on the Journey Card to start from your current GPS position. The form opens with location pre-filled.

**Voice** — tell the Assistant "log a check-in" or "log a wild camp near [place]". The assistant creates the record without you opening the Trips tab at all.

→ See [[How to create a Check-in]] for step-by-step instructions.

---

## What Check-ins Feed

Once a check-in exists, it contributes to many parts of the app automatically:

**Schengen counter** — every check-in in a Schengen Zone country adds a day to the 90-day rolling window. The Schengen Status card on the Trips dashboard calculates your position in real time from your check-in history.

**Visited Countries** — each unique country code from your check-ins adds a flag to the Visited Countries card. Tap a flag to see all your check-ins in that country. Long-press to filter the history map.

**All-Time Records** — the hottest temperature, coldest, highest altitude, most expensive night, and best-equipped site are all calculated from check-in weather snapshots and metadata.

**Furthest Bounds** — the All-Time Records card also tracks your absolute furthest north, south, east, and west — the most extreme GPS coordinates across all your check-ins.

**Postcard Generator** — every check-in with a hero photo can become a postcard. The Postcard Generator reads the location, date, altitude, and weather snapshot directly from the check-in record.

**Smart Notebook** — in Trip Detail View, the photo album for a trip is built by matching camera roll photos to the dates and GPS coordinates of your check-ins (and drives). The more precise your check-ins, the better the photo matching.

**Voice queries** — the assistant can answer questions like "where did I sleep in Portugal?", "how many nights did I camp for free last summer?", "what was the most expensive campsite?", or "log a check-in here" using your check-in history as its source.

**Spending context** — ledger transactions can be assigned to a specific trip, and the trip's Spending Sheet shows you what you spent during that expedition.

---

## The Weather Snapshot

The weather attached to a check-in is not looked up later — it's a snapshot captured at the moment you create the record, from WeatherKit using the check-in's GPS coordinates and timestamp. This means the weather is accurate to when you were actually there, not when you opened the app.

If you create a check-in using the photo-first wizard, the weather is fetched for the photo's original capture time, not the current time. This means even backdated check-ins get the right conditions.

---

## The Hero Photo Match

The app does not force you to take a photo through the app itself. Instead, it looks in your existing camera roll.

When you create a check-in (or when it's created automatically), the app stores a "match key" — the timestamp, GPS coordinates, and pixel dimensions of your chosen photo. This is synced to iCloud and can re-match the photo on any of your Apple devices without storing the full image in the app's database, which keeps sync fast and database size small.

---

## Check-ins vs Spots

A check-in and a Spot can represent the same physical location, but they mean different things:

A **Spot** is a *potential* place — it might be in a dataset you downloaded, or one you scouted on the map before visiting. It has no date, no weather, no journal entry. It's reference information.

A **Check-in** is a *personal history* — it has a date, your experience of the place, your photos, and your notes. It happened to you.

When you stay somewhere from your Spots database, you can **promote** a Spot into a check-in. The Spot's details (type, services, coordinates) pre-fill the check-in form, and you add the personal layer.

→ See [[Spots vs Check-ins — What's the Difference?]] for the full comparison.

---

## Related Articles

- [[The Trip Structure Explained]] — *How check-ins fit into trips and drives*
- [[Spots vs Check-ins — What's the Difference?]] — *The distinction between reference and history*
- [[How to create a Check-in]] — *Step-by-step guide*
- [[The Magic of Check-ins: Automated Journaling]] — *The photo-first creation workflow*
- [[Check-in Detail View]] — *What's in a check-in record*
- [[Schengen Calculator]] — *How check-ins feed your 90-day counter*
- [[The Compass and Records Card]] — *All-time statistics derived from check-ins*
