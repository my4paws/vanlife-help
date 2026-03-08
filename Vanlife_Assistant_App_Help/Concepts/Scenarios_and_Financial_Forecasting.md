---
title: "Scenarios and Financial Forecasting"
aliases:
  - "scenarios explained"
  - "financial forecasting"
  - "runway explained"
  - "budget scenarios concept"
  - "how scenarios work"
  - "what-if events"
  - "runway concept"
  - "financial planning concept"
  - "how forecasting works"
  - "budget vs actual"
category: "Concepts"
type: "Reference"
tags: [help, vanlife-assistant, concepts, money, scenarios, forecasting, runway, budget, reference]
last_updated: "2026-03-08"
---

# 📊 Scenarios and Financial Forecasting

Vanlife Assistant's financial planning system is unusual for a mobile app. It goes considerably further than simple budgeting — it simulates your financial future, accounting for inflation, interest, and one-off events, to tell you how long your money will last.

This article explains how the whole system fits together and why it works the way it does.

---

## The Three-Layer Planning System

The money planning tools work in three layers, each building on the one below:

```
What-If Events    — specific future things that will happen
 └── Scenarios    — how much you plan to spend each month
      └── Runway  — how long your money lasts at that rate
```

**Scenarios** define your monthly budget plan. **Runway** simulates how long your savings will last given that plan. **What-If Events** let you add specific future income or expenses on top of the base simulation.

---

## Scenarios — Your Budget Plans

A **Scenario** is a named set of monthly spending targets, one per category. Think of it as a budget template: "Summer in Scandinavia", "Winter in Portugal", "Working Remotely", "Lean Mode".

You can have multiple scenarios. This matters because your costs vary dramatically by region, season, and lifestyle mode. A scenario for a month in Norway will look very different from one for a month in Morocco.

**The Actual scenario** is a special, automatically maintained scenario that reflects what you're actually spending, derived from your Ledger. When the system compares your plan against reality, it's comparing your active Scenario against the Actual.

**The Active Plan** is the one scenario you've marked as your current budget. This is the one the Voice Assistant uses when you ask "how am I tracking against my budget?", and it's the baseline the Runway uses for its primary projection.

Scenarios are also what makes the **Plan vs Actual comparison** possible — a side-by-side view of what you intended to spend vs what the Ledger shows you actually spent, broken down by category.

---

## Runway — How Long Will the Money Last?

**Runway** answers the question every full-time van traveller eventually asks: *at this rate, how long until the money runs out?*

The simulation runs month by month, up to 30 years into the future. Each month it:

1. Adds **interest earned** on your current pot (using the annual interest rate you've set, converted to a monthly compounding rate)
2. Adds any **non-interest income** (regular income you've told it to expect), adjusted for inflation
3. Subtracts **expenses** (from your active Scenario's monthly budget), adjusted for inflation
4. Applies any **What-If Events** that fall in that month
5. Records the resulting balance

The simulation keeps going until either the pot hits zero or 30 years have elapsed. The result is a projected date when your money runs out, a chart showing your balance over time, and the number of months of runway you have.

### Inflation Is Compounding — and That Matters

The inflation adjustment compounds cumulatively. In month 12, your expenses are adjusted by 12 months of inflation compounding. In month 36, by 36 months.

This is the mathematically correct way to model inflation, and it produces significantly different results from a naive "add X% per year" approach over multi-year timescales. If you set a 3% inflation rate, your expenses don't just grow by 3% between year one and year two — they grow by a factor that compounds continuously from the start of the simulation.

The effect is that longer-horizon projections are more conservative (i.e. lower) than they would be with simple inflation. This is intentional: underestimating how far money goes is the financially safer error for a traveller.

### Interest Also Compounds

The interest earned on your pot is applied monthly using a true monthly compounding rate (derived from the annual rate you enter). The formula is: monthly rate = (1 + annual rate)^(1/12) − 1. Interest is earned on whatever balance remains in the pot at the start of each month, so larger pots earn more and the effect compounds over time.

---

## What-If Events — Specific Future Changes

The base Runway simulation uses a flat monthly budget extrapolated forward. But real life has specific events: a big van repair, a new vehicle purchase, a pension starting, a work contract ending, a planned sabbatical.

**What-If Events** are these specific future income or expense items layered over the base simulation. Each event has:

- **Name** — what it is
- **Amount** — positive for income, negative for expenses
- **Frequency** — One-off, Weekly, Monthly, or Yearly
- **Start date** — when it begins
- **End date** — when it ends (optional; leave blank for open-ended)
- **Index with inflation** — if ticked, the amount grows with inflation over time (useful for pension payments, rent, recurring costs that track the cost of living)
- **Index with interest** — if ticked, the amount grows with the interest rate (useful for investment returns or interest-bearing income)

You can toggle individual events on and off to see how they affect the projection — useful for "what happens to our runway if we do this renovation?" type questions.

---

## Running Multiple Scenarios Side by Side

The Runway chart can plot multiple scenarios simultaneously so you can visually compare outcomes. A lean budget vs a comfortable one. A "keep working" scenario vs a "full time travel" scenario. A scenario with the expensive van repair vs one where you delay it.

This comparison view is where the system earns its depth. You're not just looking at numbers — you're looking at diverging futures plotted on the same axis, which makes the trade-offs visceral and concrete.

---

## The Inputs the System Needs

To produce meaningful projections, the system draws on:

**Net worth** — the combined balance across all accounts marked "include in runway". This is the pot being simulated.

**Active Scenario** — the monthly category budgets for expenses.

**Recent average expenses** — derived from the last few months of Ledger history. This feeds the Actual scenario and is used for momentum calculations.

**Global assumptions** — the annual interest rate and annual inflation rate you set in Settings. These are applied across all scenarios unless overridden. Setting them accurately matters: too optimistic, and the projection flatters you; too pessimistic, and you'll worry unnecessarily.

**What-If Events** — any specific future income or expenses you've added.

---

## What the System Doesn't Do

It's worth being clear about what this system is not:

It is **not financial advice**. The simulation is a planning tool — a way of stress-testing your assumptions and understanding the consequences of different decisions. It cannot account for market movements, tax implications, or life events it doesn't know about.

It is **not a real-time market tracker**. The interest rate you enter is a static assumption you set yourself. The system doesn't connect to any financial data feeds.

It is **not a replacement for professional financial planning**. For significant financial decisions, consult someone qualified to give advice.

What it is: a rigorous, honest simulation of your personal cashflow, running in your pocket, that works without any connection to a bank or financial institution. For understanding the shape of your financial future on the road, it's the right tool.

---

## Related Articles

- [[The_Ledger_How_Spending_Is_Recorded]] — *The transaction data that feeds the actual scenario*
- [[Understanding Financial Scenarios|Creating and Managing Scenarios]] — *Setting up budget plans*
- [[The Math Behind Scenario Trajectories|The Runway Chart]] — *Reading the projection view*
- [[Milestones - Goals and Predicted Landmarks|What-If Events and Milestones]] — *Adding specific future events*
- [[Understanding Financial Scenarios|Plan vs Actual]] — *Comparing your budget against real spending*
