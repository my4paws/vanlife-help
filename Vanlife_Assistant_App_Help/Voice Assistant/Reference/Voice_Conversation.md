---
title: "Voice: Multi-Turn Conversations"
aliases:
  - "voice multi turn"
  - "voice conversation"
  - "voice follow up"
  - "voice context"
  - "voice chaining"
  - "voice and what about"
  - "voice apple intelligence"
  - "voice fallback"
  - "voice unknown command"
  - "voice closing"
  - "voice cancel"
  - "voice bye"
  - "voice conversation history"
  - "voice confirm"
  - "voice yes no"
  - "voice pending"
  - "voice two step"
  - "voice normalisation"
  - "voice filler words"
  - "voice misheard"
  - "voice confidence"
  - "voice ml model"
category: "Voice"
type: "Reference"
tags: [help, vanlife-assistant, voice, conversation, multi-turn, reference]
last_updated: "2026-02-23"
---

# 🔄 Voice: Multi-Turn Conversations

The voice assistant isn't a simple command-response system — it carries conversational context between turns, allowing you to ask natural follow-up questions, fill in missing information, and chain related queries without repeating yourself.

---

## Conversational Context Chaining

After a successful command, the assistant remembers what topic you were discussing. You can then ask a follow-up with just a fragment:

**Example:**
1. *"How much did I spend on fuel?"* → *"You spent £82 on Fuel this month."*
2. *"What about last month?"* → (interpreted as "How much did I spend on fuel last month?")
3. *"And the month before?"* → (same, two months back)

**How it works**: The assistant extracts the "action prefix" from your first command (e.g. "how much did i spend on") and stores it. If your next command starts with *"what about"*, *"how about"*, or *"and"*, the prefix is prepended to your fragment before routing.

The system is careful about grammar: if the stored prefix ends in "the" and your fragment starts with "the", the duplicate is dropped.

Stored context prefixes include: "how much did i spend on", "how much money do i have in", "where is the", "where are the", "how much", "how many", "add", "log", and others.

---

## Pending State and Two-Step Confirmation

Some handlers keep a **pending state** open across turns. The most common is the Finance handler's two-step expense confirmation.

**Example:**
1. *"Log fifty quid at Lidl"* → *"I'm ready to log £50 for Groceries from Monzo. Should I go ahead?"* [listening again]
2. *"Yes"* → saved; *"Confirmed. Logged £50 for Groceries."*

or:

2. *"Actually make it sixty"* → updates the amount, re-prompts with the corrected draft
3. *"Yes"* → saved

The overlay continues listening after prompts that have `shouldListenAgain: true`. It stops listening once a final response is returned or you say a closing phrase.

Other pending states that work the same way:
- **Document disambiguation**: The assistant found multiple documents and is waiting for you to specify which one.
- **Manifest CRUD**: Some multi-step manifest operations ask confirming questions.

---

## Closing Phrases

If the assistant is **not** in a pending state awaiting a specific answer, saying any of these exits the overlay immediately:

*"no"*, *"nope"*, *"nah"*, *"nothing"*, *"that's all"*, *"that's it"*, *"stop"*, *"exit"*, *"bye"*, *"cancel"*, *"done"*, *"finished"*

If the assistant **is** awaiting a specific response (e.g. "Should I go ahead?"), saying "no" or "cancel" is interpreted as a refusal to that specific prompt, not as a request to close. After the refusal is handled, the overlay returns to the ready state.

---

## Politeness Responses

The assistant handles social pleasantries gracefully:
- *"Thank you"* / *"Cheers"* / *"Good job"* → *"You're welcome!"* / *"Happy to help."* / *"Anytime!"* then closes
- *"Hello"* / *"Hi"* → random greeting, stays open

These use a small set of randomised phrases to avoid sounding robotic.

---

## Unknown Commands

If no handler matches and Apple Intelligence is unavailable or fails, the assistant says a randomised fallback like:

> *"I'm not sure I caught that. Try asking about your budget, van specs, or inventory."*

The unrecognised command is logged internally so training data can be improved.

---

## Apple Intelligence Fallback

If all seven specialist handlers return below-medium confidence, the assistant attempts to answer using on-device Apple Intelligence (Foundation Models). This handles open-ended questions, explanations, and queries that don't fit any specific domain — for example, *"What's the longest tunnel in Europe?"* or *"Read me my to-do list."*

This feature requires compatible hardware. On incompatible devices, unknown commands fall straight to the error phrase.

---

## Speech Normalisation

Before any routing, the raw iOS transcript is cleaned by `SpeechTranscriptNormalizer`:

**Known mis-hear corrections**:
- "Whatsapp" / "Whats app" / "What sap" → "What's at" (for manifest zone queries like "What's at the kitchen?")

**Filler word stripping** (removed from the start of a phrase only):
- "can you", "could you", "would you", "please", "tell me", "show me", "i want to know", "i'd like to know", "do you know"

**Location phrasing normalisation**:
- "What's at the kitchen?" → "What's in the kitchen?" (routes correctly to zone contents)

This normalisation happens before ML classification and routing, so the handlers only see clean, intent-bearing text.

---

## ML Confidence Gating

The on-device ML classifier (a custom CreateML text classifier trained on vanlife command phrases) predicts the intent category for every command. However, its prediction is only trusted if confidence is **75% or above**.

If confidence is below 75%, the ML prediction is hidden from the routing system, and handlers must match using their own keyword/regex rules. This prevents the ML model from "guessing" ambiguous phrases into the wrong category — a low-confidence ML hit is more likely to cause confusion than to help.

When the ML model is confident, it helps the router claim commands that don't contain obvious keywords — for example, a colloquial phrasing that doesn't literally contain the word "fuel" but the model correctly identifies as a finance/category query.

---

## Conversation History Limit

The overlay shows the last 4 turns of conversation history (displayed as chat bubbles). Older turns are automatically dropped. This keeps the visual clean without losing context that's relevant to the current exchange.

The assistant's `VoiceSessionContext` holds per-domain state: pending finance transactions, pending document disambiguation, pending manifest operations, last query type, and context chaining prefix. This context resets when the overlay is closed.

---

## Related Articles
- [[Voice_Overview|Voice Overview]]
- [[Voice_Finance|Finance Commands]]
- [[Voice_Inventory|Inventory Commands]]
- [[Voice_Documents|Document Commands]]
