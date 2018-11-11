# Standard Market Model

Let $\langle \Omega, P, (\AA_t)_{t\in T}\rangle$ be a sample
space, probability measure, and filtration where $T$ is the set of
trading times.

## Price and Cash Flow

The _standard market model_ consists of a vector-valued stochastic process
of _prices_, $(X_t)_{t\in T}$, that is adaped to the filtration and a
corresponding vector-valued point process of _cash flows_, $(C_t)_{t\in
T}$.  The vectors are indexed by market instruments.
We assume markets are perfectly liquid: instruments
can be bought or sold in any quantity at the given price. The cash flows
are amounts associated with owning an instrument: stocks pay dividends,
bonds pay coupons, futures pay margin adjustments.

## Trading Strategy

A _trading strategy_ is a finite set $(\tau_j, \Gamma_j)$ where
the $\tau_j$ are increasing stopping times and $\Gamma_j$ is a
$\AA_{\tau_j}$ measurable vector of the shares traded in each
instrument.

## Position

Trading results in shares accumulating to a _position_ $\Delta_t =
\sum_{\tau_j < t} \Gamma_j = \sum_{s < t} \Gamma_s$ where $\Gamma_s
= \Gamma_j$ if $s = \tau_j$.  Note that a trade done at time $t$ is
not included in the postition.  A trading strategy is _closed out_
if $\sum\Gamma_j = 0$.

## Value

The _value_, or _mark-to-market_, of a trading strategy is
$V_t = (\Delta_t + \Gamma_t)\cdot X_t$ since the position does
not include trades that were just executed.

## Amount

The _amount_ associated with a trading strategy at time $t$ is
$A_t = \Delta_t\cdot C_t - \Gamma_t\cdot X_t$: you receive the
cash flows associated with your existing position and 
pay market price for trades.

A model is _arbitrage free_ if there is no closed out trading strategy with
$A_{\tau_0} > 0$ and $A_t\ge0$ for $t > \tau_0$: you make money on the
first trade and never lose money until the postion is closed out.

## Fundamental Theorem of Asset Pricing

The Fundamental Theorem of Asset Pricing states that a model is
arbitrage free if and only if there exists a positive, scalar,
adapted process $(D_t)_{t\in T}$ such that

$$
	X_t D_t = E[X_u D_u + \sum_{t < s \le u} C_s D_s|\AA_t].
$$

If there are no cash flows $(X_t D_t)_{t\in T}$ is a martingale.
We call such $(D_t)_{t\in T}$ a _stochastic discount_.

Using the definition of $V_t$ and $A_t$ it is easy to show

$$
	V_t D_t = E[V_u D_u + \sum_{t < s \le u} A_s D_s|\AA_t].
$$

Trading strategies create synthetic instruments: price
corresponds to value and cash flow corresponds to amount.

**Exercise**. Show this. _Hint_: $X_t D_t = E[(X_u + C_u)D_u|\AA_t]$
for some $u > t$.

Since $V_{\tau_0} D_{\tau_0} = E[\sum_{t > \tau_0} A_t D_t
|\AA_{\tau_0}]\ge0$ we must have $V_{\tau_0}\ge0$. But $V_{\tau_0} =
\Gamma_{\tau_0}\cdot X_{\tau_0}$ and $A_{\tau_0} = -\Gamma_{\tau_0}\cdot
X_{\tau_0}$ so $A_{\tau_0}\le0$.

This proves the one direction of the FTAP. Showing no arbitrage implies
a stochastic discount exists is not trivial. What is trivial is to produce
arbitrage free models.

## Standard Market Model

Let $(D_t)_{t\in T}$ be any positive, adapted process and let
$(M_t)_{t\in T}$ be any vector-valued martingale, then

$$
	X_t = (M_t - \sum_{s\le t} C_s D_s)/D_t
$$

is an arbitrage free model. We call this the _Standard Market Model_.

**Exercise**. Show $E[X_u D_u + \sum_{t<s\le u}C_s D_s|\AA_t] = X_t D_t$
if $X_t$ is defined as above.

