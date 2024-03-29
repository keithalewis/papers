---
title: Unified Derivatives
author: Keith A. Lewis
institute: KALX, LLC
classoption: fleqn
---
<div id="kalx"><a href="mailto:kal@kalx.net">kal@kalx.net</a></div>

This note suggests a rigorous mathematical theory for pricing, hedging,
and quantifying the risk of _any_ derivative security assuming a single
currency and perfect liquidity.

## Mathematical Preliminaries

Mathematical finance involves mathematics.
Black-Scholes/Merton used the mathematics developed by
Kakutani and Ito involving Brownian motion to
model stock prices. The latter two won Nobel prizes
"for a new method to determine the value of derivatives."

The B-S/M value of a derivative is the cost of setting up the initial
replicating hedge. An unfortunate artifact of the mathematical theory is
that their hedge requires continuous rebalancing. This is not possible
in practice and their theory offers no insight useful to practitioners
who need to determine how and when to adjust their hedge.

Our unified approach requires far less mathematics than the standard
theory. It also highlights the important questions of how and when
to hedge.

A complete review of the prerequisite mathematics follows.

### Outcomes

The _outcomes_ that can happen are modeled by a set, $\Omega$. In the
Black-Scholes/Merton model $\Omega = C[0,\infty)$, the set of continuous
functions from now into the future. This models the (logarithm of)
possible future stock price movements.

The set of possible outcomes can contain historical information and data
other than prices. Many models involving trading strategies do.

### Algebras
An _algebra_, $\AA$, is a collection of subsets of $\Omega$ closed under
complement and union. Elements of $\AA$ are called _events_. It
is customary to assume the empty set, hence $\Omega$,
belongs to an algebra.

An _atom_, $A\in\AA$ has the property $B\subseteq A$ and
$B\in\AA$ implies $B = \emptyset$ or $B = A$.

**Lemma.**
_If an algebra is finite then the atoms form a_ partition.

A _partition_ is a collection of disjoint subsets having
union equal to the entire set. Every outcome $\omega\in\Omega$
belongs to the intersection of all sets in $\AA$ containing $\omega$.
Let $\{A_j\}$ be the set
of atoms. Since $A_j\cap A_k\subseteq A_j$ then
either $A_j\cap A_k = \emptyset$ or $A_j\cap A_k = A_j$.
If the sets are not disjoint, then $A_j\subseteq A_k$.
Since the intersection is not empty, $A_j = A_k$.

Partitions are how _partial information_ is modelled. Knowing
which $\omega\in\Omega$ occurs is complete information. Knowing
only which atom $\omega$ belongs to is partial information.
The partition of all singleton sets corresponds to complete
information. The partition having $\Omega$ as its only atom
represents total lack of information.

### Measurable Functions

A function $X\colon\Omega\to\RR$ is _$\AA$-measurable_
if $X^{-1}((-\infty,x]) = \{\omega\in\Omega:X(\omega)\le x\}$
belongs to $\AA$ for all $x\in\RR$. If $\AA$ is finite,
a function is measurable if and only if it is constant on
atoms. We use the notation $X\colon\AA\to\RR$ to indicate
$X$ is $\AA$-measurable. If $\AA$ is finite then $X$ _is_
a function on the atoms of $\AA$.

### Measures
A finitely additive _measure_ is a function $\Pi\colon\AA\to\RR$
such that $\Pi(A\cup B) = \Pi(A) + \Pi(B) - \Pi(A\cap B)$.  
Measures don't count things in both sets twice.
The _integral_ of $X\colon\AA\to\RR$, $\int_\Omega X\,d\Pi$, is defined in
the same way as for standard Lebesgue theory.
Proving theorems about interchange of limits is more difficult
than for countably additive measures, but we have no need for
those results.

<!--
Let $B(\Omega,\AA)$ be the vector space of bounded $\AA$-measurable
functions on $\Omega$. The space of bounded linear functionals,
$B(\Omega,\AA)^*$, can be identified with the space of finitely additive
measures, $ba(\Omega,\AA)$.  We use the notation $\langle X,\Pi\rangle =
\int_\Omega X\,d\Pi$ for the _dual pairing_.

Given $X\in B(\Omega,\AA)$ and $\Pi\in ba(\Omega,\AA)$ we can
define the measure $X\Pi$ by $\langle Y,X\Pi\rangle
= \langle YX,\Pi\rangle$ for $Y\in B(\Omega,\AA)$. This defines
a linear functional hence can be identified with a finitely
additive measure.

