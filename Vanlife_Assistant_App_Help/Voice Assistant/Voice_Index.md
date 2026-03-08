---
title: "Voice Assistant Index"
aliases:
  - "voice index"
  - "voice help"
  - "voice assistant help"
  - "voice commands list"
  - "what can voice do"
  - "voice assistant"
  - "voice features"
  - "hands free"
  - "microphone"
  - "speak to app"
  - "voice"
category: "Voice"
type: "Index"
tags: [help, vanlife-assistant, voice, index]
last_updated: "2026-02-23"
---

# 🎙️ Voice Assistant

The voice assistant is a hands-free co-pilot that understands natural language questions and commands across every section of the app. It runs entirely on-device — no internet connection required.

---

## What Can You Do?

Here's a quick flavour of the things you can ask:

- *"Log diesel for fifty pounds"*
- *"Where is the first aid kit?"*
- *"Am I overweight?"*
- *"Good night"* (switches to Sleep mode)
- *"Remind me to buy gas canisters"*
- *"When does my passport expire?"*
- *"Will I fit under a 3.2 metre bridge?"*
- *"What's my Schengen status?"*
- *"Turn on the kitchen lights"*
- *"How much did I spend on fuel last month?"*

---

## Getting Started

→ [[Voice_Overview|Voice Overview]] — How the overlay works, the orb, the listening cycle, status indicators, speech synthesis, and privacy.

---

## Command Reference

### 💷 Finance
→ [[Voice_Finance|Finance Commands]]

Log expenses, query spending by category or merchant, check account balances, calculate runway, look up scheduled payments, and transfer funds.

### 📦 Inventory
→ [[Voice_Inventory|Inventory Commands]]

Find gear, add/move/delete items, check zone weights, run readiness checks, and audit expiring or unverified items.

### 🏠 Smart Van
→ [[Voice_SmartVan|Smart Van Commands]]

Switch van modes, control lights (on/off/brightness/colour), query temperatures and humidity, get a full van status report.

### ✅ Whiteboard
→ [[Voice_Whiteboard|Whiteboard Commands]]

Add tasks to your to-do list or shopping list, with optional due dates and location-based reminders.

### 📁 Documents
→ [[Voice_Documents|Document Commands]]

Find documents in your Glovebox, check expiry dates, and get a proactive list of everything expiring in the next 90 days.

### 🚐 Van Specs
→ [[Voice_VanSpecs|Van Specs Commands]]

Ask about van height, width, length, payload, tyre pressures, oil type, coolant, and MOT date. Includes bridge clearance checks.

### 🗺️ Travel
→ [[Voice_Travel|Travel Commands]]

Log a location check-in, ask where you are, check Schengen days used/remaining, get your return-to-Europe date, and query trip statistics.

---

## Advanced: How It Works

→ [[Voice_Conversation|Multi-Turn Conversations]] — Context chaining, two-step confirmations, closing phrases, Apple Intelligence fallback, speech normalisation, and ML confidence gating.

---

## How the System Decides What You Mean

Every command passes through three layers:

1. **On-device ML classifier** — A custom model trained on vanlife phrases predicts the intent category with a confidence score. Only predictions above 75% are used; uncertain predictions are discarded.

2. **Seven specialist handlers** — Finance, Inventory, Van Specs, Navigation/Travel, Documents, Whiteboard, Smart Van. Each handler independently scores its confidence that it can handle the text. The highest-confidence handler wins.

3. **Apple Intelligence fallback** — For anything none of the seven handlers can claim, on-device Foundation Models handle open-ended questions. Requires compatible hardware.

---

## Permissions Required

The voice assistant needs two iOS permissions:

- **Microphone** — to capture your voice
- **Speech Recognition** — to transcribe it on-device

Both are requested the first time the microphone button is tapped. If either is denied, voice commands won't work. Update permissions in iOS Settings → Privacy → Microphone / Speech Recognition.

---

## Tips for Best Results

**Speak clearly and at a normal pace.** The recogniser handles accents well, but very fast or mumbled speech may mis-transcribe.

**You can interrupt.** Tap the orb at any time — even while the assistant is speaking — to stop playback and start a new command.

**Short and direct wins.** *"Van height"* works just as well as *"Can you please tell me what the height of my van is?"* (filler words are stripped anyway, but shorter is clearer).

**Use exact device names for Smart Van.** *"Turn on Kitchen Strip"* works; *"turn on the light in the kitchen area"* may not match if your device isn't named that way.

**Check your data first.** Van Specs, Finance, and Inventory answers come from your saved data. If something seems wrong, check that the value is set in the relevant section.
