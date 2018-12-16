---
title: Standard Market Model
author: Keith A. Lewis
institute: KALX, LLC
classoption: fleqn
---
<div id="kalx"><a href="mailto:kal@kalx.net">kal@kalx.net</a></div>

Let $\langle \Omega, P, (\AA_t)_{t\in T}\rangle$ be a sample
space, probability measure, and filtration where $T$ is the set of
trading times.

## Price and Cash Flow

The _standard market model_ consists of a vector-valued stochastic process
of _prices_, $(X_t)_{t\in T}$, that are adapted to the filtration and a
corresponding vector-valued point process of _cash flows_, $(C_t)_{t\in T}$.
The vectors are indexed by market instruments.
We assume markets are perfectly liquid: instruments
can be bought or sold in any quantity at the given price. The cash flows
are amounts associated with owning an instrument: stocks pay dividends,
bonds pay coupons, futures pay margin adjustments.

Let $(D_t)_{t\in T}$ be any positive, adapted process and let
$(M_t)_{t\in T}$ be any vector-valued martingale, then

$$
	X_t D_t = M_t - \sum_{s\le t} C_s D_s
$$

is an arbitrage free (as defined below) model. We call this the _Standard Market Model_.

**Exercise**. Show $X_t D_t = E_t[X_u D_u + \sum_{t<s\le u}C_s D_s]$ where
$E_t[Y] = E[Y|\AA_t]$ is the conditional expectation of $Y$ given the
information $\AA_t$.

## Trading Strategy

A _trading strategy_ is a finite set $(\tau_j, \Gamma_j)$ where
$\tau_j$ are increasing stopping times and $\Gamma_j$ is a
$\AA_{\tau_j}$ measurable vector of the shares traded in each
instrument at time $\tau_j$.

A trading strategy is _closed out_
if $\sum\Gamma_j = 0$.

## Position

Trading results in shares accumulating to a _position_ $\Delta_t =
\sum_{\tau_j < t} \Gamma_j = \sum_{s < t} \Gamma_s$ where $\Gamma_s
= \Gamma_j$ if $s = \tau_j$.  Note that a trade done at time $t$ is
not included in the position.

## Value

The _value_, or _mark-to-market_, of a trading strategy is
$V_t = (\Delta_t + \Gamma_t)\cdot X_t$: the amount you get
when you liquidate your position at market price.
The position does not include trades that were just executed, so those must be added.

## Amount

The _amount_ associated with a trading strategy at time $t$ is
$A_t = \Delta_t\cdot C_t - \Gamma_t\cdot X_t$: you receive the
cash flows associated with your existing position and 
pay market price for the trades you execute.

A model is _arbitrage free_ if there is no closed out trading strategy with
$A_{\tau_0} > 0$ and $A_t\ge0$ for $t > \tau_0$: you make money on the
first trade and never lose money until the position is closed out.

## Fundamental Theorem of Asset Pricing

The Fundamental Theorem of Asset Pricing states that a model is
arbitrage free if and only if there exists a positive, scalar,
adapted process $(D_t)_{t\in T}$ such that

$$
	X_t D_t = E_t[X_u D_u + \sum_{t < s \le u} C_s D_s].
$$

If there are no cash flows $(X_t D_t)_{t\in T}$ is a martingale.
We call such $(D_t)_{t\in T}$ a _price deflator_.

Using the definition of $V_t$ and $A_t$ it is easy to show

$$
	V_t D_t = E_t[V_u D_u + \sum_{t < s \le u} A_s D_s].
$$

Trading strategies create synthetic instruments: price
corresponds to value and cash flow corresponds to amount.

**Exercise**. Show this. _Hint_: $X_t D_t = E_t[(X_u + C_u)D_u]$
for sufficiently small $u > t$.

Since $V_{\tau_0} D_{\tau_0} = E_{\tau_0}[\sum_{t > \tau_0} A_t D_t]\ge0$
we have $V_{\tau_0}\ge0$. But $V_{\tau_0} = \Gamma_{\tau_0}\cdot
X_{\tau_0}$ and $A_{\tau_0} = -\Gamma_{\tau_0}\cdot X_{\tau_0}$ so
$A_{\tau_0}\le0$.

This proves one direction of the FTAP. Showing that no arbitrage implies
a price deflator exists is not trivial, but it is trivial is to produce
arbitrage free models: pick any positive adapted process and any vector
valued martingale.

The price deflator is determined by repurchase agreement rates.
The choice of the martingale is not cannonical and parameterizing it to
fit market prices is a difficult problem.