If $P$ is a positive measure with $P(\Omega) = 1$ it is customary to
write $E[X]$ for $\langle X,P\rangle$.  If $\BB$ is a subalgebra of
$\AA$ then $Y$ is the _conditional expectation_ of $X$ given $\BB$ if
and only if $Y$ is $\BB$ measurable and $\int_B Y\,dP = \int_B X\,dP$
for all $B\in\BB$. We write $Y = E[X|\BB]$.
-->

**Lemma.** _$Y = E[X|\BB]$ if and only if $Y(P|_\BB) = (XP)|_\BB$._

The mathematical definition of $Y = E[X|\BB]$ is $Y$ is $\BB$ measurable
and $\int_B Y\,dP = \int_B X\,dP$ for $B\in\BB$.  The integrals define
how a function times a measure is a measure, i.e., $(XP)(B) = \int_B
X\,dP$. The equality says $(YP)(B) = (XP)(B)$ for $B\in\BB$. Using the
standard notation for restricting a function to a subset of its domain,
$(YP)|_\BB = (XP)|_\BB$. If $Y$ is $\BB$ measurable then
$(YP)|_\BB = Y(P|_\BB)$.

If $\BB$ is finite, then $E[X|\BB] = \sum_{B}(1_B/P(B))\int_B X\,dP$
where the sum is over the atoms of $\BB$.
Although restriction of a measure is mathematically equivalent, it is
trivial to implement in software.

### Filtrations
Let $T$ be the times at which trading can occur.  A collection of
algebras $(\AA_t)_{t\in T}$ with  $\AA_t \subseteq \AA_u$ if $t < u$
is a _filtration_. Filtrations model information revealed over time.

### Prices and Cash Flows
Let $I$ be the set of market traded instruments.  A _model_ consists
of bounded, vector-valued functions $X_t\colon\AA_t\to\RR^I$ and
$C_t\colon\AA_t\to\RR^I$ that represent _prices_ and _cash flows_
at time $t\in T$.
The price is assumed to be in a given currency and every instrument
can be bought or sold in any quantity at that price.  Cash flows are
payments associated with holding an instrument, e.g., coupons for bonds
or dividends for stocks. Note there are no bid-ask spread or liquidity
issues for cash flows.

### Trading Strategy and Position
A _trading strategy_ is a set of increasing times $(\tau_j)$ and
_trades_ $\Gamma_j\colon\AA_{\tau_j}\to\RR^I$.
Trades accumulate into a _position_
$\Delta_t = \sum_{\tau_j < t} \Gamma_j$.
The inequality is strict because it takes some time for a trade
to execute. The times can be _stopping times_: $\tau\colon\Omega\to\RR$,
i.e., $\{\omega\in\Omega:\tau(\omega)\le t\}$ is $\AA_t$
measurable for all $t\in T$.

If we define $\Gamma_t = \Gamma_j\delta_{t_j}(t)$
where $\delta_{t_j}(t) = 1$ if $t_j = t$ and $0$ otherwise,
then
$$
\Delta_t = \sum_{s < t} \Gamma_s.
$$

### Amount and Value
Trades result in numbers showing up in your _account_.
At time $t$ your account statement will be
$$
A_t = \Delta_t \cdot C_t - \Gamma_t\cdot X_t
$$
You receive all the cash flows from your existing position
and pay for the trades you do based on current market prices.

The (marked-to-market) _value_ of your trades at time $t$ is
$$
V_t = (\Delta_t + \Gamma_t)\cdot X_t.
$$
It represents the amount you would get from unwinding your current
position and the trades you just did. If you have a large
position in illiquid instruments this mathematical assumption
does not reflect reality.

### Arbitrage
_Arbitrage_ exists if there are trades with $\sum \Gamma_j = 0$,
$A_{\tau_0} > 0$, and $A_t\ge0$ for $t > \tau_0$.
In words, there is a trading strategy that eventually closes out,
makes money on the first trade, and never loses thereafter.

Note that this definition does not involve measures.

### Pricing Measures
_Pricing measures_ are positive measures
$\Pi_t\colon\AA_t\to\RR$ such that
$$
X_t\Pi_t = (\sum_{t<s\le u} C_s\Pi_s + X_u\Pi_u)|_{\AA_t}
$$

