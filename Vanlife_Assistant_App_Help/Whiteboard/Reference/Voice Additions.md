---
title: "Voice Additions"
aliases:
  - "add by voice"
  - "voice add reminder"
  - "voice add to do"
category: "Whiteboard"
type: "Reference"
tags: [help, vanlife-assistant, whiteboard, reference, reminders, todo, due-date, location, notification, voice, additions]
last_updated: "2026-02-21"
---
# 🎙️ Voice Additions

## Overview

The Whiteboard is designed to work without looking at your phone. While you're driving, cooking, or packing up camp, you can add items to your shopping list, drop a reminder for a specific time, or set a task that triggers when you arrive at a location — all in a single spoken sentence.

The voice assistant understands natural, conversational phrasing. You don't need to remember exact commands.

---

## How to Use Voice

Tap the **sparkles** (✦) button in the tab bar to open the voice overlay, then speak naturally. The assistant listens, processes your request, and reads its response back aloud.

You can also trigger the voice assistant from a widget or lock screen shortcut if you've set one up.

---

## What You Can Say

Voice commands for the Whiteboard fall into two categories: **opening** the Whiteboard, and **adding** items.

### Opening the Whiteboard

These phrases open the Whiteboard sheet directly:

| Say this…              | What happens         |
| ---------------------- | -------------------- |
| *"Open my whiteboard"* | Opens the Whiteboard |
| *"Show shopping list"* | Opens the Whiteboard |
| *"Whiteboard"*         | Opens the Whiteboard |
| *"Checklist"*          | Opens the Whiteboard |
| *"Shopping list"*      | Opens the Whiteboard |

### Adding a Simple Item

| Say this…                                 | What happens                              |
| ----------------------------------------- | ----------------------------------------- |
| *"Add milk to the shopping list"*         | Adds Milk to your shopping list           |
| *"Add call the garage to the whiteboard"* | Adds Call the garage to your to-do list   |
| *"Put bread on the list"*                 | Adds Bread to your shopping list          |
| *"Remind me to buy coffee"*               | Adds Coffee to your shopping list         |
| *"Don't forget washing powder"*           | Adds Washing powder to your shopping list |
| *"Schedule a tire check"*                 | Adds Tire check to your to-do list        |

### Adding with a Time Trigger

Speak the date or time naturally anywhere in the sentence. The assistant uses Apple's language detection engine to find it, extract it, and remove it from the item title.

| Say this…                                           | What happens                                               |
| --------------------------------------------------- | ---------------------------------------------------------- |
| *"Remind me to call the garage on Tuesday at 10am"* | Adds Call the garage with a due date of Tuesday 10:00      |
| *"Don't forget to pay the campsite tomorrow"*       | Adds Pay the campsite with a due date of tomorrow          |
| *"Add passport renewal in three weeks"*             | Adds Passport renewal with a due date three weeks from now |
| *"Remind me about the ferry next Friday at 2pm"*    | Adds The ferry with a due date of next Friday 14:00        |

The time trigger is set immediately — you don't need to open the item and tap Done. A notification will fire at the exact date and time you specified.

### Adding with a Location Trigger

Speak the name of a saved offboard zone anywhere in the sentence. The assistant scans your zone list, finds a match, and links the item to that zone.

| Say this…                                               | What happens                                                          |
| ------------------------------------------------------- | --------------------------------------------------------------------- |
| *"Remind me to pick up the parcel when I get to Mum's"* | Adds Pick up the parcel with an Arriving trigger for the "Mum's" zone |
| *"Add engine oil to the list when I'm at Halfords"*     | Adds Engine oil with an Arriving trigger for the "Halfords" zone      |
| *"Don't forget the dog food at the pet shop"*           | Adds Dog food with an Arriving trigger for the "Pet Shop" zone        |

The zone name must exactly match a saved offboard zone in your Manifest (case-insensitive). If you say "the supermarket" but your zone is called "Lidl", no location trigger is set. Keep zone names short and natural — the way you'd say them out loud.

See [[Whiteboard/Reference/Due Dates and Location Triggers|Due Dates and Location Triggers]] for how location triggers work and how to set up zones.

### Combining Time and Location

You can include both a date and a zone in the same sentence:

- *"Remind me to drop off the keys at the garage on Wednesday morning"* — adds Drop off the keys with both a time trigger (Wednesday morning) and a location trigger for the "Garage" zone, if one exists.

---

## How the Assistant Decides Which List to Use

When you don't specify a list explicitly, the assistant makes a smart guess:

- If you say **"shopping list"**, **"grocery list"**, or **"groceries"** → Shopping list
- If you say **"whiteboard"**, **"to do"**, or **"todo"** → To-do list
- If you say **"buy"** or **"need"** anywhere in the sentence → Shopping list
- Everything else → To-do list (default)

