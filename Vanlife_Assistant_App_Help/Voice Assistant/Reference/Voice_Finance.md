---
title: "Voice Finance Commands"
aliases:
  - "voice finance"
  - "log expense voice"
  - "voice spending"
  - "voice budget"
  - "voice balance"
  - "voice transactions"
  - "voice log diesel"
  - "voice log expense"
  - "how much money voice"
  - "budget voice"
  - "spending voice"
  - "voice financial"
  - "voice accounts"
  - "voice runway"
  - "voice liabilities"
  - "voice transfer"
  - "voice subscription"
  - "voice scheduled payment"
  - "voice log"
  - "speak to log"
category: "Voice"
type: "Reference"
tags: [help, vanlife-assistant, voice, finance, reference]
last_updated: "2026-02-23"
---

# 💷 Voice Finance Commands

The Finance handler covers everything money-related: logging new expenses, querying what you've spent, checking budgets and balances, calculating financial runway, and looking up scheduled payments.

---

## Logging an Expense

The most common use. Say the amount, vendor (optional), and any other detail you have. The handler always does a **two-step confirmation** before saving — you'll never accidentally log something from a mis-heard command.

**Examples:**
- *"Log diesel for fifty pounds"*
- *"I spent twenty quid at Lidl"*
- *"Paid four hundred euros for the campsite"*
- *"Add a sixty-pound subscription for Netflix"*

**The confirmation flow:**

1. You say the command. The handler parses amount, vendor, category (looked up from your existing categories), and account (looked up from your existing accounts). If the vendor was used before, it pulls the previous category and account automatically.

2. The assistant responds with something like: *"I'm ready to log £50 for Fuel. Should I go ahead?"* The overlay stays open listening for your answer.

3. Say *"yes"*, *"confirm"*, *"do it"*, *"go ahead"*, or *"yep"* to save. Say *"no"* or *"cancel"* to abort.

**If something is missing**, the assistant asks for it:
- *"How much is this for?"* — if no amount was heard
- *"What category should I put this under?"* — if no matching category found
- *"Which account did you use?"* — if no matching account found
- *"I don't have a category named 'X'. Shall I create it?"* — if you say a new category name

You can provide the missing info in your follow-up reply. For example, if the assistant asks "Which account?", just say *"Monzo"* and it will update the draft and re-check readiness.

---

## Querying Spend

### Total spend for a period
- *"How much did I spend last month?"*
- *"What did I spend in January?"*
- *"Total spending this week"*

### Spend by category
- *"How much have I spent on fuel?"*
- *"What did I spend on groceries last month?"*
- *"How much on food in December?"*

### Spend at a specific merchant/vendor
- *"How much did I spend at Lidl?"*
- *"What did I spend at the campsite this month?"*

The merchant query is smart: if you haven't spent anything at that vendor this month, it automatically checks all-time total and tells you both.

### Follow-ups after a spend query

After the assistant answers a spend query, you can ask for a breakdown in the same session:
- *"What about by category?"* — breaks down the same period by top 3 categories
- *"How about by merchant?"* — breaks down the same period by top 3 vendors

---

## Budget Queries

- *"What's left in my food budget?"*
- *"How much do I have left in fuel this month?"*
- *"Am I over budget on accommodation?"*

If you're under budget: *"You have £X left in your Fuel budget."*
If you're over: *"You are £X over your Fuel budget."*

---

## Account Balance

- *"What's my Monzo balance?"*
- *"How much is in my cash account?"*
- *"What's the balance of my Revolut?"*

The assistant matches account names from your saved accounts list.

---

## Financial Health

- *"How much money do I have?"*
- *"What's my financial health?"*
- *"What's my net worth?"*

Returns a summary across all accounts.

---

## Financial Runway

- *"How long will my money last?"*
- *"When will I run out of money?"*
- *"How many months of runway do I have?"*
- *"How old will I be when my money runs out?"* (calculates against your date of birth from your profile)

---

## Liabilities and Debt

- *"What are my total liabilities?"*
- *"How much debt do I have?"*
- *"What do I owe?"*

---

## Average Spend Queries

- *"What's my average fuel spend?"*
- *"How much do I typically spend on groceries?"*
- *"Average monthly spend on accommodation"*

Calculated across the last 3 months by default.

---

## Transfers Between Accounts

- *"Transfer twenty pounds from Cash to Monzo"*
- *"Move fifty euros from Revolut to Starling"*

Format: amount, source account, destination account.

---

## Scheduled / Subscription Payments

- *"When is my Netflix due?"*
- *"When do I need to pay my van insurance?"*
- *"When is my next subscription payment?"*

Returns the next due date and amount from your scheduled transactions list.

---

## Looking Up Past Transactions

- *"When did I buy a new tyre?"*
- *"What date did I pay for the ferry?"*
- *"When did I purchase that campsite?"*

Searches your ledger and returns the most recent matching entry with date and amount.

---

## Period Language

The handler understands natural time expressions. You can say:

- *"this month"* / *"last month"*
- *"this week"* / *"last week"*
- *"today"* / *"yesterday"*
- *"in January"* / *"in December"*
- *"this year"* / *"last year"*
- Specific date ranges: *"from January to March"*

---

## Tips and Edge Cases

**Multi-currency**: If you say *"paid four hundred euros"*, the currency is extracted and the transaction is logged in euros. Your base currency conversion is handled by the Finance module rules.

**Recurring subscriptions**: Saying *"set up a monthly Netflix subscription for £12"* creates a scheduled transaction rather than a one-off expense.

**Smart category detection**: If no category word is spoken but the vendor matches a previous transaction, the previous category is reused automatically — so saying *"spent thirty at Lidl"* will already know to use Groceries if that's what you used last time.

**Finance vs. other handlers**: The handler is careful not to steal non-financial uses of words like "service", "MOT", or "insurance" — those go to Van Specs or Documents unless you also say "cost", "budget", "pay", etc.

---

## Related Articles
- [[Voice_Overview|Voice Overview]]
- [[Voice_Conversation|Multi-Turn Conversations]]