If $u$ is less than or equal to the first time greater than $t$
such that $C_s\not=0)$ then 
$X_t\Pi_t = (C_u + X_u)\Pi_u|_{\AA_t}$. Note that if $u$ is
less than or equal to the first time greater than $t$ such
that $A_u\not=0$ then $\Delta_t + \Gamma_t = \Delta_u$.
We have

\begin{align*}
V_t \Pi_t &= (\Delta_t + \Gamma_t)\cdot X_t\Pi_t\\
&= \Delta_u\cdot X_t\Pi_j\\
&= \Delta_u\cdot (C_u + X_u)\Pi_u|_{\AA_t}\\
&= (A_u + \Gamma_u\cdot X_u + \Delta_u\cdot X_u)\Pi_u|_{\AA_t}\\
&= (A_u + V_u)\Pi_u|_{\AA_t}\\
\end{align*}

By induction,
$$
V_t\Pi_t = (\sum_{t<s\le u} A_s\Pi_s + V_u\Pi_u)|_{\AA_t}.
$$
This equation is the skeleton key to understanding derivative securities.
Note how $V$ and $A$ in equation (2) correspond to
$X$ and $C$ in equation (1). Trading strategies make it
possible to create synthetic instruments.

## Derivative Securities
A _derivative security_ is a contract between a _buyer_
and a _seller_ to make future exchanges.
The Fundamental Theorem of Asset Pricing provides a mathematical
basis for determining the value of the contract.

We only consider _cash settled_ derivatives. E.g., an European call option
on a stock that expires in-the-money does not pay one share of stock
in exchange for the strike. It pays the difference (in the underlying
currency) of the share price and the strike, if that is positive.

A derivative contract specifies amounts, $A_j$, to be paid at
times $\tau_j$. The buyer receives $A_j$ if $A_j > 0$ and pays
$-A_j$ to the seller if $A_j < 0$.


## The Fundamental Theorem of Asset Pricing
**Fundamental Theorem of Asset Pricing**. _A model is arbitrage
free if and only if a positive pricing measure exists._

One direction is easy. If pricing measures exist, then
$V_0\Pi_0 = \sum_{j>0} A_j\Pi_j|_{\AA_0}$. If $A_j\ge 0$ for $j > 0$
then $V_0\Pi_0 \ge 0$. Since $V_0 = \Gamma_0\cdot X_0
= -A_0$ it follows that $-A_0\Pi_0\ge 0$ and $A_0\le 0$.
This shows there is no arbitrage.

Stephen Ross was the first to use the Hahn-Banach theorem to
show no arbitrage implies the existence of pricing measures. This set off
a cottage industry of academics attempting to provide a mathematically
correct version of his pioneering result.

What they overlooked is that this is unnecessary. It is quite easy
to produce pricing measures by simply writing them down. No need
to use the Hahn-Banach theorem to prove they exist.

<!--
An European option has only one payment at expiration $u$.
If we can find trades $\Gamma_j$ at $\tau_j$ such that
$A_t = 0$ for $0 < t < u$ and $A_u$ is the option payoff,
then the cost of setting up the initial hedge, $V_0$,
is the value of the option (assuming $\tau_0 = 0$ and
$\tau_n = u$).
-->

### Arbitrage Free Models

Given a filtration $(\AA_t)$ on $\Omega$ and a positive measure, $P$,
with $P(\Omega) = 1$, pick any $\RR^I$-valued martingale $(M_t)$ and
any adapted positive scalar stochastic process $(D_t)$, then
$X_t = M_t/D_t$, $C_t = 0$, $\Pi_t = D_tP|_{\AA_t}$ is an arbitrage
free model.

In this case we can write equation (1) as
$$
X_tD_t = E[X_uD_u|\AA_t],
$$
i.e, $X_tD_t$ is a _martingale_.

More generally, $X_t = (M_t - \sum_{s\le t}C_sD_s)/D_t$
is an arbitrage free model having cash flows $(C_t)$ since

\begin{align*}
E[\sum_{t<s\le u} C_sD_s + X_uD_u|\AA_t]
&= E[\sum_{t<s\le u} C_sD_s + M_u - \sum_{s\le u}C_sD_s|\AA_t]\\
&= E[M_u - \sum_{s\le t}C_sD_s|\AA_t]\\
&= M_t - \sum_{s\le t}C_sD_s\\
&= X_tD_t\\
\end{align*}

(*)

Every model has this form.

