---
title: Efficient Portfolios
author: Keith A. Lewis
institute: KALX, LLC
classoption: fleqn
fleqn: true
thanks: |
	Peter Carr and David Shimko gave insightful feedback to
	make the exposition more accessible to finance professionals.
	Any remaining infelicities or omissions are my fault.
---

# Efficient Portfolios

Given two random realized returns on an investment, which is to
be preferred?  This is a fundamental problem in finance that has no
definitive solution except in the case one investment always returns
more than the other. If two portfolios have the same expected realized return
then one criterion is to prefer the one with smaller variance.
An _efficient portfolio_ has the least variance among all porfolios
having the same expected realized return.

In the one-period model every efficient portfolio belongs to a two-dimensional
subspace of the set of all possible realized returns and is uniquely
determined given its expected realized return.

We show that if $R_0$ and $R_1$ are the (random) realized returns of two efficient
portfolios then 
$$
	R - R_0 = \beta(R_1 - R_0)
$$
where $\beta = \operatorname{Cov}(R - R_0, R_1 - R_0)/\operatorname{Var}(R_1 - R_0)$ if $R$
is efficient.  This generalizes the classical Capital Asset Pricing
Model formula for the expected realized return of efficient portfolios.
The classic CAPM formula follows by taking expected values of both sides
when $\operatorname{Var}(R_0) = 0$ and $R_1$ is the "market" portfolio
$$
	E[R] - R_0 = \beta(E[R_1] - R_0)
$$
where $\beta = \operatorname{Cov}(R, R_1)/\operatorname{Var}(R_1)$.

## One-Period Model

This model is parameterized directly by instrument prices.  These have a
clear interpretation in the financial world and all other relevant financial
quantities can be defined in terms of prices and portfolios.

Let $I$ be the set of _market instruments_ and $\Omega$ be the set of
possible market outcomes over a single period.  The _one-period model_
specifies the initial instrument _prices_ $x\in\bm{R}^I$ and the final
instrument prices $X\colon\Omega\to\bm{R}^I$ depending on the outcome.
We assume, as customary, that there are no cash flows associated with
the instruments and transactions are perfectly liquid and divisible.
The one period model also specifies a probability measure $P$ on the
space of outcomes.

It is common in the literature to write $\bm{R}^n$ instead of
$\bm{R}^I$ where $n$ is the cardinality of the set of instruments $I$.
If $A^B = \{f\colon B\to A\}$ is the set of functions from $B$ to $A$
then $x\in\bm{R}^I$ is a function $x\colon I\to\bm{R}$
where $x(i) = x_i \in\bm{R}$ is the price of instrument $i\in I$. 
This avoids circumlocutions such as let $I = \{i_1,\ldots,i_n\}$ be the
set of instruments
and $x = (x_1,\ldots,x_n)$ be their corresponding prices $x_j = x(i_j)$, $j = 1,\ldots, n$.

A _portfolio_ $\xi\in\bm{R}^I$ is the number of shares initially purchased in each instrument.
The _value_ of a portfolio $\xi$ given prices $x$ is
$\xi\cdot x = \sum_{i\in I}\xi_i x_i$.
It is the cost of attaining the portfolio $\xi$.
The _realized return_ is $R(\xi) = \xi\cdot X/\xi\cdot x$ when $\xi\cdot x \not= 0$.
Note $R(\xi) = R(t\xi)$ for any non-zero $t\in\bm{R}$ so
there is no loss in assuming $\xi\cdot x = 1$ when considering returns.
In this case $R(\xi) = \xi\cdot X$ is the realized return on the portfolio.
It is common in the literature to use _returns_ instead of realized returns
where the return $r$ is defined by $R = 1 + r\Delta t$ or
$R = \exp(r\Delta t)$ where $\Delta t$ is the time in years or day count fraction of the period.
Since we are considering a one period model there is no need to drag $\Delta t$ into consideration.

Although porfolios and prices are both vectors they are not the same. A portfolio turns prices into
values. The function $\xi\mapsto \xi\cdot x$ is a _linear functional_ from prices to values.
Mathematically we say $\xi\in(\bm{R}^I)^*$, the _dual space_ of $\bm{R}^I$.
If $V$ is any vector space its dual space is $V^* = \mathcal{L}(V,\bm{R})$ where 
$\mathcal{L}(V,W)$ is the space of _linear transformations_ from the vector space $V$ to
the vector space $W$. If we write $\xi'$ to denote this linear functional corresponding to $\xi$ then
$\xi'x = \xi\cdot x$ is the linear functional applied to $x$.
We also write the _dual pairing_ as $\langle x, \xi\rangle = \xi'x$.

Note that $x\xi'$ is a linear transformation from $R^I$ to $R^I$ defined by
$(x\xi')y = x(\xi'y) = (\xi'y)x$ since $\xi'y\in\bm{R}$ is a scalar.
Matrix multiplication is just composition of linear operators.

## Model Arbitrage

There is _model arbitrage_ if there exists a portfolio $\xi$ with
$\xi'x < 0$ and $\xi'X(\omega) \ge0$ for all $\omega\in\Omega$:
you make money on the initial investment and never lose money
when unwinding at the end of the period. This definition does
not require a measure on $\Omega$.

The one-period
[Fundamental Theorem of Asset Pricing](#fundamental-theorem-of-asset-pricing)
states there is no model arbitrage if and only if there exists a positive measure $\Pi$ on $\Omega$ with
$x = \int_\Omega X(\omega)\,d\Pi(\omega)$. We assume $X$ is
bounded, as it is in the real world, and $\Pi$ is a
[_finitely additive measure_](#finitely-additive-measure).
The dual space of bounded functions on $\Omega$ is the space of finitely additive measures
on $\Omega$
with the dual pairing $\langle X,\Pi\rangle = \int_\Omega X\,d\Pi$ [@DunSch63].
???chapter, page???

If $x = \int_\Omega X\,d\Pi$ for a positive measure $\Pi$ then all portfolios
have the same expected realized return $R = 1/\|\Pi\|$ where $\|\Pi\| = \int_\Omega
1\,d\Pi$ is the mass of $\Pi$ and the expected value is with respect to
the probability measure $Q = \Pi/\|\Pi\|$.
This follows from $E[\xi'X] = \xi'x/\|\Pi\| = R\xi'x$ for any portfolio $\xi$.

Note $Q$ is not the probability of anything, it is simply a positive
measure with mass 1. The above statements are geometrical, not probabilistic.

## Efficient Portfolios

A portfolio $\xi$ is _efficient_
if $\operatorname{Var}(R(\xi)) \le \operatorname{Var}(R(\eta))$ for every
portfolio $\eta$ having the same expected realized return as $\xi$.

If $\xi'x = 1$ then $\operatorname{Var}(R(\xi)) = E[(\xi'X)^2] - (E[\xi'X])^2
= E[\xi' X X'\xi] - E[\xi'X] E[X'\xi] = \xi'V\xi$,
where $V = \operatorname{Var}(X) = E[XX'] - E[X]E[X']$.
We can find efficent portfolios using Lagrangian multipliers.
For a given realized return $\rho$ we can solve
$$
	\min\frac{1}{2}\xi'V\xi - \lambda(\xi'x - 1) - \mu(\xi'E[X] - \rho)
$$
for $\xi$, $\lambda$, and $\mu$.
The first order conditions for an extremum are
$V\xi - \lambda x - \mu E[X] = 0$, $\xi'x = 1$, and $\xi'E[X] = \rho$.


## References
