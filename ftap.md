# Unified Derivatives

This note suggests a rigourous mathematical theory for pricing, hedging,
and quantifying the risk of _any_ derivative security assuming a single
currency and perfect liquidity. 

## Mathematical Preliminaries

Mathematical finance involves mathematics.
Our unified approach requires far less mathematics than
the standard theory. A complete review of what is
required follows.

### Outcomes

The _outcomes_ that can happen are modeled by
a set, $\Omega$. In the Black-Scholes/Merton model
$\Omega = C[0,\infty)$, the set of continuous functions
from now into the future. They model the possible future
stock price movements.

The set of possible outcomes can contain historical information
and data other than prices. Many models involving
trading stategies do. 

### Algebras
An _algebra_, $\AA$, is a collection of subsets of $\Omega$ closed under
complement and union. Elements of $\AA$ are called _events_. It
is customary to assume the empty set belongs to an algebra.
An _atom_, $A\in\AA$ has the property $B\subseteq A$ and
$B\in\AA$ implies $B = \emptyset$ or $B = A$.

**Lemma.**
_If an algebra is finite then the atoms form a_ partition.

A _partition_ is a collection of disjoint subsets having
union equal to the entire set. Every outcome $\omega\in\Omega$
belongs to an atom $A_\omega = \cap\{A\in\AA:\omega\in A\}$.
Let $\{A_j\}$ be the set
of atoms. Since $A_j\cap A_k\subseteq A_j$ then
either $A_j\cap A_k = \emptyset$ or $A_j\cap A_k = A_j$.
If the sets are not disjoint, then $A_j\subseteq A_k$.
Since $A_j$ is not empty, $A_j = A_k$.

Partitions are how _partial information_ is modeled. Knowing
which $\omega\in\Omega$ occurs is complete information. Knowing
only which atom $\omega$ belongs to is partial information.
The partition of all singleton sets corresponds to complete
information. The partition consisting of the set $\Omega$
represents total lack of information.

### Measurable Functions

A function $X\colon\Omega\to\RR$ is _$\AA$-measurable_ 
if $X^{-1}((-\infty,x]) = \{\omega\in\Omega:X(\omega)\le x\}$
belongs to $\AA$ for all $x\in\RR$. If $\AA$ is finite,
a function is measurable if and only if it is constant on
atoms. We use the notation $X\colon\AA\to\RR$ to indicate
$X$ is $\AA$-measurable.

### Measures
A (finitely additive) _measure_ is a function $\Pi\colon\AA\to\RR$
such that $\Pi(A\cup B) = \Pi(A) + \Pi(B) - \Pi(A\cap B)$.  Note
$\Pi(\emptyset\cup\emptyset) = 2\Pi(\emptyset)$ so $\Pi(\emptyset) =
0$ and $\Pi(A\cup B) = \Pi(A) + \Pi(B)$ if $A\cap B = \emptyset$. The
_integral_ of $X\colon\AA\to\RR$, $\int_\Omega X\,d\Pi$, is defined in
the same way as for standard Lebesgue theory.
Proving theorems about interchange of limits is more difficult
than for countable additive measures, but we have no need for
those results. 

Let $B(\Omega,\AA)$ be the vector space of bounded linear $\AA$-measurable
functions on $\Omega$. The space of bounded linear functionals,
$B(\Omega,\AA)^*$, can be identified with the space of finitely additive
measures, $ba(\Omega,\AA)$.  We use the notation $\langle X,\pi\rangle =
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

**Lemma.** _$Y = E[X|\BB]$ if and only if $Y$ is $\BB$-measurable and
$YP|_\BB = XP|_\BB$._

$\Pi|_\BB$ is the measure $\Pi$ _restricted_
to the algebra $\BB$. The following statements are equivalent:
$\int_B Y\,dP = \int_B X\,dP$ for all $B\in\BB$.
$\langle 1_BY,P\rangle = \langle 1_BX,P\rangle$ for all $B\in\BB$.
$\langle 1_B,YP\rangle = \langle 1_B,XP\rangle$ for all $B\in\BB$.
$YP|_\BB = XP|_\BB$.

### Filtrations
Let $T$ be the times at which trading can occur.  A collection
$(\AA_t)_{t\in T}$ with  $\AA_t \subseteq \AA_u$ if $t < u$ is a
_filtration_. It models information revealed over time.

### Prices and Cash Flows
Let $I$ be the set of market traded instruments.  A _model_ consists
of bounded, vector-valued functions $X_t\colon\AA_t\to\RR^I$ and
$C_t\colon\AA_t\to\RR^I$ that represent _prices_ and _cash flows_.
The price is assumed to be in a given currency and every instrument
can be bought or sold in any quantity at that price.  Cash flows are
payments associated with holding an instrument, e.g., coupons for bonds
and dividends for stocks.