For example, The Black-Scholes/Merton model is $M_t = (R_t, S_t)
= (r,se^{-\sigma^2t/2 + \sigma B_t})$
and $\Pi_t = e^{-\rho t}P|_{\AA_t}$ where $(B_t)$ is standard
Brownian motion and $P$ is Wiener measure.

No need for the Ito formula. No need for partial differential
equations. No need for a "real world" measure that gets immediately thrown
out for a "risk neutral" measure. And no need for the inconvenient fact
that the Hahn-Banach theorem requires the convex set to have a non-empty
interior point.

Goodbye Ito formula. Goodbye PDE's. And good riddance Hahn-Banach.
Your students will thank you for providing them an equivalent theory
that does not require this baggage.

### Delta Hedging

Assuming we can find trades that can replicate the amounts
specified in a derivative securities contract, the first trade is easy to
find. Since $V_0 = \Gamma_0\cdot X_0$ we have $\Gamma_0 = dV_0/dX_0$.
We can compute $V_0$ from $V_0\Pi_0 = \sum_{j>0} A_{\tau_j}\Pi_j(\Omega)$
given the contract payments and pricing measure.

In general $V_t = \sum{u > t} A_uD_u/D_t$ and since
$V_t = (\Delta_t + \Gamma_t)\cdot X_t$ the Frechet derivative
of $X_t \mapsto V_t$ is $\Delta_t + \Gamma_t$. Since $\Delta_t$ is
known at time $t$, this tells us the value of $\Gamma_t$ to trade.

(*)

The fiction of continuous time trading avoids the hard problem:
traders need to decide when to re-hedge their position. One of their
aphorisms is "Hedge when you can, not when you have to."  They don't
seem to find the current theory of mathematical finance useful for
explicitly quantifying this.

## Canonical Pricing Measures

There is an obvious choice for pricing measures.

### Short Realized Returns

Assuming discrete times $T = \{t_j\}$, the _short realized returns_ are a
collection of market instruments, $R_j$, having prices $X_j = 1$ and cash
flows $C_{j+1} = R_j$, where $R_j$ is $\AA_j$ measurable.  Some people
like to write $R_j = \exp(r_j \Delta t_j)$, where $\Delta t_j = t_{j+1}
- t_j$, and call $(r_j)$ the _short rate process_.  I prefer the notation
$f_j$ instead of $r_j$ and call that the _instantaneous forward rate_.

<!--
The LIBOR market model is a trivial consequence of this,
as we will see later.
-->

Define $D_j = \prod_{i<j}R_j^{-1}$. Since
$1D_j = E[R_jD_{j+1}|\AA_j]$, this model is arbitrage free.
Let's agree to call $D_jP|_{\AA_j}$ the _canonical pricing measure_.

This mathematical assumption is not far from reality.  Repurchase
agreements are used for this. Note that $(R_j)$ is a collection of market
instruments, one for each $j$.

In the continuous time case we write $D_t = \exp(-\int_0^t f_s\,ds)$
instead of $D_j = \exp(-\sum_{i < j} f_i\,\Delta t_i)$.

### Zero Coupon Bonds
A _zero coupon bond_, $D(u)$, has a single cash flow $C^{D(u)}_u = 1$
at time $u$.  Its price at time $t < u$ satisfies $X^{D(u)}_t\Pi_t =
\Pi_u|_{\AA_t}$, or equivalently $X^{D(u)}_t D_t = E[D_u|{\AA_t}]$.

We will use the helpfully confusing notation $X_t^{D(u)} = D_t(u)$
so $D_t(u)\Pi_t = \Pi_u|_{\AA_t}$ and $D_t(u)D_t = E[D_u|\AA_t]$.
The price at time $t$ maturing at $u$ is
$D_t(u) = E[D_u|\AA_t]/D_t = E_t[D_u]/D_t$.

### Forwards
Let $S_t$ be the price of a stock with no dividends at time $t$.
A _forward_ with _strike_ $f$ expiring at time $u$, denoted
F(u,f)$,
has a single cash flow $C_u = S_u - f$ at time $u$.
Its price at time $t$ satisfies
$X_t^{F(u,f)} D_t = E[(S_u - f)D_u|\AA_t]$ so
$X_t^{F(u,f)} = S_t - fD_t(u)$.
The price of a forward is zero at
time $t$ when the strike is the _par forward_
$f = F_t(u) = S_t/D_t(u)$.
This formula is called the _cost of carry_.
For the Black-Scholes/Merton model with $t = 0$ this becomes
$f = se^{\rho u}$.

