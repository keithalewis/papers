---
title: CAPM
author: Keith A. Lewis
institute: KALX, LLC
classoption: fleqn
fleqn: true
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

Define $\Delta_t = \sum_{s<t} \Gamma_s$ be the _position_ at time $t$.

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

In this case $T = \{t_0,t_1\}$ and $\Gamma_{t_0} = \Gamma_0 = \Gamma$,
$\Gamma_{t_1} = \Gamma_1 = -\Gamma$ for closed out strategies.

Using the definitions above, the initial amount is $A_0
= \Delta_0\cdot C_0 - \Gamma_0\cdot X_0
= - \Gamma\cdot X_0$
and the final amount is $A_1
= \Delta_1\cdot C_1 - \Gamma_1\cdot X_1
= \Gamma\cdot (C_1 + X_1)$.

Let $x = X_0$ and $X = C_1 + X_1$ so $A_0 = -\Gamma\cdot x$
and $A_1 = \Gamma\cdot X$.

There is no arbitrage if and only if there is a positive measure,
$\Pi$, on $\Omega$ with $x = \int_\Omega X\,d\Pi$.  We call
any such $\Pi$ a _deflator_ or a _risk-neutral_ measure.

Let $Q = R\Pi$ where $1/R = \|\Pi\|$. Note $Q$ is a positive measure with mass 1
and $x = E^Q[X]/R$.

A _portfolio_, $\xi\in\mathbf{R}^I$, is the number of shares purchased at
the beginning of the period.  The _realized return_ over the period is
$R(\xi) = \xi\cdot X/\xi\cdot x$.  Note $E^Q[R(\xi)] = R$ for all $\xi$
with $\xi\cdot x \not= 0$.

A _zero coupon bond_, $\zeta\in\mathbf{R}^I$, has $\zeta\cdot X = 1$ on
$\Omega$. Its initial value is $D = \zeta\cdot x = \int_\Omega \zeta\cdot
X\,d\Pi = \|\Pi\| = 1/R$.

## CAPM

The one period _Capital Asset Pricing Model_ assumes there is
a probability measure, $P$, on $\Omega$ representing the
"real-world" probability of possible outcomes.

The CAPM also posits a utility function of the form 
$$
U_\tau(\xi) = E \xi\cdot X - \frac{\tau}{2} \mathrm{Var}(\xi\cdot X)
    = \xi' EX - \frac{\tau}{2}\xi'\Sigma\xi
$$
where $\tau$ a risk aversion parameter and
$\Sigma = E[XX'] - E[X]E[X']$.
Note if $\zeta$ is a zero coupon bond then $\Sigma\zeta = 0$ so
$\Sigma$ is not invertible.

We wish to maximize $U_\tau(\xi)$ subject to $\xi' x = 1$.
Using a Lagrangian multiplier let $\Phi(\xi,\lambda) = U_\tau(\xi) - \lambda(\xi'x - 1)$.
We have

$$
\begin{aligned}
	D_\xi\Phi &= E[X] - \tau\Sigma\xi - \lambda x\\
	D_\lambda\Phi &= \xi'x - 1\\
\end{aligned}
$$

so

$$
	\begin{bmatrix}
		\tau\Sigma & x \\
		x' & 0 \\
	\end{bmatrix}
	\begin{bmatrix}
		\xi \\
		\lambda \\
	\end{bmatrix}
	= 
	\begin{bmatrix}
		E[X] \\
		1 \\
	\end{bmatrix}
$$

The matrix is not invertable however

$$
\begin{bmatrix}
\tau\Sigma & x\\
x'& \epsilon\\
\end{bmatrix}^{-1}
=
\begin{bmatrix}
\Delta^{-1} & -\Delta^{-1}x/\epsilon\\
-x'\Delta^{-1}/\epsilon & (\epsilon + x'\Delta^{-1}x)/\epsilon^2\\
\end{bmatrix}
$$
where $\Delta = \tau\Sigma - xx'/\epsilon$.