### Trades and Position
A _trading strategy_ is a set of increasing times $(\tau_j)$ and
_trades_ $\Gamma_j\colon\AA_{\tau_j}\to\RR^I$.
Trades accumulate into a _position_
$\Delta_t = \sum_{\tau_j < t} \Gamma_j$.
The inequality is strict because trades don't instantly
show up in your account.
If we define $\Gamma_t = \Gamma_j\delta_{t_j}(t)$
where $\delta_{t_j}(t) = 1$ if $t_j = t$ and $0$ otherwise,
then
$$
\Delta_t = \sum_{s < t} \Gamma_s.
$$

### Account and Value
Trades result in numbers showing up in your _account_.
At time $t$ your account statement will be
$$
A_t = \Delta_t \cdot C_t - \Gamma_t\cdot X_t.
$$
You receive all the cash flows from your existing position
and pay for the trades you do based on market prices.

The (marked-to-market) _value_ of your trades at time $t$
is
$$
V_t = (\Delta_t + \Gamma_t)\cdot X_t.
$$
It represents
the amount you would get from unwinding your current
position and the trades you just did.

### Arbitrage
_Arbitrage_ exists if there are trades with $\sum \Gamma_j = 0$,
$A_{\tau_0} > 0$, and $A_t\ge0$ for $t > \tau_0$.
In words, there is a trading strategy that eventually closes out,
makes money on the first trade, and never loses thereafter.

Note that this definition does not involve measures. 
It is not satisfactory in practice since
$A_{\tau_0} = -\Gamma_0\cdot X_{\tau_0}$ may be arbitrarily
small compared to $|\Gamma_0|\cdot |X_{\tau_0}|$.
The latter is a measure of the amount of capital required
to place the initial trade.

### Pricing Measures
_Pricing measures_ are positive (finitely additive) measures
$\Pi_t\colon\AA_t\to\RR$ such that
$$
X_t\Pi_t = (\sum_{t<s\le u} C_s\Pi_s + X_u\Pi_u)|_{\AA_t}
$$

If $T = \{t_j\}$ is discrete, then
$$
X_j \Pi_j = (C_{j+1} + X_{j+1})\Pi_{j+1}|_{\AA_j}\tag{1}
$$
where $X_j = X_{t_j}$, etc. We have
\begin{align*}
V_j \Pi_j &= (\Delta_j + \Gamma_j)\cdot X_j\Pi_j\\
&= \Delta_{j+1}\cdot X_j\Pi_j\\
&= \Delta_{j+1}\cdot (C_{j+1} + X_{j+1})\Pi_{j+1}|_{\AA_j}\\
&= (A_{j+1} + \Gamma_{j+1}\cdot X_{j+1}
+ \Delta_{j+1}\cdot X_{j+1})\Pi_{j+1}|_{\AA_j}\\
&= (A_{j+1} + V_{j+1})\Pi_{j+1}|_{\AA_j}\\
\end{align*}
The equation
$$
V_j \Pi_j= (A_{j+1} + V_{j+1})\Pi_{j+1}|_{\AA_j}\tag{2}
$$
is the skeleton key to understanding derivative securities.
Note how $V$ and $A$ in equation (2) correspond to
$X$ and $C$ in equation (1). Trading strategies make it
possible to create synthetic instruments.

A _derivative security_ is a contract between a _buyer_
and a _seller_ to make future exchanges.
The Fundamental Theorem of Asset Pricing provides a mathematical
basis for determining the value of the contract.

We only consider _cash settled_ derivatves. An European call option on
a stock that expires in-the-money does not pay one share of stock in
exchange for the strike. It pays the the difference of the
share price and the strike if that is positive.

A derivative contract specifies amounts, $A_j$, to be paid at
times $t_j$. The buyer receives $A_j$ if $A_j > 0$ and pays
$-A_j$ to the seller if $A_j < 0$.

An European option has only one payment at expiration $u$.
If we can find trades $\Gamma_j$ at $\tau_j$ such that
$A_t = 0$ for $0 < t < u$ and $A_u$ is the option payoff,
then the cost of setting up the initial hedge, $V_0$,
is the value of the option. (Assuming $\tau_0 = 0$ and
$\tau_n = u$.)

## The Fundamental Theorem of Asset Pricing
**Fundamental Theorem of Asset Pricing**. _A model is arbitrge
free if and only if pricing measures exist._

One direction is easy. If pricing meaures exist, then
$V_0\Pi_0 = \sum_{j>0} A_j\Pi_j|_{\AA_0}$. If $A_j\ge 0$ for $j > 0$
then $V_0\Pi_0 \ge 0$. Since $V_0 = \Gamma_0\cdot X_0
= -A_0$ it follows that $-A_0\Pi_0\ge 0$ and $A_0\le 0$
if $\Pi_0 > 0$. This shows no arbitrage exists.

Stephen Ross was the first to use the Hahn-Banach theorem to
show no arbitrage implies the existence of pricing measures. This set off
a cottage industry of academics attempting to provide a mathematically
correct version of his pioneering result.

What they overlooked is that this is unnecessary. It is quite easy
to produce pricing measures by simply writing them down. No need
to use the Hahn-Banach theorem to prove they exist.