### Futures

A _futures_, $\Phi(u)$, always has price zero and cash flows
$C_{t_j}^{\Phi(u)} = \Phi_{t_j} - \Phi_{t_{j-1}}$ at time $t_j$,
$j > 0$,
where $\Phi_t(u)$ is the futures _quote_ at time $t$.
The quote $\Phi_u(u) = \Phi(u)$ at _expiration_ $u$. No cash flows
occur after expiration.
The quote at time $t_j$ satisfies
\begin{align*}
0 &= E[(\Phi_{t_{j+1}} - \Phi_{t_j})D_{t_{j+1}}|\AA_{t_j}]\\
  &= E[\Phi_{t_{j+1}} - \Phi_{t_j}|\AA_{t_j}]D_{t_{j+1}}\\
\end{align*}
since $D_{t_{j+1}}$ is $\AA_{t_j}$ measurable.
Hence $\Phi_{t_j} = E[\Phi_{t_{j+1}}|\AA_{t_j}]$ and so
the futures quotes $(\Phi_{t_j})_j$ always form a martingale.

This shows the LIBOR Market Model is slightly silly. All you need to do
is specify the forward rates at the expiration date over each interval.

### Forward Rate Agreements

A _forward rate agreement_, $F^\delta(u,v)$, has cash flows $C_u =
-1$ and $C_v = 1 + \delta(u,v) F^\delta(u,v)$, where $\delta(u,v)$
is the _day count fraction_ (approximately equal to $v - u$ in years.)
The _par forward_ at time $t$, denoted $F_t^\delta(u,v)$, is the value
making the price at time $t$ equal to zero.

Since $0 = \bigl(-\Pi_u + (1 + \delta(u,v) F_t^\delta(u,v))\Pi_v\bigr)|_{\AA_t}$
we have $F_t^\delta(u,v) = (D_t(u)/D_t(v) - 1)/\delta(u,v)$.

For $t = u$ we have $\delta(u,v) F_u^\delta(u,v)D_u(v) = D_u -
E[D_v|\AA_u]$ and $F_u^\delta(u,v) = (1/D_u(v) - 1)/\delta(u,v)$.

A variant type of forward rate agreement, $\tilde{F}^{\delta(u,v)}$,
has a single cash flow $C_v = \delta(u,v)(\tilde{F}_t^{\delta(u,v)} -
F_u^{\delta(u,v)})$ and price zero at time $t$.

**Lemma**. $\tilde{F}_t^{\delta(u,v)} = F_t^{\delta(u,v)}$.

Both types contracts trade in the market. The first involves an
exchange of principal, while the second does not. As we will
see later, the above lemma no longer holds if there is default risk.

### Floating Leg

A _floating leg_, $F^\delta(t_0,\dots,t_n)$, has cash flows $C_{t_j} =
\delta(t_{j-1}, t_j)F_{t_{j-1}} =\delta_j F_j$ at $t_j$, $0 < j \le n$.
Its value at time $t$ is determined by

\begin{align*}
X_t D_t &= E\bigl[\sum_{j=1}^n \delta_j F_j\Pi_{t_j}|\AA_t\bigr]\\
&= E\bigl[\sum_{j=1}^n D_{t_{j-1}} - E[D_{t_j}|\AA_{t_j}]|\AA_t\bigr]\\
&= E[\sum_{j=1}^n D_{t_{j-1}} - D_{t_j}|\AA_t]\\
&= E[D_{t_0} - D_{t_n}|\AA_t]\\
&= (D_t(t_0) - D_t(t_n))D_t\\
\end{align*}

Note this has the same value as being long the zero coupon bond
$D(t_0)$ and short the zero coupon bond $D(t_n)$.

## Risky Assets

When two counterparties enter into a legal contract for the exchange
of cash flows, one or the other might not be able to make good on the
agreement.

Let $T$ be a random variable indicating the time of default of the seller
and $R$ be a random variable taking values between 0 and 1 indicating
the fraction of the payments that will be recovered.  The default time is
correlated with other events and so is recovery. The current literature
ignores this in order to simplify the mathematics and so shall we.

Another issue is what recovery applies to at the time of default. Is it
the present value of future cash flows or a payout at default of the
notional as in credit default swaps?

