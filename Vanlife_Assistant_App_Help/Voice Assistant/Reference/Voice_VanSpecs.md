---
title: "Voice Van Specs Commands"
aliases:
  - "voice van specs"
  - "voice height"
  - "voice van height"
  - "will i fit voice"
  - "voice width"
  - "voice length"
  - "voice payload voice"
  - "voice tyre pressure"
  - "voice oil type"
  - "voice coolant"
  - "voice mot"
  - "voice van weight"
  - "voice dimensions"
  - "voice van dimensions"
  - "can i fit under"
  - "voice bridge clearance"
  - "voice fluids"
  - "van specs voice"
category: "Voice"
type: "Reference"
tags: [help, vanlife-assistant, voice, van-specs, reference]
last_updated: "2026-02-23"
---

# 🚐 Voice Van Specs Commands

The Van Specs handler gives you instant access to your vehicle's technical data while driving, parking, or doing maintenance — all without stopping to look anything up.

---

## Dimensions

### Height
- *"What's my van height?"*
- *"How tall is the van?"*
- *"What height is the van?"*

Returns the height in metres from your Van profile.

### Width
- *"How wide is the van?"*
- *"What's the width?"*
- *"Van width"*

### Length
- *"How long is the van?"*
- *"What's the van length?"*
- *"Length of the van?"*

---

## Bridge and Clearance Checks

The most safety-critical voice command. If you're approaching a low bridge, ask before committing:

- *"Will I fit under a 3.2 metre bridge?"*
- *"Can I fit under 10 feet?"*
- *"Is there clearance at 3.5 metres?"*

The handler extracts the clearance value from your question, compares it to your van's recorded height, and gives a clear yes/no with the actual van height:

> *"Yes, you should fit. The clearance is 3.2m and the van is 2.85m."*

or:

> *"No! It's too tight. The van is 3.1m."*

If a clearance number isn't in your question, it returns the van height directly: *"The van height is 2.85 metres."*

---

## Weight and Payload

- *"How heavy is the van?"*
- *"What's my payload capacity?"*
- *"What's the gross weight?"*

Returns the gross vehicle weight and estimated payload capacity (gross minus recorded curb weight) from your Van profile.

---

## Tyre Pressures

- *"What tyre pressure should I use?"*
- *"What PSI should my tyres be?"*
- *"Front tyre pressure"* / *"Rear tyre pressure"*

Returns front and rear pressures as set in your Van profile.

---

## Fluid Types

### Engine oil
- *"What oil does my van take?"*
- *"What type of oil?"*

Returns the oil specification from your Van profile.

### Coolant
- *"What coolant does it use?"*
- *"Coolant type"*

---

## Compliance Dates

### MOT
- *"When is my MOT due?"*
- *"MOT expiry"*
- *"When does the MOT expire?"*

Returns the MOT due date from your Van profile, formatted as a full date.

---

## Contextual Follow-ups

After the first van specs question in a session, the handler remembers the subject. You can follow up with a shorter phrase without repeating the full question:

1. *"What's my van height?"* → handler remembers context: dimensions
2. *"And the width?"* → understood as another dimensions query

This works for follow-up questions about dimensions, weight, tyres, fluids, compliance, and economy.

---

## Tips

**Data must be set up first**: All of these answers come from your Van profile (Van section → Van Profile and Setup). If a value isn't saved there, the assistant will say "I don't have that saved" rather than guessing.

**MOT and tax clarification**: If you ask about MOT or insurance without any expiry language, the query may go to the Finance handler (if it looks like a cost question) or the Document handler (if it looks like a document lookup). Add "due", "expiry", or "expires" to ensure it's routed here.

**Multiple vans**: The handler uses the first van found in your profile data. If you manage a fleet, voice queries go to the first vehicle. Use the Van section on screen to switch between vehicles for more precise queries.

---

## Related Articles
- [[Voice_Overview|Voice Overview]]
- [[Van_Profile_and_Setup|Van Profile and Setup]]
