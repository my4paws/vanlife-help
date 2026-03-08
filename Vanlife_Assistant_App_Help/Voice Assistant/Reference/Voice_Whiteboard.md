---
title: "Voice Whiteboard Commands"
aliases:
  - "voice whiteboard"
  - "voice checklist"
  - "voice shopping list"
  - "voice to do"
  - "voice add task"
  - "voice remind me"
  - "voice don't forget"
  - "voice add to list"
  - "voice add to whiteboard"
  - "voice add shopping"
  - "add to list voice"
  - "remind me voice"
  - "voice open whiteboard"
  - "voice open checklist"
  - "add reminder voice"
  - "voice location reminder"
  - "voice date reminder"
  - "voice due date"
category: "Voice"
type: "Reference"
tags: [help, vanlife-assistant, voice, whiteboard, checklist, reference]
last_updated: "2026-02-23"
---

# ✅ Voice Whiteboard Commands

The Whiteboard handler lets you add items to your to-do list and shopping list entirely by voice — including optional due dates and location-based reminders — without opening the whiteboard screen.

---

## Opening the Whiteboard

- *"Open the whiteboard"*
- *"Show me the whiteboard"*
- *"Open my shopping list"*
- *"Whiteboard"*
- *"Checklist"*

These navigation commands open the Whiteboard sheet over whatever screen you're currently on.

---

## Adding a To-Do Item

Say "add", "remind me to", or "don't forget" followed by the task.

**Examples:**
- *"Add check the tyre pressure"*
- *"Remind me to top up the AdBlue"*
- *"Don't forget to call the campsite"*
- *"Add a task to service the habitation door"*
- *"Put check oil level on the whiteboard"*

The item is added to your default to-do list immediately and confirmed: *"Added 'Check the tyre pressure' to the whiteboard."*

---

## Adding a Shopping List Item

Use shopping-specific keywords and the item goes to the shopping list automatically.

**Examples:**
- *"Add milk to the shopping list"*
- *"Remind me to buy bread"*
- *"Add pasta to groceries"*
- *"Put olive oil on the shopping list"*

The handler detects shopping intent from keywords like "buy", "need", "shopping list", "groceries", or "grocery list", and routes the item to the correct list.

---

## Adding with a Due Date

Include a date or time and it's extracted and attached to the item as a due date with a reminder.

**Examples:**
- *"Remind me to check the gas on Friday"*
- *"Add call the garage tomorrow at 9am to the whiteboard"*
- *"Remind me to book a campsite on 15th March"*
- *"Don't forget to pay the campsite fee on Sunday"*

The assistant confirms the date: *"Added 'Call the garage' to the whiteboard. I'll remind you tomorrow at 9 AM."*

Date expressions understood include relative terms (today, tomorrow, this Friday, next week), weekday names, and absolute dates.

---

## Adding with a Location Reminder

If you say the name of one of your manifest zones or saved locations, the item is associated with that location. You'll be reminded when you arrive there.

**Examples:**
- *"Remind me to get oil when I get to Halfords"*
- *"Add buy propane when I get to the motorhome shop"*
- *"Remind me at the garage to check the brake pads"*

The assistant confirms the location: *"Added 'Get oil' to the whiteboard. I'll remind you when you reach Halfords."*

Location matching checks your saved manifest zones by name. The longest matching name takes priority (so "Home Base" matches before "Home").

---

## Combining Date and Location

Both can be used in the same item. If both a date and a location are detected, both are attached and either trigger will fire first.

*"Remind me to check the spare tyre on Saturday at the garage"*

---

## Tips and Edge Cases

**Questions are not handled here**: If you ask *"What's on my list?"* or *"Do I have pasta?"*, those go to the Apple Intelligence fallback — the voice handler intentionally steps aside for questions so the LLM can give a full, natural answer from your list data.

**Standalone "buy"**: After stripping trigger words, if the remaining text starts with "buy", that word is also removed (it's redundant). So *"remind me to buy milk"* becomes the item *"Milk"*, not *"Buy milk"*.

**Smart list detection**: If you don't specify which list ("whiteboard" or "shopping list"), the handler guesses based on the content. Items containing "buy" or "need" go to shopping; anything else goes to the to-do list.

**List assignment in settings**: The handler creates items in your first to-do or shopping list. If you have multiple lists, the first one found is used. Reorder your lists in the Whiteboard settings if you want a different one to be the default target for voice commands.

---

## Related Articles
- [[Voice_Overview|Voice Overview]]
- [[Whiteboard/Reference/Using the Whiteboard|Using the Whiteboard]]
