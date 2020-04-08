---
title: CAPM Derivatives
author: Keith A. Lewis
institute: KALX, LLC
classoption: fleqn
---

Let $I$ be the set of _market instruments_.

Let $T$ be the totally ordered set of _trading times_.

Let $\Omega$ be the set of all possible _outcomes_.

Let $\mathcal{A}_t$, be the _partiton_ of $\Omega$ representing
information available at time $t\in T$.

Let $X_t\colon\mathcal{A}_t\to\mathbf{R}^I$ be the _prices_ of market
instruments at time $t$.

Let $C_t\colon\mathcal{A}_t\to\mathbf{R}^I$ be the _cash flows_ of market
instruments at time $t$ that have been acquired prior to time $t$.

Let $\Gamma_t\colon\mathcal{A}_t\to\mathbf{R}^I$ be the number of
_shares_ traded in each instruments at time $t$.

Let $\Delta_t = \sum_{s<t} \Gamma_s$ be the _position_ at time $t$.

Define $V_t = (\Delta_t + \Gamma_t)\cdot X_t$ to be the _value_ of the
position at time $t$.

Define $A_t = \Delta_t\cdot C_t - \Gamma_t\cdot X_t$ to be the
_amounts_ associated with trading $(\Gamma_t)_{t\in T}$.

A collection of trades is _closed out_ when the position $\sum_t \Gamma_t = 0$.

There is a _model arbitrage_ if there is a closed out strategy with
$A_{t_0} > 0$ and $A_t \ge 0$ for $t > t_0$.

There is no model arbitrage if and only if there exist positive
measures $\Pi_t$ on $\mathcal{A}_t$ with
$X_t\Pi_t = ((C_u + X_u)\Pi_u)|_{\mathcal{A}_t}$ for sufficiently small
$u > t$.

## One Period Model

In this case $T = \{t_0,t_1\}$ and $\Gamma_{t_0} = \Gamma$,
$\Gamma_{t_1} = -\Gamma$ for closed out strategies.

Using the definitions above, the initial amount is $A_{t_0} = -\Gamma\cdot
X_{t_0}$ and the final amount is $A_{t_1} = \Gamma\cdot (C_{t_1} +
X_{t_1})$.

Let $x = X_{t_0}$ and $X = C_{t_1} + X_{t_1}$.

There is no arbitrage if and only if there is a positive measure,
$\Pi$, on $\Omega$ with $x = \int_\Omega X\,d\Pi$.  We call
$\Pi$ a _deflator_.

A _zero coupon bond_, $\zeta\in\mathbf{R}^I$, has $\zeta\cdot X = 1$ 
on $\Omega$. Its initial value is $D = \zeta\cdot x$. Let $R = 1/D$.
Note $Q = \Pi/R$ is a positive measure with mass 1.

## CAPM

The one period Capital Asset Pricing Model assumes there is
a probability measure, $P$, on $\Omega$ representing the
"real-world" probability of possible outcomes.

A _portfolio_ is the number of shares purchased at the beginning
of the period, $\xi\in\mathbf{R}^I$.
The _realized return_ over the period is $R(\xi) = \xi\cdot X/\xi\cdot x$.

It also posits a utility function of the form $U_\tau(\xi) = E \xi\cdot X
- \frac{\tau}{2} \mathrm{Var}(\xi\cdot X)$ where $\tau$ a risk aversion
parameter.

We wish to maximize $U_\tau(\xi)$ given $\xi\cdot x = 1$.

Let $\Phi(\xi) = U_\tau(\xi) - \lambda(\xi\cdot x - 1)$.

The Fréchet derivative with respect to $\xi$ is
$D_\xi\Phi(\xi) = E X' - \tau \xi'\Sigma - \lambda x'$, where
$\Sigma = E[XX'] - E[X]E[X]'$.

If there is an extremum, $\xi^*$, then using $\xi^*\cdot x = 1$
$0 = E \xi^*\cdot X - \tau \xi^*\cdot\Sigma\xi^* - \lambda$.
so $\lambda = U(\xi)$.

## Appendix

The Fréchet derivative of a function $F\colon X\to Y$ where $X$ and
$Y$ are Banach spaces, $DF\colon X\to\mathcal{B}(X,Y)$, is defined
by $F(x + h) = F(x) + DF(x)h + o(\|h\|)$. Here $\mathcal{B}(X,Y)$
is the space of bounded linear operators from $X$ to $Y$.

Note if $Y = \mathbf{R}$ then $DF\colon X\to\mathcal{B}(X, \mathbf{R})$
and $\mathcal{B}(X, \mathbf{R}) = X^*$ is the dual space of $X$.

If $X = \mathbf{R}^n$ we write $X^* = (\mathbf{R}^n)^* = \mathbf{R}_n$.

## Completing the square

$\|Ax - b\|^2 = x'A'Ax - 2 b'Ax + \|b\|^2$.

Let $A'A = B$ and $b'A = c'$. If $A' = A$ then $B^{1/2} = A$.

$x'Bx - 2 c'x = \|B^{1/2}x - B^{-1/2}c\|^2 - \|B^{-1/2}c\|^2$.

\begin{align*}
U(\xi) &= EX'\xi - \frac{\tau}{2} \xi'\Sigma\xi\\
    &= \|(\frac{\tau}{2}\Sigma)^{-1/2}EX\|^2
    - \|(\frac{\tau}{2}\Sigma)^{1/2}\xi - (\frac{\tau}{2}\Sigma)^{-1/2}EX\|^2\\
\end{align*}
