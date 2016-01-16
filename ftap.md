# The Fundamental Theorem of Asset Pricing

Let $\Omega$ be the set of possible outcomes and
$(\AA_t)_{t\in T}$ be algebras on $\Omega$
indexed by trading times $T$. The algebra
$\AA_t$ represents the information available at time $t$
and we assume $\AA_t \subseteq \AA_u$ if $t < u$.

Let $I$ be the set of market traded instruments.
A _model_ consists of _prices_ $X_t\colon\AA_t\to\RR^I$
and _cash flows_ $C_t\colon\AA_t\to\RR^I$ that are
bounded functions that depend only on the information
available at time $t$.

A _trading strategy_ is a set of increasing times $(\tau_j)$ and
_trades_ $\Gamma_j\colon\AA_{\tau_j}\to\RR^I$.
Trades accumulate into a _position_
$\Delta_t = \sum_{\tau_j < t} \Gamma_j$.
The inequality is strict because trades don't instantly
show up in your account.
If we define $\Gamma_t = \Gamma_j\delta_{t_j}(t)$
where $\delta_{t_j}(t) = 1$ if $t_j = t$ and $0$ otherwise,
then $\Delta_t = \sum_{s < t} \Gamma_s$.

Trades result in numbers showing up in your _account_.
At time $t$ your account statement will be
$A_t = \Delta_t \cdot C_t - \Gamma_t\cdot X_t$.
You receive all the cash flows from your existing position
and pay for the trades you do based on market prices.

The _value_ of your trades is $V_t = (\Delta_t + \Gamma_t)\cdot X_t$.
This is also called _market-to-market_.

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
