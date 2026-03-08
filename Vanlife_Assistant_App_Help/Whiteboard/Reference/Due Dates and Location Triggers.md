---
title: "Due Dates and Location Triggers"
aliases:
  - "due date"
  - "location trigger"
  - "remind me when"
  - "geofenced reminder"
category: "Whiteboard"
type: "Reference"
tags: [help, vanlife-assistant, whiteboard, reference, reminders, todo, due-date, location, notification, voice, due, dates, and, triggers]
last_updated: "2026-02-21"
---
# ⏰ Due Dates and Location Triggers

## Overview

Every item on the Whiteboard can be given a smart trigger that tells you when to act on it. There are two kinds: a **Time Trigger** that fires at a specific date and time, and a **Location Trigger** that fires when you arrive at a named place. You can set either one, or both, on the same item.

Both types deliver an iOS notification — a banner that appears on your lock screen and in Notification Centre, even when the app is closed.

---

## Setting a Trigger

Open the item's detail sheet by tapping the **ⓘ info button** on any item row, or by swiping right and tapping Edit on a to-do item. The triggers are in the lower half of the form.

Tap **Done** when you're finished. This is the moment the trigger is activated — the notification is scheduled or the zone is registered for monitoring when you save, not when you create the item.

---

## Time Triggers (Due Dates)

The **Time Trigger** section has a single toggle: **Set Due Date**. Switch it on and a date/time picker appears, defaulting to one hour from now.

Set the date and time you want to be reminded, then tap **Done**.

At that exact moment, a notification arrives with the item's title and the message "This item is due now." The notification fires once and does not repeat. If you've already completed the item before the time arrives, the notification still fires — completing the item doesn't cancel the scheduled reminder. You can remove it by re-opening the detail sheet and switching the toggle off before it fires.

**If the due date is in the past** when you tap Done (for example, you edited an old item), no notification is scheduled.

Once a due date is set, a **date pill** appears directly on the item's row in the list. The pill turns red when the due date has passed. The item is also pulled out of its list and surfaced in the red **Priority & Upcoming** section on the Whiteboard dashboard, sorted with the earliest deadline first.

---

## Location Triggers

The **Location Trigger** section lets you link an item to a named place — a supermarket, a storage unit, a friend's house, your parents' driveway — and get a notification when you arrive there.

### Setting a Location Trigger

In the item's detail sheet, find **Trigger Zone** and tap the picker. This lists your **offboard zones** — locations outside the van that have a GPS coordinate saved. If the picker is empty or a zone you need isn't there, you'll need to set it up first (see *Setting Up Zones* below).

Select a zone. A second picker appears below it labelled **Trigger Action**, with two options: **Arriving** and **Departing**.

> **Note:** The **Departing** option is visible in the interface but departure notifications are not currently active — only **Arriving** notifications fire. If you set a Departing trigger, you will not receive a notification on exit. This is a known limitation that will be addressed in a future update. For now, use Arriving.

Once a zone is selected and **Arriving** is chosen, tap **Done**. The app registers a circular geofence around the zone's coordinates and begins monitoring it in the background.

When you drive or walk within range of that location, a notification arrives: **"Zone Reached — You have items on your whiteboard for this location."**

> The notification doesn't list which specific items are waiting — it's a prompt to open the Whiteboard and check. This will become more specific in a future update.

Once set, the item shows a **blue location pill** on its row — "Arrive [Zone Name]" — so you can see at a glance that it has a location trigger without opening the detail sheet.

### How Geofencing Works

The app uses iOS's **region monitoring** (CoreLocation) to watch for zone entry in the background. When your device crosses into the circular boundary of a saved zone, iOS wakes the app briefly to fire the notification — even if the app is fully closed.

The default detection radius is **100 metres**. You can set a custom radius per zone in the Zone Editor (see below). The maximum radius is determined by iOS and varies by device and signal conditions, but is typically between 100 and 2,000 metres.

Geofencing relies on a combination of GPS, Wi-Fi, and cellular triangulation. In remote areas with poor signal, detection may be delayed or missed. Inside dense urban environments or underground car parks, the radius may behave less precisely than expected.

---

## Setting Up Zones for Location Triggers

