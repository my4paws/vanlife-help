---
title: "The Ledger — How Spending Is Recorded"
aliases:
  - "ledger concept"
  - "how the ledger works"
  - "how spending is recorded"
  - "ledger explained"
  - "transactions explained"
  - "money system concept"
  - "how money works"
  - "how expenses work"
category: "Concepts"
type: "Reference"
tags: [help, vanlife-assistant, concepts, money, ledger, spending, accounts, categories, reference]
last_updated: "2026-03-08"
---

# 💰 The Ledger — How Spending Is Recorded

The Ledger is the core of Vanlife Assistant's money system. Every transaction you make on the road — fuel, campsites, food, repairs, income — lives here.

This article explains the structure of the Ledger and the three pillars it's built on: transactions, categories, and accounts.

---

## The Big Picture

The money system has four layers, each serving a different purpose:

```
Accounts      — where money lives (your bank, savings, wallet)
 └── Ledger   — every transaction, flowing between accounts
      └── Categories  — what the money was spent on
           └── Scenarios — what you planned to spend
```

At the bottom of everything is the **Ledger** — a chronological log of every individual transaction. Above it are the organisational structures (categories, category groups) that let you understand your spending. Above those are the planning tools (scenarios, runway) that help you project the future.

---

## Transactions — The Atomic Unit

Every record in the Ledger is a **transaction** with a handful of fields:

**Amount** — the value in your home currency. The app stores all transactions in a single base currency so that charts, totals, and comparisons always work without conversion. If you paid in a foreign currency, you enter the amount you actually paid and record the original currency separately — the home-currency amount is what feeds all your statistics.

**Kind** — whether this is an expense, income, or a transfer between accounts.

**Date** — when it happened. This can be backdated freely, which is useful when you're catching up at the end of a day.

**Category** — what type of spending this was (Fuel, Food, Accommodation, etc.). Every transaction should have one.

**Vendor** — where or to whom you paid. This is a free-text field — you type it in, and the app remembers what you've typed before to offer suggestions. There's no fixed list of vendors; you're not locked into a directory. This is intentional: vendor names on the road vary enormously by country and context, and a rigid list would create more friction than it removes.

**Memo** — a freeform note. Useful for anything that doesn't fit elsewhere.

**Account** — which of your accounts this came from or went into.

**Location** — if you have location access enabled, the transaction can be tagged with GPS coordinates and a place name. This lets the app show your spending on a map and contributes to the Schengen calculator.

**Trip assignment** — transactions can be assigned to a specific expedition, so that Trip Detail View can show you exactly what you spent during that journey.

**Van** — every transaction is optionally linked to your active van at the time. This matters when you have multiple vans and want to see running costs separately.

---

## Vendors — Why They're Free Text

This surprises some people who expect a dropdown of shops and restaurants. Vendors in Vanlife Assistant are plain text strings stored on each transaction, not a separate entity with its own record.

This is a deliberate design choice. The benefit of free text is that you record what you actually see on the receipt or remember from the visit — "Intermarché Rodez", "Campsite Stellplatz €12", "Spanish toll A7" — without having to match it to a pre-existing entry. The app learns from your past entries and suggests completions, giving you the speed of autocomplete without the rigidity of a fixed list.

The tradeoff is that filtering by vendor requires spelling to be consistent across entries. The search and filter tools in the Ledger support vendor text matching, so "Aldi" will find all your Aldi entries as long as you've spelled it the same way each time.

---

## Categories — What Money Is For

Every transaction belongs to a **category**. Categories are the answer to "what did I spend this on?"

Categories are organised into **category groups** — higher-level buckets like Transport, Food & Drink, Accommodation, Van, and Entertainment. This two-level structure lets you see both the detail (exactly how much on fuel vs tolls vs ferry) and the summary (total Transport this month).

Categories can be marked as **vehicle expenses** — specifically Fuel, Maintenance, or Repair — which separates your van's running costs from your living costs in the analysis views. Your true cost of living and your vehicle's cost of ownership are very different numbers, and the category system is what keeps them separate.

Categories can also be set to **exclude from trip totals** by default. Some recurring costs (standing orders, home subscriptions) don't represent van travel spending, and this flag prevents them cluttering trip reports.

You can create custom categories and category groups to match how you actually think about your spending.

---

## Accounts — Where Money Lives

An **Account** represents a real financial account: a bank account, a savings pot, a credit card, a cash wallet. Every transaction is drawn from (or deposited into) one of your accounts.

Accounts have a balance. The app tracks this balance as transactions are entered — spending reduces it, income increases it. The combined balance across all accounts is your net worth, shown in the Net Worth view.

Accounts have a type — Easy Access, Fixed Term, ISA, Current, Credit Card, and others — which determines how they're categorised in the Net Worth breakdown and whether they're included in the runway calculation.

Two account-level flags matter for the financial planning tools:
- **Include in Net Worth** — whether this account's balance contributes to your total
- **Include in Runway** — whether this account's funds are considered available for day-to-day spending in the runway projection

A locked pension pot, for example, would be included in net worth but excluded from the runway calculation, since you can't actually spend it today.

---

## Scheduled Transactions

Beyond manual entries, the Ledger supports **scheduled transactions** — recurring entries that you set up once and the app generates automatically on the right dates. Monthly subscriptions, rent, regular transfers.

Scheduled transactions appear in the Ledger as future entries until they're due, at which point they become real transactions. You can review and confirm them, or mark them as paid early.

---

## Importing Transactions

The Ledger supports CSV import for batch-loading transaction history. The import wizard walks you through mapping columns from your bank's export format to the app's fields. This is useful both for setting up an initial history and for periodically syncing transactions from your bank without manual entry.

→ See [[Importing Transactions from a CSV File]] for the step-by-step process.

---

## Multi-Currency

If you pay in a foreign currency, the app supports recording both the original amount and currency alongside the home-currency value. The home-currency amount is what feeds all charts and totals; the original currency is stored for reference and for understanding what you actually handed over.

---

## How the Ledger Feeds Everything Else

The Ledger is not just a log — it's the data source for most of the Money tab's intelligence:

- **Monthly reports** — income vs expenses by month, trend charts
- **Category breakdowns** — treemaps and lists of where money went
- **Scenario comparison** — actual spending vs your budget plans
- **Runway projection** — the average monthly burn rate fed from recent ledger history
- **Schengen calculator** — transactions with country codes contribute to the 90-day window
- **Trip spending** — each expedition's cost totalled from its assigned transactions
- **Voice queries** — "how much did I spend on food this month?" reads directly from the Ledger

---

## Related Articles

- [[Accounts, Categories and Vendors]] — *Reference guide to each field*
- [[Scenarios and Financial Forecasting]] — *How budget plans and projections work*
- [[The Ledger View]] — *The transaction list UI*
- [[Mastering Ledger Search & Filters]] — *Finding and filtering transactions*
- [[Importing Transactions from a CSV File]] — *Batch importing from your bank*
- [[Scheduled Transactions]] — *Recurring entries*
