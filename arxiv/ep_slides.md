---
title: An Unexpected CAPM Formula
author: Keith A. Lewis
institute: KALX, LLC
date: October 2020
classoption: fleqn
fleqn: true
---

\newcommand\Var{\operatorname{Var}}
\newcommand\Cov{\operatorname{Cov}}

# CAPM Formula

The classical Capital Asset Pricing Formula states
the realized return $R$ of any _efficient portfolio_ satisfies
$$
	E[R] - R_0 = \beta(E[R_1] - R_0)
$$
for some $\beta\in\bm{R}$ where $R_0$ is the risk-less realized return and $R_1$ is the "market"
realized return.

We show
$$
	R - R_0 = \beta(R_1 - R_0)
$$
for any linearly independent, efficient $R_0$, $R_1$.

# One-Period Model

$I$ &ndash; _market instruments_.

$\langle \Omega, P\rangle$ &ndash; probability space for _outcomes_.

$x\in\bm{R}^I$ &ndash; _prices_ of instruments at the start of the period where
$x_i\in\bm{R}$ is the price of $i\in I$.

$X\colon\Omega\to\bm{R}^I$ &ndash; prices of instruments at the end of the period
where $X(\omega)\in\bm{R}^I$ are the final prices given $\omega\in\Omega$ occurred.

# Portfolio

Given a _portfolio_ $\xi\in\bm{R}^I$ its _realized return_ is
$$
R(\xi) = \xi' X/\xi' x.
$$
where $\xi'x = \xi\cdot x = \sum_{i\in I} \xi_i x_i$.

$R(t\xi) = R(\xi)$ for any non-zero $t\in\bm{R}$ so $R(\xi) = \xi'X$ if $\xi'x = 1$.

A portfolio $\xi$ is _efficient_ if
$$
\Var(R(\xi)) \le \Var(R(\nu))
$$
for every portfolio $\nu$ with $R(\xi) = R(\nu)$.

# Efficient

Given an expected realized return $\rho$ we want to minimize $\Var(R(\xi))$ given $E[R(\xi)] = \rho$.

Use Lagrange multipliers to minimize
$$
\frac{1}{2}\Var(\xi' X) - \lambda(\xi' x - 1) - \mu(E[\xi' X] - \rho)
$$
over $\xi\in\bm{R}^I$, $\lambda\in\bm{R}$, and $\mu\in\bm{R}$.

The first-order conditions are
$$
0 = V\xi - \lambda x - \mu E[X], \xi'x = 1, \mathrm{\ and\ } \xi'E[X] = \rho.
$$

# Solution

Note $\Var(\xi'X) = \xi'V\xi$ where 
$$
V = \Var(X) = E[XX'] - E[X]E[X'].
$$

If $V$ is invertible then $\lambda = (C - \rho B)/D$    
$\mu = (-B + \rho A)/D$ and
$$
\xi = \lambda V^{-1}x + \mu V^{-1}E[X]
$$
where $A = x'V^{-1}x$, $B = x'V^{-1}E[X] = E[X']V^{-1}x$, $C = E[X]V^{-1}E[X]$,
and $D = AC - B^2$

# Consequences

Every efficient portfolio is a linear combination of $V^{-1}x$ and $V^{-1}E[X]$.

If $\xi_0$ and $\xi_1$ are linearly independent, efficient portfolios then
so is $\xi = (1 - \beta)\xi_0 + \beta \xi_1$.

Since $\xi'X = (1 - \beta)\xi_0'X + \beta\xi_1'X$ and $\xi'x = 1$
$$
	R(\xi) - R(\xi_0) = \beta(R(\xi_1) - R(\xi_0))
$$
as **random variables**. CAPM follows by taking expected values.

# Remarks

- This can't be true!

- Why hasn't anyone picked up this $100 bill from the sidewalk?

- Classical literature focuses on $x$, $E[X]$, and $\Var(X)$.

- People are sloppy about writing down explicit mathematical models.

# Thanks

- Thank you, Bruno, for organizing BBQ seminars that provide a platform
for practitioners to share their work with a wide audience.

- Full paper available on [arxiv.org](https://arxiv.org/abs/2009.10852)

- Keith A. Lewis [kal@kalx.net](mailto:kal@kalx.net)

- For a fun time, see the [Universal Model](https://kalx.net/um.pdf) that
provides a framework to value, hedge, and manage the risk of any derivative.


