---
author: Keith A. Lewis
title: The Unified Model 
classoption: fleqn
fleqn: true
abstract: | 
  A unified way to model derivative securities.
keywords: instrument, price, cash flow, trading, position, value, amount, hedge
...

Every continuous time arbitrage-free model of instrument prices $(X_t)$
with corresponding cash-flows $(C_t)$ has the form
$$
	X_tD_t = M_t - \sum_{s \le t} C_s D_s
$$
where $(M_t)$ is a vector-valued martingale indexed by the set of
instruments and $(D_t)$ are positive, adapted functions. 
If the continuously compounded forward rate at $t$ is $f_t$ then
$D_t = \exp(-\int_0^t f_s\,ds)$. 
If trading times are discrete, $T = \{t_j\}$, then
$D_{t_j} = \exp(-\sum_{i<j} f_i\,\Delta t_i)$ where
$\Delta t_i = t_{i + 1} - t_i$ and $f_i$ is the
repurchase agreement rate over that interval.

For example, the Black-Scholes/Merton model for a bond and stock with
no dividends is given by $M_t = (r, s\exp(\sigma B_t - \sigma^2 t/2))$
and $D_t = \exp(-\rho t)$ where $(B_t)$ is standard Brownian motion.
There is no need for self-financing portfolios, Ito's Lemma, much less
partial differential equations, when using the Unified Model.

The Unified Model provides a framework for a rigourous mathematical
approach to understanding how to value, hedge, and manage the risk
involved with trading actual market instruments.

## Introduction

The value of a barrier option in the Black-Scholes/Merton model that
knocks in the _second_ time the underlying hits the barrier is equal to
the value of the option that knocks in the first time the underlying
hits the barrier. In fact, the value is the same in that theory if
it knocks in on the $n$-th time it hits the barrier for any $n > 0$!
This is a mathematical artifact of Brownian motion having infinite total
variation on any interval.

When a model in mathematical physics does not fit observations it
indicates there is a flaw in the model. The Unified Model can be
used to rectify the above flaw in the classical theory of
mathematical finance. It puts instrument prices and cash-flows on
eqaul footing to clarify fundamental results like cost-of-carry,
put-call parity, and the fact futures quotes form a martingale.


## Notation