If you have more than one shopping list or to-do list, the assistant picks the first one it finds. To control which list an item goes into precisely, say the list name explicitly — *"Add olive oil to the Groceries list"* rather than just *"Add olive oil"*.

---

## Asking Questions About Your Lists

The voice assistant can also **read and summarise** your Whiteboard. Questions are handled by the AI assistant rather than the direct command system, which means it has full context of everything on all your lists and can answer conversationally.

| Ask this…                                   | What you get                                          |
| ------------------------------------------- | ----------------------------------------------------- |
| *"What's on my shopping list?"*             | A spoken summary of all active items, grouped by list |
| *"Do I have milk on the list?"*             | A yes/no answer with context                          |
| *"Read my whiteboard"*                      | All active items across all lists                     |
| *"What tasks do I have?"*                   | A summary of to-do items                              |
| *"How many things are on my grocery list?"* | A count                                               |

Questions beginning with "What", "Do I", or "Read", or sentences containing a "?", are automatically routed to the AI assistant rather than the add-item system. Up to 15 items per list are included in the context the assistant can see.

---

## What the Assistant Says Back

After adding an item, the assistant reads a confirmation aloud that tells you exactly what was added and what triggers were set. For example:

- *"Added Milk to the shopping list."*
- *"Added Call the garage to the whiteboard. I'll remind you on Tuesday 10 March at 10:00."*
- *"Added Pick up the parcel to the whiteboard. I'll remind you when you reach Mum's."*

If the assistant couldn't work out what item you wanted to add — for example, the phrase was stripped of all meaningful content — it will say: *"I heard the command, but I couldn't understand what item or task you wanted to add."*

---

## How the Language Understanding Works

The assistant processes your spoken sentence in four steps before saving anything:

**1. Date extraction** — Apple's text analysis engine (NSDataDetector) scans the sentence for any recognisable date or time expression and extracts it as a due date. The date string is then removed from the text so it doesn't end up in the item title.

**2. Zone matching** — The assistant scans your saved zone names against the remaining text. Longer zone names are checked first, so "Home Base" matches before "Home" if both exist. When a match is found, the zone name and any preceding preposition ("at", "in", "near", "to", "from") are removed from the text.

**3. Trigger phrase stripping** — Common opener phrases are removed: "remind me to", "remind me when I get to", "don't forget to", "add to the list", "add to the whiteboard", "put on the list", and more. Destination suffixes like "to my shopping list" and "to the whiteboard" are stripped from the end.

**4. Title capitalisation** — Whatever is left becomes the item title, with the first letter capitalised.

The result: *"Remind me to buy olive oil at Lidl on Friday"* becomes an item titled **Olive oil**, with an Arriving trigger for the "Lidl" zone and a due date of Friday — with none of the scaffolding words making it into the title.

---

## Tips for Best Results

**Name your zones the way you'd say them.** The voice system matches zone names against your spoken words literally. "Mum's House" won't match if you say "Mum's" — but a zone called "Mum's" will. Short, natural names like "Lidl", "Garage", "Storage" work best.

**Say the date naturally.** The date extractor understands "tomorrow", "next Tuesday", "in two weeks", "Friday at 3pm", and many other formats — you don't need to state a formal date like "the 15th of March".

**Specify the list if you have several.** If you have multiple shopping lists (Groceries, Hardware, Pharmacy), the assistant will always pick the first one unless you name the specific list in your sentence.

**Questions and additions are different.** *"Add milk"* and *"Do I have milk?"* route to completely different systems. If you want to add something, use an action word. If you want to know what's already there, ask a question.

---

## Common Questions

**I said "add olive oil" but it went to the to-do list instead of shopping.**
The assistant routes to shopping when it detects "shopping list", "grocery list", "groceries", "buy", or "need" in your sentence. "Add olive oil" alone doesn't contain any of those signals — say "add olive oil to the shopping list" or "remind me to buy olive oil" to send it to the right place.

**My zone name wasn't matched.**
Zone names are matched literally against your spoken words. Check the exact name of your zone in **Van → Manifest → Manage Zones** and say it exactly that way — including any apostrophes or spaces. If your zone is called "Mum's House", say "Mum's House", not "Mum's" or "my mum's".

**The date ended up in the item title.**
This happens when the date format wasn't recognised by the extraction engine. Very unusual formats or typos in dictation can slip through. Open the item's detail sheet, correct the title, and set the due date manually from the Time Trigger picker.

**The assistant said it added something but I can't find it on the Whiteboard.**
Check that a list of the right type exists. The assistant looks for the first list of the appropriate type — if no shopping list exists at all, it falls back to any list. Confirm what list it landed in by checking the Whiteboard dashboard.

---

## Related Articles
- [[Using the Whiteboard|Using the Whiteboard]]
- [[Due Dates and Location Triggers|Due Dates and Location Triggers]]
- [[Van/Manifest/Tutorials/Setting_Up_Your_Vans_Zones|Setting up your Van's Zones]]
