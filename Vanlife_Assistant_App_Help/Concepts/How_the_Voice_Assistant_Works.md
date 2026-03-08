---
title: "How the Voice Assistant Works"
aliases:
  - "voice assistant concept"
  - "how voice assistant works"
  - "voice assistant explained"
  - "how to talk to the assistant"
  - "assistant conversation model"
  - "voice context"
  - "what can the assistant do"
  - "voice assistant access"
  - "assistant data access"
  - "multi-turn voice"
category: "Concepts"
type: "Reference"
tags: [help, vanlife-assistant, concepts, voice, assistant, ai, reference]
last_updated: "2026-03-08"
---

# 🎙️ How the Voice Assistant Works

The Voice Assistant is not a keyword detector. It understands natural language, remembers what you said a moment ago, and can ask clarifying questions when it needs more information. This article explains the conversation model, what context the assistant can see, and how to get the best results from it.

---

## Opening the Assistant

Tap the **Assistant tab** (the sparkle icon) from anywhere in the app. The assistant opens as a full-screen overlay. You can speak or type — both work identically.

Close the assistant with the dismiss gesture at any time. Your conversation history for the current session is visible in the chat view above the input field.

---

## How It Understands You

When you speak or type, the assistant processes your message in two ways simultaneously:

**App context is assembled first.** Before your words reach the AI, the app compiles a structured summary of your current data — your active van's specs, maintenance status, the current month's financial summary, your active trip, your whiteboard tasks, and your manifest inventory. This context block is sent alongside your message so the AI has access to your actual data, not just general knowledge.

The context covers six sections:
- Vehicle specs (dimensions, weights, fluids, odometer)
- Maintenance and document alerts
- Finance and budget summary (current month's spending vs active plan)
- Trip and location (active trip, recent check-ins)
- Active tasks and shopping lists (from the Whiteboard)
- Cargo manifest (items and their zones, up to 50 items)

**Your message is then interpreted in that context.** The AI sees both your words and your data simultaneously, which is why it can answer questions like "how much have I spent on food this month?" or "where's the first aid kit?" — it's reading from your actual records, not guessing.

---

## Multi-Turn Conversations

The assistant maintains context across turns within a session. This works differently depending on what you asked:

**Simple queries** — "what's my budget remaining?" — are answered in one turn. The session history shows as context if you ask a follow-up.

**Complex requests** — logging a check-in, logging a transaction, creating a manifest item — are handled as multi-step flows. The assistant asks for any missing information in sequence:

For a check-in, it might ask: what type of spot? → what shall I call it? → are you staying overnight? → how would you rate it?

For a transaction, it might ask: how much? → what category? → which account?

At each step, the assistant is holding the partially-built record in memory (a `PendingCheckIn`, `PendingTransaction`, etc.) and filling in fields as you confirm them. You can answer in any natural phrasing — "wild camp", "it's a wild camp", "we're wild camping" all work for the spot type.

**Financial follow-ups** have a specific memory pattern. After a query like "how much did I spend on fuel last month?", the assistant remembers you were asking about fuel. A follow-up of "what about this month?" will be interpreted in that context, not as a completely new question.

---

## What the Assistant Can Access

The assistant's access to your data comes from two sources:

**Live context (assembled each session)** — the six-section summary described above. This is generated fresh each time you open the assistant and reflects your current data. It includes the active van's key specs, recent financial data, active trip details, whiteboard tasks, and manifest items.

**Direct database queries** — for certain specific queries (Schengen status, document lookup, spot searches), the assistant uses dedicated lookup services that query your SwiftData database directly rather than relying on the context summary.

**What the assistant can do:**

- Answer questions about your spending (this month, last month, by category, by trip)
- Log a new expense or income transaction
- Find items in the manifest by name
- Report on manifest zone contents or total weight
- Find and open a Glovebox document
- Create a check-in at your current location
- Check your Schengen status
- Search for nearby spots
- Add or check off items on the Whiteboard
- Answer questions about your van's specs, tyre pressures, fluids
- Report on maintenance task status
- Open help articles by topic
- Navigate to specific sections of the app

**What the assistant cannot do:**

- Access your camera roll or photos
- Create or edit trip or expedition records (beyond check-ins)
- Modify ledger history
- Access external services or the internet
- See data from vans other than the currently active one
- See more than 50 manifest items in a single session (the context is capped to keep it manageable)

---

## Tips for Getting the Best Results

**Be specific about amounts and categories.** "Spent 45 euros on groceries at Lidl" gives the assistant everything it needs. "Spent some money" will result in follow-up questions.

**Name the thing you're looking for.** "Where's the first aid kit?" works. "Where's the medical stuff?" might work, but "kit" in the item name is a more reliable match.

**Follow-ups work best immediately.** The session context carries conversation history, but it degrades with many turns. "What about last week?" is a strong follow-up right after a spending query; after several unrelated turns, it's better to re-state the question.

**Use natural spoken language.** The assistant is designed for conversational input — the phrasing you'd use talking to another person in the van. You don't need to learn command syntax.

**Corrections work mid-flow.** If the assistant asks "what category?" and you say "actually, make it fuel", it will update the pending transaction. You can change your answer at any point in a multi-step flow before confirming.

---

## App Intents — The System-Level Shortcuts

Beyond the conversational overlay, the assistant also exposes its capabilities to iOS through **App Intents** — system-level actions that Siri and the Shortcuts app can call. This means you can set up a Siri shortcut to log an expense, check your Schengen status, or find a manifest item without opening the app at all.

→ See the Voice Assistant reference articles for the full list of what you can ask:
- [[Voice — Finance and Spending]]
- [[Voice — Travel and Check-ins]]
- [[Voice — Inventory and Manifest]]
- [[Voice — Documents and Glovebox]]
- [[Voice — Van Specs and Maintenance]]