If $\mathcal{A}$ is an
[algebra](https://en.wikipedia.org/wiki/Algebra_of_sets)
on the set $\Omega$ we write
$X\colon\mathcal{A}\to\mathbf{R}$ to indicate $X\colon\Omega\to\mathbf{R}$
is $\mathcal{A}$-[_measurable_](https://en.wikipedia.org/wiki/Measurable_function).
If $\mathcal{A}$ is finite then the
[atoms](https://en.wikipedia.org/wiki/Atom_(measure_theory))
of $\mathcal{A}$ form a
[partition](https://en.wikipedia.org/wiki/Partition_of_a_set)
of $\Omega$ and being measurable is
equivalent to being constant on atoms. In this case $X$ is a function
on the atoms of $\mathcal{A}$.
The space of bounded $\mathcal{A}$-measurable functions is denoted $B(\mathcal{A})$.

A _filtration_ on $\Omega$ indexed by $T\subseteq [0,\infty)$ is an increasing
collection of algebras $(\mathcal{A})_{t\in T}$.  A process
$M_t\colon\mathcal{A}_t \rightarrow \mathbf{R}$, $t\in T$, is
a _martingale_ if $M_t = E[M_u \mid \mathcal{A}_t] = E_t[M_u]$ for $t\le u$,
where $E[X\mid\mathcal{A}]$ is the conditional expectation of the random variable $X$
given the algebra $\mathcal{A}$.

A _stopping time_ is a function $\tau\colon\Omega\to T$ satisfying $\{\tau\le t\}\in\mathcal{A}_t$
for all $t\in T$. The algebra $\mathcal{A}_\tau$ is the collection of 
subsets $E\subseteq\Omega$ with $E\cap\{\tau\le t\}\in\mathcal{A}_t$ for all $t\in T$.

## Unified Model

Let $T\subseteq [0,\infty)$ be the set of _trading times_.
We assume a sample space, probability measure, and filtration are given,
$\langle\Omega,P,(\mathcal{A}_t)_{t\in T}\rangle$.

Let $I$ the set of market _instruments_ available for trading.
Instrument _prices_ are $X_t\colon\mathcal{A}_t\to\mathbf{R}^I$ 
and their corresponding cash-flows are $C_t\colon\mathcal{A}_t\to\mathbf{R}^I$, for $t\in T$.
We assume, as is true in the real world, that prices and cash-flows are bounded.

Instrument trading is assumed to be perfectly liquid and divisible:
every instrument can be bought or sold at the given price in any amount. Cash flows
are associated with owning an instrument: stocks have dividends, bonds
have coupons, futures have margin adjustments. The price of a futures is always zero.

A _trading strategy_ is a finite collection of strictly increasing
stopping times $(\tau_j)$ and trades
$\Gamma_j:\mathcal{A}_{\tau_j} \rightarrow \mathbf{R}^I$ indicating
the number of shares to trade in each instrument. Trades accumulate to a _position_
$\Delta_t = \sum_{\tau_j < t}\Gamma_j = \sum_{s < t}\Gamma_s$
where $\Gamma_s = \Gamma_j$ when $s = \tau_j$. Note that trades at time $t$ are
not included in the position at time $t$. It takes time for trades to settle
before being included in the position.

The _value_ (or _mark-to-market_) of a position at time $t$ is
$V_t = \left( \Delta_t + \Gamma_t \right) \cdot X_t$:
how much you would get from liquidating
your existing position and the trades just executed at price $X_t$,
assuming that is possible.
The _amount_ generated by the trading strategy at time $t$ is
$A_t = \Delta_t \cdot C_t - \Gamma_t \cdot X_t$: you receive
the cash flows associated with your existing position and pay for the
trades you just executed.

A model is _arbitrage-free_ if there is no trading strategy with
$\sum_j \Gamma_{j} = 0$, $A_{\tau_0} > 0$, and
$A_t \geq 0$ for $t > \tau_0$: it is impossible to make money on
the first trade and never lose until the strategy is closed out.

__Theorem__. (Fundamental Theorem of Asset Pricing)
_A model is arbitrage-free if and only if
there exist deflators $D_t\colon\mathcal{A}_t\to (0,\infty)$, for $t\in T$, with_
$$
X_t D_t = E[X_v D_v + \sum_{t < u \leq v}C_u D_u \mid \mathcal{A}_t].
$$

If $C_t = 0$ for $t\in T$ then deflated prices are a martingale.
If $E_t[X_v D_v]\to 0$ as $v\to\infty$ then deflated prices are the
expected value of deflated future cash-flows, à la Dodd-Graham.
We can assume $D_0 = 1$ by dividing all deflators by $D_0$.

One consequence of the displated equation above and the definition of value and amount is
$$
V_t D_t = E[V_v D_v + \sum_{t < u \leq v}A_u D_u \mid \mathcal{A}_t].
$$
Note how value corresponds to prices and amount corresponds to cash-flows in the two formulas above.
The second formula is the key to valuing derivatives. 
A derivative is a contract specifying payments at given
times.  If a trading strategy produces these
payments as amounts then its value is given by this formula. 
Trading strategies create synthetic market instruments.
Synthetic market instruments can become actual market instruments that
are then included in $I$. 
The Unified Model can incorporate those without any changes.

_Proof_.  If $u > t$ is sufficiently small then
$\Delta_t + \Gamma_t = \Delta_u$ and $X_t D_t = E_t[(X_u + C_u) D_u]$.
Since $V_t = (\Delta_t + \Gamma_t)\cdot X_t$
$$
\begin{aligned}
V_t D_t &= (\Delta_t + \Gamma_t)\cdot X_t D_t \\
	&= \Delta_u\cdot E_t[(X_u + C_u)D_u] \\
	&= E_t[(\Delta_u\cdot X_u + \Delta_u\cdot C_u)D_u] \\
	&= E_t[(\Delta_u\cdot X_u + \Gamma_u\cdot X_u + A_u) D_u] \\
	&= E_t[(V_u + A_u)D_u] \\
\end{aligned}
$$
where we use $\Delta_u\cdot C_u = \Gamma_u\cdot X_u + A_u$ and $(\Delta_u + \Gamma_u)\cdot X_u = V_u$
in the last two equalities respectively.
The second displayed formula above follows by induction.

Assuming no arbitrage,
$V_{\tau_0}D_{\tau_0} = E_{\tau_0}[\sum_{t > \tau_0} A_t D_t] \geq 0$.
Since $D_{\tau_0}$ is positive and $V_{\tau_0} = \Gamma_{\tau_0} \cdot X_{\tau_0} = -A_{\tau_0}$ 
we have $A_{\tau_0} \leq 0$.
This proves the "easy" direction of the theorem.

There is no need to prove the "hard" direction since we have a large supply of arbitrage free models.
Every model of the form
$$
	X_t D_t = M_t - \sum_{s \leq t} C_s D_s
$$
where $M_t:\mathcal{A}_t \rightarrow \mathbf{R}^{I}$ is a martingale and
$D_t:\mathcal{A}_t \rightarrow (0,\infty)$ 
is arbitrage-free.
$$
\begin{aligned}
X_t D_t &= M_t - \sum_{s \leq t} C_s D_s \\
&= E_t[M_v - \sum_{s \leq t} C_s D_s] \\
&= E_t[M_v - \sum_{s \leq v} C_s D_s + \sum_{t < u \leq v}C_u D_u] \\
&= E_t[X_v D_v + \sum_{t < u \leq v}C_u D_u].
\end{aligned}
$$

## Examples

We illustrate the Unified Model in particular cases.

### Black-Scholes/Merton

The sample space is $\Omega = C[0,\infty)$, $P$ is Wiener measure, and 
$\mathcal{A}_t$ is the smallest sigma-algebra for which $\{B_s:s\le t\}$
are measurable, where $B_t(\omega) = \omega(t)$ is standard Brownian motion.

Let $D_t = e^{-\rho t}$ and $M_t = (r, s e^{\sigma B_t - \sigma^2 t/2})$.
This is the Black-Scholes/Merton model.
the Unified Model.

### Repurchase Agreement

In a discrete time model with $T = \{t_j\}$ a _repurchase agreement_ at time $t_j$, has price $X_{t_j} = 1$
and cash flow $C_{t_{j+1}} = R_j$ where $R_j = \exp(f_j\Delta t_j)$ is the realized return
for the _repo rate_ $f_j$. The _canonical deflator_ $D_{t_j} = 1/\Pi_{i < j} R_i = \exp(-\sum_{i<j} f_i\,\Delta_i)$
provides an arbitrage-free model for repos since
$1\,D_{t_j} = E_{t_j}[R_j D_{t_{j+1}}]$.

The continuous time analog is $D_t = \exp(-\int_0^t f_s\,ds)$ where $(f_t)$ is
the _continuously compounded forward rate_.

### Zero Coupond Bond

A _zero coupon bond_ maturing at time $u$ has a single cash flow
$C_u = 1$ so its price at time $t$ satisfies $X_t D_t =
E_t[1 D_u]$. We write $D_t(u) = E_t[D_u/D_t]$ for its price at time $t$. In
particular $D_0(u) = E D_u$. Instruments that are a portfolio of
zero coupon bonds (e.g., cash deposits, forward rate agreements, swaps)
have a value that is determined by the deflator.

### Cost of Carry

A _forward_ on an instrument $S$ _expiring_ at $t$ with _strike_ $k$
has a single cash-flow $S_t - k$ at expiration. The _at-the-money forward_
is the strike $f$ that makes the initial forward price zero.

Consider any arbitrage-free model with $X_0 = (1, s, 0)$ and
$X_t = (R, S_t, S_ - f)$.
We have $(1, s, 0) = E[(R, S_t, S_t - f)D_t]$ for any deflator with $D_0 = 1$.
Assuming $R$ is a constant, $1 = E[RD_t]$ so $E[D_t] = 1/R$.
Since $s = E[S_tD_t]$ and $0 = E[(S_t - f)D_t]$ we have $0 = s - f/R$.
The formula $Rs = f$ is the _cost of carry_ and relates the _spot price_, $s$,
of $S_t$ to its forward price.

### Put-Call Parity

A _put option_ on an instrument $S$ _expiring_ at $t$ with _strike_ $k$
has a single cash-flow $\max\{k - S_t, 0\}$ at expiration.
A _call option_ has a single cash-flow $\max\{S_t - k, 0\}$ at expiration.
Note $\max\{S_t - k, 0\} - \max\{k - S_t, 0\} = S_t - k$.

Consider any one-period arbitrage-free model with $X_0 = (1, s, p, c)$ and
$X_t = (R, S_t, \max\{k - S_t, 0\}, \max\{S_t - k, 0\})$.
For any deflator with $D_0 = 1$
We have $(1, s, p, c) = E[(R, S_t, \max\{k - S_t,0\}, \max\{S_t - k,0\})D_t]$.
Assuming $R$ is a constant, $1 = E[RD]$ so $E[D] = 1/R$.
Since $p = E[\max\{k - S_t,0\} D_t]$ and $c = E[\max\{S_t - k,0\} D_t]$ we have
$c - p = E[(S_t - k)D_t] = s - k/R$. This formula is referred to as _put-call parity_.
It holds for every arbitrage-free model and will be the first thing a trader
tests when presented with a new model.

### Futures

A _futures_ on an instrument $S$ _expiring_ at $t$ 
has a cash-flow at every _margin calculation date_ $(t_j)_{j=0}^n$.
The _futures quote_ at expiration $t = t_n$ is $\Phi_n = S_t$. The cash-flow at time
$t_j$ is $\Phi_j - \Phi_{j - 1}$, $1\le j\le n$, where $\Phi_j$ is the futures quote at $t_j$.

The price of a futures is always zero.
If the model is arbitrage-free then $0 = E_{t_{j-1}}[(\Phi_j - \Phi_{j - 1})D_{t_j}]$.
If $D_{t_j}$ is $\mathcal{A}_{t_{j-1}}$ measurable then $\Phi_{j-1} = E_{t_{j-1}}[\Phi_j]$
so the futures quotes $(\Phi_j)$ are a martingale.
This is the case if $D_{t_j} = \exp(-\sum_{i<j} f_i\,\Delta_i)$.

### American Option

An _American option_ is an option that the holder can exercise at any time up to expiration.
A call option on $S$ expiring at $t$ with strike $k$
has a single cash-flow $C_\tau = \max\{S_\tau - k, 0\}$ at time $\tau$
where $\tau\le t$ is chosen by the option holder.

The space of outcomes must include this possibility.
Given a model for the underlying $\langle \Omega, P, (\mathcal{A}_t)\rangle$ let
$\Omega' = \Omega\times [0,t]$ where $(\omega,\tau)$ indicates the option is
exercised at time $\tau$ given the underlying determined by $\omega$.

The filtration must also be augmented. Let $\mathcal{B}_s$ be the smallest
algebra on $[0,t]$ containing the singletons $\{u\}$ for $u\le s$ and the set $(s, t]$.
If $\tau \le s$ then it is known exactly, otherwise it is only known that $s < \tau \le t$.
The algebra $\mathcal{A}_s' = \mathcal{A}_s\times\mathcal{B}_s$ represents the information
available at time $s$.

Extending the measure $P$ on $\Omega$ to $P'$ on $\Omega'$ while keeping the model
arbitrage-free is not trivial. It would imply a solution to the American
option pricing formula which (currently) does not have a closed form.

## Remarks

Given a derivative paying $\bar{A}_j$ at times $\bar{t}_j$ how does one find a trading strategy
$(\tau_j)$ and $\Gamma_j$ with $A_t = \bar{A}_j$ at times $t = \bar{t}_j$ and zero otherwise?

The initial hedge is determined by $V_0 = E[\sum_{\bar{t_j} > 0} \bar{A}_j D_{\bar{t}_j}]$ which
can be computed using the given derivative payments and the deflators of the model.
Since $V_0 = \Gamma_0\cdot X_0$ we have $\Gamma_0 = dV_0/dX_0$ where the right-hand side is
the Fréchet derivative of $V_0\colon\mathbf{R}^I\to\mathbf{R}$ with
$X_0\mapsto\Gamma_0\cdot X_0$.

At any time $t$ we have $V_t = E_t[\sum_{\bar{t}_j > t} \bar{A}_j D_{\bar{t}_j}]/D_t$ which
can be computed using the given derivative payments and the deflators. Since
$V_t = (\Delta_t + \Gamma_t)\cdot X_t$ we have $\Delta_t + \Gamma_t = dV_t/dX_t$ where the right-hand side is
the Fréchet derivative of $V_t\colon B(\mathcal{A}_t, \mathbf{R}^I)\to B(\mathcal{A}_t)$
with $X_t \mapsto (\Delta_t + \Gamma_t)\cdot X_t$.

This is similar to Black-Scholes/Merton hedging with $\Delta$ being delta and
$\Gamma$ being gamma, however there is one major difference: there is no guarantee this
hedge will replicate the option. As any trader knows after the second day on a trading
floor, no hedge is perfect.

The Unified Model brings this real world problem to the forefront. It does
not provide a solution, only a framework for a rigourous mathematical
approach to understanding how to value, hedge, and manage the risk
involved with trading actual market instruments.

<!--
### American Option

<div>
Keith A. Lewis [kal@kalx.net]
</div>
-->