Location triggers only work with **offboard zones** — zones defined as being outside the van, with a GPS coordinate attached. Onboard zones (the cupboards, fridge, and storage areas physically inside your van) can't be used as location triggers.

To add or edit offboard zones, go to **Van → Manifest → Manage Zones**. In the editor, toggle **Onboard Vehicle** off to mark a zone as offboard. This reveals a map where you can **tap to drop a pin** at the zone's location. The app will attempt to show your current location automatically if location permission allows.

You can also set a custom **Radius (m)** — the distance from the pin at which the notification fires. The default is 100 metres.

> **10 zone limit:** The app can monitor up to **10 offboard zones** at a time. The zone editor prevents you from adding an eleventh — if you need a new zone, you'll need to delete or replace an existing one.

Good examples of offboard zones for location triggers:
- A supermarket you shop at regularly
- A storage unit where you keep van parts
- A parent's or friend's address you visit when passing through
- A mechanic's garage

---

## Permissions Required

Both trigger types need **Notifications** permission. The app will request this the first time a trigger is scheduled. If you previously denied it, go to **iPhone Settings → Notifications → Vanlife Assistant** and enable Allow Notifications.

Location triggers additionally need **Location — Always Allow**. This is the permission level that lets iOS wake the app in the background when a zone boundary is crossed. "While Using the App" is not sufficient for geofencing.

If the app only has "While Using" permission, location triggers won't fire when the app is in the background. To upgrade: go to **iPhone Settings → Privacy & Security → Location Services → Vanlife Assistant** and select **Always**.

See [[Permissions\_Explained|Permissions Explained]] for the full guide on location permission levels.

---

## Voice Shortcuts

Both triggers can be set entirely by voice. The [[Voice\_Additions|Voice Additions]] article covers this in full, but as a quick reference:

- *"Remind me to call the garage on Tuesday at 10am"* — sets a time trigger
- *"Remind me to pick up the parcel when I get to Mum's"* — sets a location trigger, provided "Mum's" is an offboard zone

The voice parser extracts the date, time, and zone name from your spoken sentence and creates the item with the triggers pre-applied. You still see the item in the Whiteboard and can adjust it from the detail sheet if needed.

---

## Common Questions

**I tapped Done but I didn't get a notification.**
Two things to check: first, confirm the app has Notifications permission enabled in iPhone Settings. Second, if it was a location trigger, confirm the app has **Always Allow** location permission — not just "While Using". A location trigger with insufficient permission will appear to be set (the blue pill shows on the row) but will never fire.

**My due date pill turned red but I didn't get a notification.**
If the app didn't have Notifications permission at the time you tapped Done, no notification was scheduled. The red pill is just a visual indicator — it doesn't retroactively schedule a missed notification. Remove the due date, re-grant permission in iPhone Settings, then re-add the due date and tap Done again.

**I arrived at the zone but got no notification.**
Check that the zone has a GPS coordinate saved — open the zone in **Van → Manifest → Manage Zones** and confirm the map has a pin. If it shows "Tap map to set location", the coordinate is missing and geofencing can't start. Also confirm **Always Allow** location permission is active.

**I set a Departing trigger but it never fired.**
Departure notifications are not currently active — only arrival notifications fire. Use the Arriving option for now. This will be addressed in a future update.

**The notification said "Zone Reached" but didn't tell me which item.**
This is a current limitation. The notification is a generic prompt to check the Whiteboard — open it and look for items with a blue location pill matching the zone you just arrived at.

**Will the trigger fire again next time I go to that zone?**
Yes. The geofence stays registered as long as the item exists and has a zone assigned. Every time you enter the zone's radius — whether that's tomorrow or next month — the notification fires. To stop it, remove the zone from the item's detail sheet or delete the item.

**Can I use the same zone as a trigger on multiple items?**
Yes. You can have as many items as you like pointing at the same zone. When you enter it, a single "Zone Reached" notification fires — it doesn't fire once per item.

---

## Related Articles
- [[Using the Whiteboard|Using the Whiteboard]]
- [[Voice Additions|Voice Additions]]
- [[Permissions Explained|Permissions Explained]]
- [[Background Behaviour|Background Behaviour]]
- [[Setting up your Van's Zones]]