We make the standard (but not realistic) assumption that
default time is independent of other factors and that recovery is
a fraction of the outstanding present value of the trade at the
time of default.

Our information at time $t$ about $T$ is either that default
has already happened ($T \le t$) and we know the exact time
of default, or default has not occurred ($T > t$) and we know only
that $T\in(t,\infty)$. The algebra describing this partial
information, $\AA_t$, contains every
subset of $[0,t]$ and the set $(t,\infty)$.

If $u > t$ the conditional expectation of $E_t 1(T > u)
= P(T > u)/P(T > t)1(T > t)$. This is clearly $\AA_t$ measurable.
If $A\subseteq [0,t]$, then $1_A 1(T > u) = 0$ 
as is $1_A 1(T > t)$. We have $P(T > u, T > t) = P(T > u)$
and $P(T > u)/P(T > t)P(T > t,T > t) = P(T >u)$.
This shows $1(T > t)P|_{\AA_t} = (P(T > u)/P(T > t)1(T > t)P)_{\AA_t}$.

### Risky Zero Coupon Bonds

Consider a risky bond, $D^{T,R}(u)$, that has the cash flow
$C_u = 1(T > u) + R1(T \le u)$, i.e., it pays recover at
maturity instead of when the default occurs.
Assuming recovery is a number and default time is independent
of the deflator, the price at time 0 is
$$
D_0^{T,R}(u) = D_0(u)(P(T > u) + RP(T\le u))
= D_0(u)(R + (1 - R)P(T>u)).
$$

More generally, the price at time $t$ is
$$
D_t^{T,R}(u) = D_t(u)(R + (1 - R)P(T>u)/P(T>t)1(T > t)).
$$

<!---
### Risky Forward Rate Agreements

A risky FRA has price $X_t = 0$ and cash flows
$C_u = -1(T>u) - R1(T\le u)$ and
$C_v = (1 + \delta F_t^{T,R}(u,v))(1(T>v) - R1(T\le v)$.
We have
$$
	F_t^{T,R}(u,v) = (D_t^{T,R}(u)/D_t^{T,R}(v) - 1)/\delta.
$$
As a back of the envelope calculation, let's assume $D_t = e^{-rt}$
and $P(T > t) = e^{-\lambda t}$. The difference between a risky
and a risk-free forward is then

### Remarks
Note how all prices for fixed income instruments are determined by the
short realized returns.

Although the short realized return can be considered to be a stochastic
process, it is really a bunch of instruments.


Future = Forward + convextiy

## American Options

The unified framework can also handle American options.

### Stopping Times

An American option expiring at time $T$ allows the holder to
exercise the option at any time, $\tau$, prior to expiration for
a cash flow $\phi(X_\tau)$ where $\phi$ is a function
specified in the option contract.
E.g., $\phi(x) = \max{k - x,0}$ for a put option with stike $k$.

We assume $\tau$ is a stopping time, i.e., a random variable
$\tau\colon\Omega\to [0,T]$ such that
$\{\tau \le t\}$ is $\AA_t$ measurable for all $t$.
As always, we can represent $\tau$ using
$\tau'\colon [0,T]\to[0,T]$ by $\tau'(t) = t$
and $P(\tau'\le t) = P(\tau\le t)$.
Let $\TT_t$ be the algebra $\{E:E\subseteq [0,t]\}
\cup\{E\times(t,T]:E\subseteq[0,t]\}$.
It represents the information that at time $t$ if the option
has been already execised, we know exactly when it was
exercised, and if not, we have no information other than
exercise will occur sometime after $t$.

Given an arbitrage-free model $(X,C,\Pi)$ let $X^{O}_t = O_t$ be
the price of an American option at time $t$.
It has a single cash flow $C^O_t = C_t^O = \phi(X_t)\delta_\tau(t)$.

We augment the model for an American option expiring at time $T$
to include the exercise time by $\Omega' = \Omega\times [0,T]$ and
algebras $\AA'_t = \AA_t\times\TT_t$.
The prices and cash flows are
$X'_t = (X_t, O_t)$, and $C'_t = (X_t, C_t)$.

We need to extend the measure by specifying
$P'(E\times E')$ for $E\subset\Omega$ and $E'\subset[0,T]$
so that $X'_t\Pi'_t = (\sum_{t<s\le u}C'_s\Pi'_s + X'_u\Pi'_u)|_{\AA'_t}$.
-->
