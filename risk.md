---
title: Risky Bonds
author: Keith A. Lewis
copyright: © 2019 Keith A. Lewis
classoption: fleqn
abstract: |
	A simple model for the price of risky bonds.
...

The _unified model_ specifies prices
$X_{t}\colon\AA_{t} \to \mathbf{R}^{I}$, and cash flows
$C_{t}\colon\AA_{t} \to \mathbf{R}^{I}$, where $I$ are the
available market instruments. It is arbitrage free if and
only if there exists deflators $D_t\colon\AA_t\to (0,\infty)$
with
$$
	X_t D_t = E_t[X_v D_v + \sum_{t < u \le v} C_u D_u].
$$
Since we can replace any deflators $(\hat{D}_t)$
by $(\hat{D}_t/\hat{D}_0)$ we assume $D_0 = 1$.

If there is a finite number of cash flows then the initial
prices are
$$
	X_0 = E\sum_{t>0} C_t D_t.
$$

A _trading strategy_, $(\tau_j, \Gamma_j)$, is a set of strictly increasing
stopping times and trades $\Gamma_j\colon\AA_{\tau_j}\to\mathbf{R}^{I}$.
The _position_, $\Delta_t = \sum_{\tau_j < t} \Gamma_j
= \sum{s < t} \Gamma_s$, is the accumulated trades to date.

The _value_ of a trading stategy at $t$ is $V_t = (\Delta_t + \Gamma_t)\cdot X_t$:
the amount of money you recieve for unwinding your existing position and
the trade you just dit. The _amount_ of a trading strategy at $t$
is $A_t = \Delta_t\cdot C_t - \Gamma_t\cdot X_t$: you get all cash flows proprtional
to your position in each instrument and you pay the prevailing market price
of every trade you execute.

As simple consequence of the definition of value and amount is
$$
	V_t D_t = E_t[V_v D_v + \sum_{t < u \le v} A_u D_u].
$$

If a trading strategy closes out, i.e., the position is eventually 0,
then the initial value is
$$
	V_0 = E\sum_{t>0} A_t D_t.
$$

## Zero Coupon Bonds

Let $D(u)$ denote a zero coupon bond maturing at $u$. It has a unit cash
flow at time $u$. Its price at time $t$, $D_t(u)$, is determined by 
$D_t(u)D_t = E_t[D_u]$ for $t\le u$. Since there are no cash flows
after time $u$ we have $D_t(u) = 0$ for $t > u$.

In particular, $D_t(u) = E_t D_u/D_t$ and $D_0(u) = E_t D_t$. We write
$D(u)$ for $D_0(u)$ in order to usefully confuse it with the name of
the zero coupon bond.

## Risky Zero Coupon Bonds

Let $D^{T,R}(u)$ denote a zero coupon bond
maturing at $u$ issued by a company that defaults at time $T$ and pays
(proportional) recovery $R$ at default.  It has a cash flow of $1$ at $u$
if $T > u$ and a cash flow of $R$ at $T$ if $T\le u$, where $T$ and $R$
are random variables with $T\ge 0$ and $0\le R\le 1$.
A natural sample space for the random variables $T$ and $R$ is
$\Omega = [0,\infty)\times [0,1]$.

The value of this instrument at time $t$, $D_t^{T,R}(v)$, is determined by
$$
	D_t^{T,R}(v)D_t = E_t\bigl[\sum_{t<u\le v} R1(T = u)D_u + 1(T > v)D_v\bigr],
$$
where $D_t$ is a deflator.

Assuming rates are 0, so $D_t = 1$, and $R$ is constant, the only
random variable is the default time and the sample space is $\Omega =
[0,\infty)$.  There is a natural filtration $(\AA_t)_{t\ge0}$ associated
with any default time.  The atoms of $\AA_t$ are the singletons $\{s\}$
for $s < t$ and the set $[t,\infty)$: if default occurs prior to $t$ we
know exactly when it happened, otherwise all we know is default happened
at or after $t$. Note we do not have instantaneous knowledge of default
so $\{t\}$ is not an atom of $\AA_t$.

