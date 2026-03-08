---
title: "Voice Inventory Commands"
aliases:
  - "voice inventory"
  - "voice manifest"
  - "find item voice"
  - "where is voice"
  - "voice find item"
  - "voice add item"
  - "voice move item"
  - "voice delete item"
  - "voice zone weight"
  - "voice zone contents"
  - "voice readiness"
  - "voice expiry"
  - "voice verify item"
  - "voice heaviest"
  - "voice overweight"
  - "voice add to manifest"
  - "voice remove item"
  - "voice inventory check"
  - "am i overweight voice"
  - "voice packing"
category: "Voice"
type: "Reference"
tags: [help, vanlife-assistant, voice, inventory, manifest, reference]
last_updated: "2026-02-23"
---

# 📦 Voice Inventory Commands

The Inventory handler lets you interact with your van's manifest entirely hands-free — find items, check weights, manage your readiness for different contexts, and add, move, or delete items without typing.

---

## Finding an Item

Ask where something is and the assistant will tell you which zone and container it's stored in.

**Examples:**
- *"Where is the first aid kit?"*
- *"Find my jumper cables"*
- *"Do I have a gas canister?"*
- *"Have we got spare brake fluid?"*
- *"Looking for the portable shower"*
- *"Locate the satellite phone"*

If an exact match is found, the response gives the zone and location. The app navigates to the item on screen so you can see the full detail.

If no match is found: *"I couldn't find that in your manifest."*

---

## Adding an Item

Say "add", "put", or "create" followed by the item name. You can optionally include a quantity and destination zone.

**Examples:**
- *"Add a first aid kit to the medical box"*
- *"Add five protein bars to the food zone"*
- *"Put three pairs of socks in the clothing zone"*
- *"Add gas canister"* (no zone specified — added without a zone)

Quantities can be spoken as digits or words: "two", "a couple of", "a few", "a pair of".

If a plural is spoken (e.g. "gas canisters"), the handler de-pluralises to find or create the singular item name.

---

## Moving an Item

Move an item from one zone to another.

**Examples:**
- *"Move the first aid kit to the passenger shelf"*
- *"Put the sleeping bag into the rear storage"*
- *"Move two protein bars from the food box to the cab"*

Format: item name, optional source zone, destination zone. If the item appears in multiple zones, specifying a source ("from the food box") disambiguates which instance to move.

---

## Deleting an Item

Remove items from your manifest.

**Examples:**
- *"Delete the expired sunscreen"*
- *"Remove the old camping chair"*
- *"Throw away the broken torch from the tool zone"*

If a zone is specified ("from the tool zone"), only items in that zone are targeted. The handler de-pluralises the item name and matches against existing inventory.

---

## Zone Contents

List everything currently stored in a specific zone.

**Examples:**
- *"What's in the kitchen zone?"*
- *"Show me what's in the overhead storage"*
- *"Contents of the food zone"*
- *"List what's in the rear cab"*

---

## Zone Weight

Check how much a zone weighs.

**Examples:**
- *"How heavy is the tool zone?"*
- *"Weight of the rear storage"*
- *"Total weight of the kitchen zone"*

---

## Heaviest Zones

- *"Which zone is heaviest?"*
- *"Show me the top three zones by weight"*
- *"Heaviest zones"*

Returns a ranked list. Default is top 5 unless you specify a number.

---

## Heaviest Items in a Zone

- *"What are the heaviest items in the tool zone?"*
- *"Top five heaviest items in rear storage"*

---

## Readiness Checks

The readiness check tells you whether your manifest has everything needed for a specific activity, context, or trip.

### For a named trip
- *"Am I ready for the France trip?"*
- *"Do I have everything for the Scotland trip?"*

### For a general context / activity
- *"Am I ready for skiing?"*
- *"Do I have everything for winter camping?"*
- *"All set for diving?"*
- *"Do I have everything for off-grid?"*

The handler matches against items tagged with the relevant context in your manifest.

### For your next upcoming trip
- *"Am I ready for my next trip?"*
- *"Do I have everything for the upcoming trip?"*

### Weight check
- *"Am I overweight?"*

This is the most commonly used readiness command. It compares your manifest's total loaded weight against the van's payload capacity and tells you if you're within limits or by how much you're over.

---

## Expiry Checks

Find items in your manifest that are expired or expiring soon.

**Examples:**
- *"What's expiring soon?"*
- *"Do I have anything out of date?"*
- *"What expires in the next 30 days?"*

The default look-ahead is 30 days. Specify a number of days to change it: *"expiring in the next 7 days"*.

---

## Items Not Recently Verified

Find items that haven't been audited or checked in a while.

**Examples:**
- *"What items haven't been verified?"*
- *"What needs checking?"*
- *"What hasn't been audited in 90 days?"*

Default is 90 days. Specify a number if needed.

---

## Marking an Item as Verified

Record that you've physically checked an item.

**Examples:**
- *"Verify the first aid kit"*
- *"I checked the fire extinguisher"*
- *"Mark the jump cables as checked"*

---

## Updating an Item's Weight

Correct or set the recorded weight of a specific item.

**Examples:**
- *"The tool bag weighs 8 kilos"*
- *"Set weight of the camping chair to 4.5"*

---

## Quantity Language

The handler understands spoken quantities in natural form:

| You say | Parsed as |
|---|---|
| "a", "one" | 1 |
| "two", "a couple of", "a pair of" | 2 |
| "three", "a few" | 3 |
| "four", "four" | 4 |
| Any number word up to thirty | Corresponding integer |
| A plain digit ("5") | 5 |

---

## Tips

**Zone name matching**: You don't need the exact zone name — "the back" or "rear" will match zones named "Rear Storage" or "Back Cab" by partial fuzzy matching.

**Singular vs plural**: Say the item in either form — the handler normalises plurals automatically.

**Adding without a zone**: If you don't say where to put it, the item is added to the manifest without a zone assignment. You can assign it a zone later in the Manifest screen.

---

## Related Articles
- [[Voice_Overview|Voice Overview]]
- [[Voice_Conversation|Multi-Turn Conversations]]
