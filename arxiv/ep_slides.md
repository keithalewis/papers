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
for some $\beta\in\bm{R}$ where $R_0$ is the riskless realized return and $R_1$ is the "market"
realized return.

We show
$$
	R - R_0 = \beta(R_1 - R_0)
$$
for some $\beta\in\bm{R}$ where $R_0$ and $R_1$ are the realized returns of any two
linearly independent efficient portfolios.

# One-Period Model

$I$ &ndash; _market instruments_.

$\Omega$ &ndash; sample space of possible _outcomes_.

$x\in\bm{R}^I$ &ndash; _prices_ of instruments at the start of the period.  
Recall $R^I = \{x\colon I\to\bm{R}\}$ so $x(i)\in\bm{R}$ is the price of $i\in I$

$X\colon\Omega\to\bm{R}^I$ &ndash; prices of instruments at the end of the period
where $X(\omega)\in\bm{R}^I$ are the final prices given $\omega\in\Omega$ occured.

# Realized Return

Given a _portfolio_ $\xi\in\bm{R}^I$ its _realized return_ is    
$$
R(\xi) = \xi' X/\xi' x.
$$

Note $R(\xi)\colon\Omega\to\bm{R}$ is a function and $R(\alpha\xi) = R(\xi)$ for any non-zero $\alpha\in\bm{R}$.

Given an expected realized return $\rho$ we want to minimize $\Var(R(\xi))$ given $E[R(\xi)] = \rho$.

Use Lagrange multipliers to minimize    
$$
\Var(\xi' X)/2 - \lambda(\xi' x - 1) - \mu(E[\xi' X] - \rho)
$$
over $\xi\in\bm{R}^I$, $\lambda\in\bm{R}$, and $\mu\in\bm{R}$.

Note if $\xi' x = 1$ then $\xi' X = R(\xi)$.


# Efficient Portfolio

An _efficient portfolio_ has the least variance among all portfolios
having the same expected return.  [Markowitz, Roy 1952]

For any portfolios $R_0$, $R_1$ that are independent and efficient,    
$R = (1 - \beta)R_0 + \beta R_1$ is also efficient for $\beta\in\bm{R}$.

Note $R - R_0 = \beta(R_1 - R_0)$ where    
$\beta = \Cov(R - R_0)/\Var(R_1 - R_0)$
# Solution

\begin{aligned}
\Var(\xi' X) &= E[(\xi' X)^2] - E[\xi\cdot X]^2 \\
&= \xi'E[XX']\xi - \xi'E[X]E[X']\xi \\
&= \xi'V\xi \\
\end{aligned}
$$
where $V = \Var(X) = E[XX'] - E[X]E[X']$

If $V$ is invertible then    
&emsp;$\xi = \frac{C - \rho B}{D} V^{-1}x + \frac{-B + \rho A}{D} V^{-1}E[X]$    
where $A = xV^{-1}x$, $B = x'V^{-1}E[X] = E[X']V^{-1}x$, $C = E[X]V^{-1}E[X]$,
and $D = AC - B^2$

Note $\xi$ is a linear combination of $V^{-1}x$ and $V^{-1}E[X]$.