Under these assumptions
$$
	D_t^{T,R}(v) = R E_t[\sum_{t< u \le v} 1(T = u)] + E_t[1(T > v)].
$$

Recall that for a random variable, $X$, on $\langle\Omega, P, \AA\rangle$,
where $\AA$ is finite, we have $E_t[X](\omega) = \int_A X\,dP/P(A) =
(XP)(A)/P(A)$ where $A$ is the atom of $\AA$ containing $\omega$. The
conditional expectation is constant on the atom and we define $0/0 = 0$.

Consider $E_t[\phi(T)]$. For $s < t$ we have
$E_t[\phi(T)](s) = \phi(s)$ since $\{s\}$ is the atom containing $s$.
For $s \ge t$ we have
$E_t[\phi(T)](s) = \int_t^\infty \phi\,dP/P(T \ge t)$ since
$[t,\infty)$ is the atom containing $s$.

If $\phi(t) = 1(T = t)$ then for $s < t$
$E_t[1(T = u)](s) = 0$ and for $s \ge t$
$E_t[1(T = u)](s) = P(T = u)/P(T \ge t)$.

If $\phi(t) = 1(T > u)$ then for $s < t$
$E_t[1(T > v)](s) = 0$ and for $s \ge t$
$E_t[1(T > v)](s) = P(T > v)/P(T\ge t)$.

This shows
$$
D_t^{T,R}(v) = [R P(t < T \le v) + P(T > v)]1(T \ge t)/P(T\ge t).
$$

If $R$ is random this becomes
$$
D_t^{T,R}(v) = \bigl\{\int_{t+}^v E_t[R|T=u]\,dP(T\le u) + P(T > v)\bigl\}1(T \ge t)/P(T\ge t).
$$

For the case of stochastic short rate and the standard assumption rates are independent of default
and recovery, we have
$$
D_t^{T,R}(v) = \bigl\{\int_{t+}^v D(t,u) E_t[R|T=u]\,dP(T\le u) + D(t,T) P(T > v)\bigl\}1(T \ge t)/P(T\ge t),
$$
where $D(t,u) = E_t D_u/D_t$ is the price at time $t$ of a zero coupon bond maturing at $u$.

It is convenient to factor the formula above into two components: a _fee leg_ and a _protection leg_.

## Fee Legs

A fee leg consists of a stream of fixed cash flows that stop at default. Assuming zero recovery,
the present value of the stream $c_j$ and times $t_j$ is
$$
	E[\sum_j c_j D_{t_j} 1(T > t_j)] = \sum_j c_j D(t_j) P(T > t_j)
$$
assuming (as above) rates and defaults are independent.

## Protection Legs

A protection leg pay unit notional at time of default. The present value of the leg for protection
over the period $[0,u]$ is
$$
	E[\int_0^u D_t P(T = t)\,dt] = \int_0^u D(t) f(t)\,dt
$$
where $f$ is the probability density function of the default time.

## Possible Implementation

Given a _hazard rate_, $\lambda(t)$, defined by $P(t < T < T + h|T > t) = \lambda(t)h + o(h)$ we get
$P(T > t) = \exp(-\int_0^t \lambda(s)\,ds)$ so $dP(T \le t) = \lambda(t) P(T > t)$ is the density
for the default time.

If we assume piecewise constant forward and hazard rates the integral
for the protection leg has a closed form solution.  Taking the union of
the knots for the forward and hazard we will need to compute integrals
of the form
$$
\int_a^b \exp(-f s) \lambda \exp(-\lambda s)\,ds
= \lambda \int_a^b \exp(-(f + \lambda) s)\,ds
= -(\lambda/(f + \lambda)) \exp(-(f + \lambda) s)|_a^b.
$$