Given a filtration $(\AA_t)$ on $\Omega$ and a positive measure, $P$,
with $P(\Omega) = 1$, pick any $\RR^I$-valued martingale $(M_t)$ and
any adapted positive scalar function $(D_t)$, then
$$
X_t = (M_t - \sum_{s<t}C_sD_s)/D_t,\quad\Pi_t = D_tP|_{\AA_t}
$$
is an arbitrage free model.

## Zero Coupon Bonds

A _zero coupon bond_, $D(u)$, maturing at time $u$ has cash flow
$C_u = 1$. Its price at time $t < u$ satisfies
$X^{D(u)}_t\Pi_t = \Pi_u|_{\AA_t}$. We use the notation
$D_t(u) = X^{D(u)}_t$.

$D_t(t + \Delta t) = R_t = \exp(f_t\,\Delta t)$.
$R_t$ is the _instantanious realized return_ and
$f_t$ is the _instantanious forward rate_.

Define $D_t = \Pi_{s<t} R_s = \exp(\sum_{s<t} f_s\,\Delta s)$.

Lemma. $XP|_\AA = YP|_\AA$ and $X$ is $\AA$ measurable
is equvalent to $X = E[Y|\AA]$.

## Risky Assets

Death and taxes are the only guarantees in life. When two
counterparties enter into a legal contract for the exchange
of cash flows, one or the other might not be able to make
good on the agreement.

Let $T$ be a random variable indicating the time of default of the
seller and $R$ be a random variable taking values between 0 and 1
indicating the fraction of the payments that will be recovered.

Various attempts have been made at mapping the real world to
mathematics. The default time is correlated with other events
and so is recovery. The current literature ignores this in
order to simplify the mathematics.

It assumes the default time is not correlated with other
important factors such as interest rates and that recovery
is just a number. None of this is true, but it helps to
scratch out a primitive theory that might be useful
as a first approximation.

Another issue is what recovery applies to at the time of default. Is it
the present value of future cash flows or a payout at default of the
notional as in credit default swaps?

In order to stumble under the street light I make the assumption that
default time is independent of other factors and that recovery is a
number that applies to cash flows at the times specified in the contract.
This is similar to assuming recovery applies to the remaining present
value of the trade at the time of default.

A model of prices, $(X_t)_{t\in T}$, and cash flows, $(C_t)_{t\in T}$,
are vector-valued stochastic processes on a set $\Omega$
adapted to a filtration
$(\AA_t)_{t\in T}$. It is arbitrage free if there exist positive scalar
measures $(\Pi_t)_{t\in T}$ such that
$$
X_t\Pi_t = (\sum_{t<s\le u} C_s\Pi_s + X_u\Pi_u)|_{\AA_t}
$$
for $t < u$. We assume there exist instruments at each time, $t$,
having price $X_t = 1$ and paying a cash flow
$C_{t+dt} = 1 + f_t\,dt = \exp(f_t\dt)$. We call $(f_t)$ the
_short rate process_. Let $D_t = \exp(-\int_0^t f_s\,ds)$ be
the _stochastic discount_. 

We can pick any probability measure $P$ on $\Omega$

Our information at time $t$ about $T$ is either that default
has already happened ($T \le t$) and we know the exact time
of default, or default has not occured ($T > t$) and only
that $T\in(t,\infty)$. The algebra describing this information
contains every subset of $[0,t]$ and the set $(t,\infty)$.

## Zero Coupon Bonds

A _zero coupon bond_, $D(u)$, has a
single cash flow $C_u = 1$. Its price at time $t$
satisfies $X_t\Pi_t = \Pi_u|_{\AA_t}$ so the price at time $t$ satisfies
$D_t(u) = E[D_u|\AA_t]/D_t$.

### Risky Zero Coupon Bonds

A risky bond, $D^{T,R}(u)$, has the cash flow $C_u = 1(T > u) + R1(T \le u)$.
Assume recovery is a number and default time is independent
the price at time 0 is
$$
D_0^{T,R}(u) = D_0(u)(P(T > u) + RP(T\le u))
= D_0(u)(R + (1 - R)P(T>u)).
$$

## Forward Rate Agreements

A _forward rate agreement_ issued at time $t$ over the
interval $[u,v]$ has price $X_t = 0$ at time $t$ and
cash flows $C_u = -1$ and $C_v = 1 + \delta F_t(u,v)$,
where $F_t(u,v)$ is the par rate quoted for the contract
at time $t$ and $\delta = \delta(u,v)$ is the _day count
fraction_ (approximately equal to $v - u$ in years.)

Since $0 = (-\Pi_u + (1 + \delta F_t(u,v))\Pi_v)|_{\AA_t}$
we have $F_t(u,v) = (D_t(u)/D_t(v) - 1)/\delta$.

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
$$
\begin{align*}
F_t^{T,R}(u,v) - F_t(u,v)
&= (D_t^{T,R}(u)/D_t^{T,R}(v) - D_t(u)/D_t(v))/\delta\\
&= (. - e^{r(v - u)})/\delta\\
\end{align*}
$$
