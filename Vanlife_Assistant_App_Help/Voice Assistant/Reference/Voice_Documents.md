---
title: "Voice Document Commands"
aliases:
  - "voice documents"
  - "voice glovebox"
  - "voice passport"
  - "voice document expiry"
  - "find document voice"
  - "voice document search"
  - "voice expiry"
  - "voice renewals"
  - "what expires voice"
  - "voice passport expiry"
  - "voice insurance expiry"
  - "voice v5c"
  - "open document voice"
  - "voice find passport"
  - "voice document lookup"
category: "Voice"
type: "Reference"
tags: [help, vanlife-assistant, voice, documents, glovebox, reference]
last_updated: "2026-02-23"
---

# 📁 Voice Document Commands

The Document handler lets you search your Glovebox, check document expiry dates, and get a proactive alert about everything that's expiring soon — all by voice.

---

## Finding a Document

Ask the assistant to find or show any document stored in your Glovebox.

**Examples:**
- *"Find my passport"*
- *"Show me Vikki's driving licence"*
- *"Get the van insurance"*
- *"Open the V5C"*
- *"Find my breakdown cover"*

The handler searches document titles, categories, tags, and owner names. If exactly one document matches, it opens immediately with: *"I found your [Document]. Opening it now."*

### Name normalisation

A small set of common name phonetics are corrected automatically. For example:
- "Vicky" and "Vickie" → matches documents owned by "Vikki"
- "Daz" and "Darrens" → matches documents owned by "Darren"

---

## Disambiguation: Multiple Matches

If more than one document matches (e.g. you say "passport" but there are two passports — one for each person), the assistant asks for clarification:

> *"I found multiple matches. Did you mean the one for Darren or Vikki?"*

The overlay keeps listening. Say a name, a category, or any other detail to narrow it down:
- *"Vikki"*
- *"The one that's expired"*
- *"The UK one"*

The handler refines the candidates and either opens the document if it's now unambiguous, or asks again with the narrowed-down options.

---

## Checking a Specific Document's Expiry

Ask when a particular document expires or whether it's still valid.

**Examples:**
- *"When does my passport expire?"*
- *"Is my driving licence still valid?"*
- *"When is the van insurance due?"*
- *"Check the MOT expiry"*
- *"When does my V5C need renewing?"*

The assistant looks up the document, checks its expiry date, and tells you: how many days remain, the exact expiry date, and whether it's already expired.

---

## Listing All Expiring Documents

Get a proactive overview of everything that needs attention in the next 90 days.

**Examples:**
- *"What documents expire soon?"*
- *"What do I need to renew?"*
- *"List everything expiring"*
- *"Any renewals coming up?"*
- *"What's due for renewal?"*

The response covers two groups: documents that have **already expired**, and documents **expiring within the next 90 days**. The most urgent item is highlighted.

Example response:
> *"Attention: Your European Health Insurance Card has expired. Coming up, your passport expires in 43 days. You have 2 other documents due soon after."*

If everything is fine: *"Everything looks good! You have no documents expiring in the next 3 months."*

---

## Tips

**"MOT" and "insurance" routing**: These words are normally intercepted by the Van Specs handler. To force a glovebox lookup, include words like "expiry", "expire", "valid", or "document" in your query — that signals you want the Glovebox version rather than a quick specs answer.

**Document categories**: The search checks document titles, categories, and tags. If a document isn't being found, check what category and tags it was saved with in the Glovebox screen.

**Owner-based search**: If you store documents per traveller, using the person's name is the fastest way to find their documents: *"Find Darren's driving licence"* or *"Show me Vikki's passport"*.

---

## Related Articles
- [[Voice_Overview|Voice Overview]]
- [[|The Glovebox]]
