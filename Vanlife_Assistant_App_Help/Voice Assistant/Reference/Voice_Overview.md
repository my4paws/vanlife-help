---
title: "Voice Assistant Overview"
aliases:
  - "voice assistant"
  - "voice overview"
  - "how voice works"
  - "voice commands"
  - "microphone"
  - "voice orb"
  - "voice overlay"
  - "start listening"
  - "stop listening"
  - "speaking mode"
  - "voice status"
  - "listening"
  - "thinking"
  - "voice hints"
  - "voice history"
  - "voice chime"
  - "speech synthesis"
  - "text to speech"
  - "voice speed"
  - "voice settings"
  - "british voice"
  - "voice onboarding"
  - "speech recognition"
  - "on device"
  - "offline voice"
category: "Voice"
type: "Reference"
tags: [help, vanlife-assistant, voice, overview, reference]
last_updated: "2026-02-23"
---

# 🎙️ Voice Assistant Overview

## What It Is

The voice assistant is a hands-free co-pilot built directly into the app. You can log expenses, find gear, control Smart Van devices, switch modes, manage your checklist, and check travel stats without touching the screen. It runs entirely on-device — no internet required, no data sent to external servers.

---

## Opening the Voice Overlay

The voice overlay is accessible from any screen via the **microphone button** in the main toolbar. Tapping it opens the overlay immediately and begins listening.

A three-step onboarding flow explains the feature the first time it's opened. After that, tapping the mic button goes straight to the overlay.

---

## The Voice Overlay

The overlay fills the screen over an ultra-thin material background. Tapping the background anywhere dismisses it.

### The Orb

The centrepiece of the overlay is an animated glowing orb — a blurred, slowly rotating angular gradient ring with a white core. The orb serves as both status indicator and tap target:

- **Pulsing gently** = Ready, waiting for you to tap and speak
- **Expanding and contracting** = Listening (the orb's scale responds in real-time to your voice volume — louder speech makes it larger)
- **Larger and steady** = Speaking a response
- **Tap the orb** to start or interrupt and restart listening at any time. Tapping also stops any currently-playing spoken response.

**Orb colours** shift to reflect what domain the most recent command was about:
- **Orange / pink / purple / cyan** (default Siri-like multicolour) — general or unknown
- **Green / mint / teal** — finance
- **Blue / cyan / indigo** — Smart Van
- **Orange / brown / yellow** — inventory/manifest
- **Red / orange / pink** — emergency keywords detected

The colour transition animates smoothly over one second.

---

### Status Text

Below the orb, a status line shows what the assistant is currently doing:

- **"Ready"** — idle, waiting for the orb to be tapped
- **Live transcript** — your words appear in real-time as you speak (partial results from the speech recogniser)
- **"Listening..."** — recogniser is active but no speech yet
- **"Thinking..."** — the command has been captured and is being processed
- **"Speaking..."** — the assistant is reading out a response

---

### Hints

When the assistant is idle (not listening, not processing, not speaking), a rotating set of example prompts cycles every 5 seconds just above the orb:

> *Try saying: "Log diesel for £50"*

The hints rotate through: log diesel, where is the first aid kit, am I overweight, how much money do I have, start a trip to Spain, add a task to check tyres, what's my burn rate. These disappear as soon as you start speaking.

---

### Conversation History

The overlay maintains a short conversation history — the last few turns, displayed as chat bubbles. Your words appear as blue bubbles on the right; the assistant's responses appear as accent-coloured bubbles on the left.

The history scrolls from the bottom and fades in at the top with a gradient mask. When the assistant is actively speaking a response, the text is shown as a live word-by-word **TextReveal** — each word appears highlighted in orange as it's spoken, then settles to white. The bubble for that response doesn't appear in the history until after the speech is complete, preventing a confusing "flash" of text while the voice is playing.

---

### Closing the Overlay

- Tap the **✕ button** at the bottom
- Tap anywhere on the background
- Say a closing phrase: *"bye"*, *"stop"*, *"done"*, *"that's all"*, *"exit"*, *"cancel"*, *"finished"*, *"nothing"*

---

## How a Command Is Processed

1. **You tap the orb.** A medium haptic fires. A start-of-recording chime plays through the media volume channel (not the ringer, so Do Not Disturb doesn't mute it).

2. **The microphone activates.** The iOS Speech Recognition framework begins transcribing on-device in real-time. Your words appear live on screen.

3. **Silence detection.** When you stop speaking for 1.5 seconds, the recogniser considers the command complete. A light haptic fires and an end-of-recording chime plays.

4. **Transcript normalisation.** The raw transcript is cleaned: common mis-hearings are corrected ("whatsapp" → "what's at", etc.), filler prefixes ("can you", "could you", "tell me") are stripped.

5. **ML classification.** A custom on-device machine learning model (CreateML text classifier) predicts the intent from the cleaned text. If confidence is above 75%, the predicted intent is passed to the router. Below 75%, it's discarded and the router falls back to strict keyword/regex matching only.

6. **Intent routing.** Seven specialist handlers are each offered the text. Each returns a confidence score (none / low / medium / high / exact). The router picks the highest-confidence handler — or the first one to return "exact". If no handler reaches medium confidence or higher, the system falls back.

7. **Handler execution.** The winning handler reads from SwiftData, performs any logic, and returns a `VoiceResponse` with spoken text and an optional app action (switch tab, navigate to item, open sheet, close overlay).

8. **Apple Intelligence fallback.** If no handler matches, the system optionally tries an on-device Apple Intelligence (Foundation Models) query. This handles open-ended questions the specialist handlers don't cover. Only available on compatible hardware.

9. **Speech synthesis.** The response text is spoken by AVSpeechSynthesizer using a British English voice. The preferred voice order is: Martha (if available), Serena (premium en-GB), Kate (enhanced en-GB), Malcolm (premium en-GB), then any enhanced en-GB voice. Speed is read from **Settings → Voice Speed**.

10. **App action.** If the response includes an action (e.g. navigate to a specific ledger entry, switch to the Dashboard tab), it executes immediately — whether or not the overlay is still open.

---

## Voice Speed Setting

Speech rate is configurable in Settings → Voice. The rate is stored as a float and applied to every AVSpeechUtterance. The default is 0.50 (slightly below the iOS default of 0.5 to ensure clarity, though in practice 0.50 is the same). Increase for a faster pace, decrease for slower.

---

## Privacy

All speech recognition runs on-device using Apple's SFSpeechRecognizer with `requiresOnDeviceRecognition = true`. No audio or transcripts are sent to any external server. The on-device ML model is bundled with the app.

---

## Related Articles
- [[Voice_Finance|Finance Commands]]
- [[Voice_Inventory|Inventory Commands]]
- [[Voice_SmartVan|Smart Van Commands]]
- [[Voice_Whiteboard|Whiteboard Commands]]
- [[Voice_Documents|Document Commands]]
- [[Voice_VanSpecs|Van Specs Commands]]
- [[Voice_Travel|Travel Commands]]
- [[Voice_Conversation|Multi-Turn Conversations]]