By the  Sherman-Morrison formula
$$
	(\tau\Sigma - cc'/\epsilon){-1} = (\tau\Sigma)^{-1}
	+ ((\tau\Sigma)^{-1}xx'(\tau\Sigma)^{-1}/\epsilon)/(1 - x'(\tau\Sigma)^{-1}x/\epsilon)
$$

## Appendix

### Completing the Square

If $A$ is positive definite then
$$
\|A^{1/2}x - A^{-1/2}b\|^2 = x'Ax - 2 b'x + b'A^{-1}b
$$
so
$$
2U(\xi) = 2EX'\xi - \tau\xi'\Sigma\xi
    = EX'(\tau\Sigma)^{-1}EX
    - \|(\tau\Sigma)^{-1/2}\xi - (\tau\Sigma)^{-1/2}EX\|^2
$$
This is maximized when $\xi = (\tau\Sigma)^{-1}EX$ with
maximum utility $U(\xi) = \frac{1}{2}EX'(\tau\Sigma)^{-1}EX$.

#### Two Assets

Let $x = (r,s)$ and $X = (R,S)$.

$$
\Sigma = E[XX'] - E[X] E[X'] =
    \begin{bmatrix}
        \mathrm{Var}(R) & \mathrm{Cov}(R,S)\\
        \mathrm{Cov}(R,S) & \mathrm{Var}(R)\\
    \end{bmatrix}
$$

$$
\Sigma^{-1}
= \frac{1}{\mathrm{Var}(R)\mathrm{Var}(S) - \mathrm{Cov}(R,S)^2}
    \begin{bmatrix}
        \mathrm{Var}(S) & -\mathrm{Cov}(R,S)\\
        -\mathrm{Cov}(R,S) & \mathrm{Var}(R)\\
    \end{bmatrix}
$$

$$
\Sigma^{-1}EX
= \frac{1}{\mathrm{Var}(R)\mathrm{Var}(S) - \mathrm{Cov}(R,S)^2}
    \begin{bmatrix}
        ER\,\mathrm{Var}(S)  - ES\,\mathrm{Cov}(R,S)\\
        -ER\,\mathrm{Cov}(R,S) + ES\,\mathrm{Var}(R)\\
    \end{bmatrix}
$$

$$
EX'\Sigma^{-1}EX
= \frac{1}{V_R V_S - C_{R,S}^2}
        [(ER)^2 V_S  - 2ER\,ES C_{R,S} + (ES)^2 V_R]
$$

### Block Matrix Inversion

$$
\begin{bmatrix}
A & B\\
C & D\\
\end{bmatrix}^{-1}
=
\begin{bmatrix}
\Delta^{-1} & -\Delta^{-1}BD^{-1}\\
-D^{-1}C\Delta^{-1} & D^{-1} + D^{-1}C\Delta^{-1}BD^{-1}\\
\end{bmatrix}
$$
where $\Delta = A - BD^{-1}C$.
so
$$
\begin{bmatrix}
A & c\\
c'& \epsilon\\
\end{bmatrix}^{-1}
=
\begin{bmatrix}
\Delta^{-1} & -\Delta^{-1}c/\epsilon\\
-c'C\Delta^{-1}/\epsilon & (\epsilon + c'\Delta^{-1}c)/\epsilon^2\\
\end{bmatrix}
$$
where $\Delta = A - cc'/\epsilon$.

Since
$$
    (A + UCV)^{-1} = A^{-1}
        + A^{-1}U(C^{-1} + VA^{-1}U)^{-1}VA^{-1}
$$
we have (taking $C = -1/\epsilon$)
\begin{aligned*}
    (A - cc'/\epsilon)^{-1} &= A^{-1}
        + A^{-1}c(-\epsilon + c'A^{-1}c)^{-1}c'A^{-1}\\
    &= A^{-1} + A^{-1}cc'A^{-1}/(-\epsilon + c'A^{-1}c)\\
\end{aligned*}


### Quadratic Optimization with Linear Constraint

Minimize $b'x - \frac{1}{2} x'Ax$ subject to $c'x = 1$.

Using Lagrangian multiplier $\lambda$

\begin{aligned*}
    0 &= b - Ax - \lambda c\\
    1 &= c'x\\
\end{aligned*}
so
$$
\begin{bmatrix}
    A & c\\
    c' & 0\\
\end{bmatrix}
\begin{bmatrix}
    x\\
    \lambda\\
\end{bmatrix}
=
\begin{bmatrix}
    b\\
    1\\
\end{bmatrix}
$$

### Fréchet Derivative

The Fréchet derivative of a function $F\colon X\to Y$ where $X$ and
$Y$ are Banach spaces, $DF\colon X\to\mathcal{B}(X,Y)$, is defined
by $F(x + h) = F(x) + DF(x)h + o(\|h\|)$. Here $\mathcal{B}(X,Y)$
is the space of bounded linear operators from $X$ to $Y$.

Note if $Y = \mathbf{R}$ then $DF\colon X\to\mathcal{B}(X, \mathbf{R})
= X^*$, the dual space of $X$.

If $X = \mathbf{R}^n$ we write $X^* = \mathbf{R}_n$.

If $\mathcal{M}^{n\times m}$ is the set of matrices of real numbers
having $n$ rows and $m$ columns then $\mathbf{R}^n = \mathcal{M}^{n\times 1}$
and $\mathbf{R}_m = \mathcal{M}^{1\times m}$.
