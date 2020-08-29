---
title: Efficient Portfolios and Separation Theorems
author: Keith A. Lewis
institute: KALX, LLC
classoption: fleqn
fleqn: true
thanks: |
	Peter Carr and David Shimko gave insightful feedback to
	make the exposition more accessible to finance professionals.
	Any remaining infelicities or omissions are my fault.
---

<div id="kalx"><a href="mailto:kal@kalx.net">kal@kalx.net</a></div>

# Abstract

In the worlds of Portfolio Investment and Risk Management less variance
is better. Given two portfolios having the same return the one having
smaller variance is preferred. A portfolio having variance smaller
than every portfolio with the same return is called _efficient_.

In the [one-period model](#one-period-model) all efficient portfolios lie in a two-dimensional subspace.
Denoting the _realized return_ of a portfolio $\xi$ by $R(\xi)$,
for any independent optimal portfolios $\zeta$ and $\mu$ every optimal portfolio $\xi$ satisfies
$$
	R(\xi) - R(\zeta) = \beta\bigl(R(\mu) - R(\zeta)\bigr)
$$
as random variables where
$$
	\beta = \operatorname{Cov}\bigl(R(\xi) - R(\zeta),R(\mu) - R(\zeta)\bigr)/\operatorname{Var}\bigl(R(\mu) - R(\zeta)\bigr).
$$

The classical CAPM formula follows by taking expected values
$E[R(\xi)] - R = \beta(E[R(\mu)] - R)$ where $R = R(\zeta)$ is the riskless
return, and $\mu$ is the market portfolio.
In this case $\beta = \operatorname{Cov}(R(\xi),R(\mu))/\operatorname{Var}(R(\mu))$.

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

It is common in the literature to write $\bm{R}^n$ instead of
$\bm{R}^I$ where $n$ is the cardinality of the set of instruments $I$.
If $A^B = \{f\colon B\to A\}$ is the set of functions from $B$ to $A$
then $x\in\bm{R}^I$ is a function $x\colon I\to\bm{R}$
where $x(i)\in\bm{R}$ is the price of instrument $i\in I$. 
This avoids circumlocutions like let $I = \{i_1,\ldots,i_n\}$
and $x = (x_1,\ldots,x_n)$ where $x_j = x(i_j)$, $j = 1,\ldots, n$.

A _portfolio_ $\xi\in\bm{R}_I$ represents the number of
shares initially purchased in each instrument where $\bm{R}_I =
(\bm{R}^I)^*$ is the _dual vector space_ of $\bm{R}^I$.  Recall
the dual of a vector space $X$ consists of all _linear
functionals_ on $X$. The _dual pairing_ of a linear functional $x^*\colon
X\to\bm{R}$ is $\langle x,x^* \rangle = x^*(x)$ for $x\in X$.
If $\mathcal{L}(X,Y)$ is the space of linear transformations
from $X$ to $Y$ then $X^* = \mathcal{L}(X,\bm{R})$.

When $I$ is finite dimensional, as it is in the real world, 
$\bm{R}_I$ can be identified with $\bm{R}^I$. An element
$y\in\bm{R}^I$ defines a linear functional $y'\in\bm{R}_I$ via
$y'(x) = \sum_{i\in I} y(i) x(i) = y\cdot x$ for $x\in\bm{R}^I$,
the _inner product_ of $y$ and $x$. If elements of $\bm{R}^I$
are considered as column vectors then the right hand side of $y'(x) =
y'x$ is the usual matrix product where $y'$ is the _transpose_ of $y$
considered as a row vector.

The _value_ of a portfolio $\xi$ given prices $x$ is $\xi'x$.
It is the cost of attaining the portfolio $\xi$.
The _realized return_ is $R(\xi) = \xi'X/\xi'x$ when $\xi'x\not=0$.
Note $R(\xi) = R(t\xi)$ for any non-zero $t\in\bm{R}$ so
there is no loss in assuming $\xi'x = 1$ when considering returns.
In this case $R(\xi) = \xi'X$ is the realized return on the portfolio.

There is _model arbitrage_ if there exists a portfolio $\xi$ with
$\xi'x < 0$ and $\xi'X(\omega) \ge0$ for all $\omega\in\Omega$:
you make money on the initial investment and never lose money
when unwinding at the end of the period. This definition does
not require a measure on $\Omega$.

The one-period Fundamental
Theorem of Asset Pricing states there is no model arbitrage if
and only if there exists a positive measure $\Pi$ on $\Omega$ with
$x = \int_\Omega X(\omega)\,d\Pi(\omega)$. We assume $X$ is
bounded, as it is in the real world, and $\Pi$ is finitely additive.
The dual space of bounded functions on $\Omega$ is the space of finitely additive measures
on $\Omega$
with the dual pairing $\langle X,\Pi\rangle = \int_\Omega X\,d\Pi$ [@DunSch63].
See the [Appendix](#model-arbitrage) for a short, self-contained proof of the FTAP.

If $x = \int_\Omega X\,d\Pi$ for a positive measure $\Pi$ then all portfolios
have the same expected realized return $1/\|\Pi\|$ where $\|\Pi\| = \int_\Omega
1\,d\Pi$ is the mass of $\Pi$ and the expected value is with respect to
the probability measure $Q = \Pi/\|\Pi\|$.
This follows from $E[\xi'X] = \xi'x/\|\Pi\|$ for any portfolio $\xi$.

Note $Q$ is not the probability of anything, it is simply a positive
measure with mass 1. The above statements are geometrical, not probabilistic.

The one period model also specifies a probability measure $P$ on the
space of outcomes, but in general $E[X]$ under this measure is
not a scalar multiple of $x$.
As we've just seen, that would lead to models where all portfolios have
the same expected realized return.

## Efficient Portfolios 

A portfolio $\xi$ is _efficient_
if $\operatorname{Var}(R(\xi)) \le \operatorname{Var}(R(\eta))$ for every
portfolio $\eta$ having the same expected realized return as $\xi$.

If $\xi'x = 1$ then $\operatorname{Var}(R(\xi)) = E[(\xi'X)^2] - E[\xi'X]^2
= E[\xi' X X'\xi] - E[\xi'X] E[X'\xi] = \xi'V\xi$,
where $V = \operatorname{Var}(X) = E[XX'] - E[X]E[X']$.
We can find efficent portfolios using Lagrangian multipliers.
For a given realized return $\rho$, solve
$$
	\min_{\xi, \lambda, \mu}\frac{1}{2}\xi'V\xi - \lambda(\xi'x - 1) - \mu(\xi'E[X] - \rho).
$$
The first order conditions for an extremum are
$V\xi - \lambda x - \mu E[X] = 0$, $\xi'x = 1$, and $\xi'E[X] = \rho$.
The [Appendix](#efficient-portfolios) shows that if $V$ is invertible then 
$\lambda = (C - \rho B)/D$, $\mu = (-B + \rho A)/D$, and
$$
\xi = \frac{C - \rho B}{D}V^{-1}x + \frac{-B + \rho A}{D}V^{-1}E[X]
$$
where $A = xV^{-1}x$, $B = x'V^{-1}E[X] = E[X']V^{-1}x$,
$C = E[X]V^{-1}E[X]$, and $D = AC - B^2$.
The variance of the efficient portfolio is
$$
\operatorname{Var}(R(\xi)) = (C - 2B\rho + A\rho^2)/D
$$ 

If $\xi_0$ and $\xi_1$ are any two independent efficient portfolios then
they belong to the subspace spanned by $V^{-1}x$ and $V^{-1}E[X]$.
Every efficient portfolio can be written $\xi = \beta_0\xi_0 + \beta_1\xi_1$ for some
scalars $\beta_0$ and $\beta_1$.
Assuming $\xi_j'x = 1$ for $j = 0,1$ so $R(\xi_j) = \xi_j'X$ and
$\xi'x = 1$ so $R(\xi) = \xi'X$ then $\beta_0 + \beta_1 = 1$ and
$\xi = (1 - \beta)\xi_0 + \beta\xi_1$ where $\beta = \beta_1$.
Multiplying both sides by $X$ we have $\xi'X = (1 - \beta)\xi_0'X + \beta\xi_1'X$ hence
$$
	R(\xi) - R(\xi_0) = \beta(R(\xi_1) - R(\xi_0))
$$
where $\beta = \operatorname{Cov}(R(\xi) - R(\xi_0), R(\xi_1) - R(\xi_0))/\operatorname{Var}(R(\xi_1) - R(\xi_0))$.

Note that $A$, $B$, $C$, and $D$ depend only on $x$, $E[X]$, and
$E[XX']$. Classical literature focuses mainly on the latter three which
may explain why prior authors overlooked this elementary but stronger
result.  The classical CAPM result follows from taking expected values
of both sides when $\xi_1$ is 'the market' portfolio and $\xi_0$ is a
_riskless portfolio_.

### Riskless Portfolios

A portfolio $\zeta$ is riskless if its return is constant. In this case
$0 = \operatorname{Var}(R(\zeta)) = \zeta'V\zeta$ assuming, as we may, $\zeta'x = 1$.
Since $V$ is positive semi-definite this implies $V\zeta = 0$ so
$V$ is not invertible and the above analysis no longer holds.

If another riskless portfolio exists with different realized
return then arbitrage exists.  By removing redundant assets we can assume
there is exactly one riskless portfolio $\zeta$ with $\zeta'x = 1$.

Since $\zeta$ is an eigenvector of $V$ (with eigenvalue 0) and $V$ is self-adjoint
the orthogonal complement $\{\zeta\}^\perp = \{z\in\bm{R}^I:\zeta'z = 0\}$
is an invariant subspace of $V$.
Let $P_\parallel = \zeta\zeta'/\zeta'\zeta$
denote the projection on the the space spanned by $\zeta$ and $P_\perp = I - P_\parallel$
denote the projection onto the orthogonal complement. The projections commute with $V$
and $V = VP_\perp + V_\parallel$. Let $x_\perp = P_\perp x$ etc.

The first order conditon $V\xi = \lambda x + \mu E[X]$ implies
$V\xi_\parallel = \lambda x_\parallel + \mu E[X]_\parallel$. Since $\xi_\parallel$
is a scalar multiple of $\zeta$ we have $0 = \lambda + \mu R$ so $\lambda = -\mu R$.
On the orthogonal complement $V\xi_\perp = -\mu R x_\perp + \mu E[X]_\perp$ so
$\xi_\perp = V^\dashv(E[X] - Rx)$ where $V^\dashv$ is the generalized (Moore-Penrose) inverse of $V$.
Letting $\alpha = V^\dashv(E[X] - Rx)$, every optimal portfolio has the form
$\xi = \mu \alpha + \nu\zeta$.
We can and do assume $\alpha'x = 1$ so
$1 = \mu + \nu$ and $\xi = \mu \alpha + (1 - \mu)\zeta$.
Multiplying both sides by $X$ yields
$$
	R(\xi) - R = \mu(R(\alpha) - R)).
$$
This implies the classical CAPM formula by taking expected values where $\alpha$ is the 'market' portfolio.
It also shows the Lagrangian multiplier
$\mu = \operatorname{Cov}(R(\xi),R(\alpha))/\operatorname{Var}(R(\alpha))$.

## Appendix

### Efficient Portfolios

Let's find the minimum value of $\operatorname{Var}(R(\xi))$ given $E[R(\xi)] =
\rho$.  If $\xi'x = 1$ then $R(\xi) = \xi'E[X]$ and $\operatorname{Var}(R(\xi))
= \xi'V\xi$ where $V = \operatorname{Var}(X) = \operatorname{Cov}(X,X) = E[XX']
- E[X]E[X']$.

We use Lagrangian multipliers and solve
$$
		\min \frac{1}{2}\xi'V\xi - \lambda(\xi'x - 1) - \mu(\xi'E[X] - \rho)
$$
for $\xi$, $\lambda$, and $\mu$.
    
The first order conditions for an extremum are
$$
\begin{aligned}
		0 &= V\xi - \lambda x - \mu E[X] \\
		0 &= \xi'x - 1 \\
		0 &= \xi'E[X] - \rho \\
\end{aligned}
$$
Assuming $V$ is invertible $\xi = V^{-1}(\lambda x + \mu E[X])$.
Note every extremum lies in the (at most) two dimensional subspace
spanned by $V^{-1}x$ and $V^{-1}E[X]$.
    
The constraints $1 = x'\xi$ and $\rho = E[X']\xi$ can be written
$$
\begin{bmatrix}
1 \\
\rho \\
\end{bmatrix}
=
\begin{bmatrix}
\lambda x'V^{-1}x + \mu x'V^{-1}E[X] \\
\lambda E[X']V^{-1}x + \mu E[X']V^{-1}E[X] \\
\end{bmatrix}
= \begin{bmatrix}
A & B \\
B & C\\
\end{bmatrix}
\begin{bmatrix}
\lambda \\
\mu
\end{bmatrix}
$$
with $A = xV^{-1}x$, $B = x'V^{-1}E[X] = E[X']V^{-1}x$, and $C = E[X]V^{-1}E[X]$.
Inverting gives
$$
\begin{bmatrix} \lambda \\ \mu \end{bmatrix}
= \frac{1}{D}
\begin{bmatrix}
C & -B \\
-B & A\\
\end{bmatrix}
\begin{bmatrix}
1 \\
\rho
\end{bmatrix}
=
\begin{bmatrix}
(C - \rho B)/D \\
(-B + \rho A)/D\\
\end{bmatrix}
$$
where $D = AC - B^2$. The solution is
$\lambda = (C - \rho B)/D$, $\mu = (-B + \rho A)/D$, and
$$
    \xi = \frac{C - \rho B}{D} V^{-1}x + \frac{-B + \rho A}{D} V^{-1}E[X].
$$

A straightforward calculation shows the variance is
$$
\operatorname{Var}(R(\xi)) = \xi'V\xi = (C - 2B\rho + A\rho^2)/D.
$$

<!--
If a riskless portfolio exists then $V$ is not invertible. However
$V + \epsilon I$ is for small non-zero $\epsilon$.  In this case
$A_\epsilon = x'(V + \epsilon I)^{-1}x$ ...
In this case $A_\epsilon = x'V_\epsilon^{-1}x$ ...
$D_\epsilon = A_\epsilon C_\epsilon - B_\epsilon^2$. 

$A = xV^{-1}x$, $B = x'V^{-1}E[X] = E[X']V^{-1}x$, and $C = E[X]V^{-1}E[X]$.

$$
\begin{aligned}
((C_\epsilon - \rho B_\epsilon)/D_\epsilon) V_\epsilon^{-1}x
&= ((C_\epsilon - \rho B_\epsilon)/D_\epsilon) V_\epsilon^{-1}x \\
&= E \\
\end{aligned}
$$

The constraints $1 = x'\xi$ and $\rho = E[X']\xi$ can be written

## Two Assets

Let $x = (x_0,x_1)$ and $X = (X_0,X_1)$. We can assume $x_0 = 1$ and $x_1 = 1$

$$
 V = E[XX'] - E[X] E[X']
    = \begin{bmatrix}
        \operatorname{Var}(X_0) & \operatorname{Cov}(X_0,X_1)\\
        \operatorname{Cov}(X_1,X_0) & \operatorname{Var}(X_1)\\
    \end{bmatrix}
    = \begin{bmatrix}
		V_0 & \Gamma \\
		\Gamma & V_1 \\
    \end{bmatrix}
$$

The determinant of $V$ is $\Delta = V_0 V_1 - \Gamma^2$ and

$$
 V^{-1}
= \frac{1}{\Delta}
    \begin{bmatrix}
        V_1 & -\Gamma\\
        -\Gamma & V_0\\
    \end{bmatrix}
$$

$$
 V^{-1}x
= \frac{1}{\Delta}
    \begin{bmatrix}
        V_1 - \Gamma \\
        -\Gamma + V_0 \\
    \end{bmatrix}
$$

$$
 V^{-1}E[X]
= \frac{1}{\Delta}
    \begin{bmatrix}
        V_1 \bar{R}  - \Gamma \bar{S}\\
        -\Gamma \bar{R} + V_0 \bar{S}\\
    \end{bmatrix}
$$

where $\bar{R} = E[R]$ and $\bar{S} = E[S]$.

$$
A = x'V^{-1}x
= \frac{1}{\Delta}(V_1  - 2\Gamma + V_0)
$$
$$
B = x'V^{-1}E[X] = E[X']V^{-1}x
= \frac{1}{\Delta}\bigl(V_1 \bar{R}  - \Gamma(\bar{S} + \bar{R}) + V_0 \bar{S}\bigr)
$$

$$
C = E[X']V^{-1}E[X]
= \frac{1}{\Delta}(V_1 \bar{R}^2  - 2\Gamma \bar{S} \bar{R}  + V_0 \bar{S}^2)
$$

Since $\Delta$ and $\Gamma$ tend to zero as $V_0 = \operatorname{Var}(X_0)\to 0$,
$A$, $B$, and $C$ tend to infinity assuming $V_1 = \operatorname{Var}(X_1) > 0$ is fixed.

Some calculation shows
$$
D = AC - B^2 = (\bar{S} - \bar{R})^2/\Delta
$$
so if $\rho = \bar{R}$
$$
\begin{aligned}
\frac{C - \bar{R} B}{D}V^{-1}x
&= \frac{
	 V_1 \bar{R}^2  - 2\Gamma \bar{S} \bar{R}  + V_0 \bar{S}^2
     - \bar{R}(V_1 \bar{R}  - \Gamma(\bar{S} + \bar{R}) + V_0 \bar{S})}
	{(\bar{S} - \bar{R})^2(V_0 V_1 - \Gamma^2)}
    \begin{bmatrix}
        V_1 - \Gamma \\
        -\Gamma + V_0 \\
    \end{bmatrix}\\
&= \frac{
	 - 2\Gamma \bar{S} \bar{R}  + V_0 \bar{S}^2
     - \bar{R}(- \Gamma(\bar{S} + \bar{R}) + V_0 \bar{S})}
	{(\bar{S} - \bar{R})^2(V_0 V_1 - \Gamma^2)}
    \begin{bmatrix}
        V_1 - \Gamma \\
        -\Gamma + V_0 \\
    \end{bmatrix}\\
&= \frac{
	 \Gamma(-2\bar{S}\bar{R} + \bar{R}(\bar{S} + \bar{R}))
     + V_0(\bar{S}^2 - \bar{S}\bar{R})}
	{(\bar{S} - \bar{R})^2(V_0 V_1 - \Gamma^2)}
    \begin{bmatrix}
        V_1 - \Gamma \\
        -\Gamma + V_0 \\
    \end{bmatrix}\\
&= \frac{
	 \Gamma(-\bar{S}\bar{R} + \bar{R}^2)
     + V_0(\bar{S}^2 - \bar{S}\bar{R})}
	{(\bar{S} - \bar{R})^2(V_0 V_1 - \Gamma^2)}
    \begin{bmatrix}
        V_1 - \Gamma \\
        -\Gamma + V_0 \\
    \end{bmatrix}\\
&= \frac{
	 \Gamma\bar{R}(\bar{R} - \bar{S})
     + V_0\bar{S}(\bar{S} - \bar{R})}
	{(\bar{S} - \bar{R})^2(V_0 V_1 - \Gamma^2)}
    \begin{bmatrix}
        V_1 - \Gamma \\
        -\Gamma + V_0 \\
    \end{bmatrix}\\
&= \frac{
     + V_0\bar{S}
	 - \Gamma\bar{R}}
	{(\bar{S} - \bar{R})(V_0 V_1 - \Gamma^2)}
    \begin{bmatrix}
        V_1 - \Gamma \\
        -\Gamma + V_0 \\
    \end{bmatrix}\\
\end{aligned}
$$

The variance $V$ has eigenvalues

$$
\lambda_{\pm} = \frac{1}{2}
\left(
  \sigma_R^2 + \sigma_S^2
  \pm\sqrt{(\sigma_R^2 - \sigma_S^2)^2 + 4\rho^2 \sigma_R^2 \sigma_S^2}
\right)
$$

with corresponding eigenvectors

$$
v_{\pm} = 
\left(
\frac{\sigma_R^2 - \sigma_S^2 \pm\sqrt{(\sigma_R^2 - \sigma_S^2)^2 + 4\rho^2 \sigma_R^2 \sigma_S^2}}
{2\rho\sigma_R\sigma_S},1
\right)
$$
-->

<!--
If $Rx = E[X]$ and $\rho = R$ then $B = RA$ and $C = R^2A$ so $\Delta = 0$ and the
matrix is not invertible.  However if we replace $C$ by $C(1 + \epsilon)$
for $\epsilon\not=0$ it is and
$\Delta = R^2A^2\epsilon$, $C - 2BR + AR^2 = R^2A\epsilon$.
The maximum utility is $R - \tau/2A$ as noted above.
-->

<!--
### Linear Algebra

We recall some basic facts about finite-dimensional linear algebra.
The space of all _linear operators_ from a vector space $V$ to a vector space $W$
is denoted $\mathcal{L}(V,W)$. If $W = V$ we write $\mathcal{L}(V)$.
The _dual vector space_ of $V$ is $V^* = \mathcal{L}(V,\bm{R})$
with _dual pairing_ $\langle v, v^*\rangle = v^*(v)\in\bm{R}$, $v\in V$, $v^*\in V^*$.
Note that $v\mapsto \langle v, v^*\rangle$, $v\in V$
determines $v^*\in V^*$ by the definition of what a function is.

The _adjoint_ of $T\colon V\to W$ is $T^*\colon W^*\to V^*$ defined by
$\langle v, T^*w\rangle = \langle Tv, w^*\rangle$, $v\in V$, $w^*\in W^*$.

If $X\subseteq V$ is any subset its _annihilator_
is $X^\perp = \{v^*\in V^* : \langle x,v^*\rangle = 0, x\in X\}\subseteq V^*$.
If $Y^*\subseteq V^*$ is any subset its _pre-annihilator_ is
$^\perp Y^* = \{v\in V : \langle v,y^*\rangle = 0,y^*\in Y^*\}\subseteq V$.
The _span_ of $X\subseteq V$ is the smallest subspace of $V$ containing $X$ and equals
$^\perp(X^\perp)$. The span of $Y^*\subseteq W^*$ is $(^\perp Y^*)^\perp$.

The map $\nu_V = \nu\colon V\to V^{**}$ defined by
$\langle \nu v, v^*\rangle = \langle v, v^*\rangle$, $v^*\in V^*$
is a _natural isomorphism_ and for any $T\in\mathcal{L}(V,W)$ we have
$T^{**}\nu_V = \nu_W T\in\mathcal{L}(V,W^{**})$. It is called natural
because it does not depend on a basis for $V$.

#### Inner Product

An isomorphisms $\iota\colon V\to V^*$ are in one-to-once correspondence
with inner products on $V$ via $\langle x, \iota y\rangle = (x, y)$, $x,y\in V$. 
In this case the _orthogonal complement_ of $X\subseteq V$ and we write
$X^\perp = \iota^{-1}X^\perp\subseteq V = ^\perp(\iota(X))$.
denote the adjoint $T' = \iota_W^{-1}T*\iota_V$.

Given an inner product we say $x,y\in V$ are _orthogonal_ if $(x,y) = 0$.
If $(e,e) = 1$ we call $e$ a _unit vector_. An _orthonormal basis_ $\{e_\}$ is
a basis of orthogonal unit vectors, $(e_i,e_j) = \delta_{ij}$.

The _adjoint_ of a linear operator $T\in\mathcal{L}(V,W)$, where $V$ and $W$
have an inner product is $T'\in\mathcal{L}(W,V)$ and is defined by
$(x, T'y) = (Tx, y)$ for $x\in V$, $y\in W$. The first inner product is
that of $V$ and the second that of $W$.
Note $T^*\iota_V = \iota_W T'$ since
$\langle v, T^*\iota w\rangle = \langle Tv, \iota w\rangle = (Tv, w) = (v, T'w)
= \langle v, \iota T'w\rangle$, $v\in V$, $w\in W$. Since $\iota$ is an isomorphism
$T' = \iota_W^{-1}T^*\iota_V$.

An operator $T\in\mathcal{L}(V)$ is _self-adjoint_ if $T' = T$.  Note $T'' = T$ since
$(x, T''y) = (T'x, y) = (y, T'x) = (Ty, x) = (x, Ty)$ for $x,y\in V$.

A subspace $U\subseteq V$ is an _invariant subspace_ of $T\in\mathcal{L}(V)$
if $TU = \{Tu:u\in U\}\subseteq U$.
Note the restriction of $T$ to the subspace $U$, $T|_U\in\mathcal{L}(U)$.
If $T\in\mathcal{L}(V)$ and $Vx = \lambda x$ for some $x\in V$ and $\lambda\in\bm{R}$
we say $x$ is an _eigenvector_ of $T$ having _eigenvalue_ $\lambda$.
The span of an eigenvector is a one-dimensional invariant subspaces.
A basis $\{e_i\}$ of eigenvectors, with corresponding eigenvalues $\{\lambda_i\}$,
completely determines $T$. Since it is a basis there exist $x_i\in\bm{R}$ with
$x = \sum_i x_i e_i$ so $Tx = \sum_i \lambda_i x_i e_i$.

Let $W^\perp = \{v\in\bm{R}^n:(v,w) = 0, w\in W\}$ be the _orthogonal complement_
of $W$ in $\bm{R}^n$. Note $(W^\perp)^\perp = W$ since $w\in (W^\perp)^\perp$ if and only
if $(w,v) = 0$ for all $v\in W^\perp$.  This is true if $w\in W$. If $w\not\in W$
then $(w,v) \not= 0$ for some $v\not\in W^\perp$.

If $W$ is an invariant subspace of $T$ then $W^\perp$ is
an invariant subspace of $T'$.

An operator $T$ is _positive definite_ if it is self-adjoint and $(Tx,x) > 0$ for
all non-zero $x\in\bm{R}^n$.
It is _positive semi-definite_ if $(Tx,x)\ge0$ for all $x\in\bm{R}^n$.
For any linear operator $S\colon\bm{R}^n\to\bm{R}^n$ we have $S'S$ is positive semi-definite.
Since $(S'Sx, y) = (Sx, Sy) = (x, S'Sy)$ it is self-an.
For any $x\in\bm{R}^n$ we have $(S'S x, x) = (Sx,Sx) = \|Sx\|^2 \ge0$
so it is positive semi-definite.

The _spectral theorem_ states every self-adjoint linear operator on a finite-dimensional vector space
has an orthonormal basis of eigenvectors $\{e_i\}_{i=1}^n$,
$(e_i, e_j) = 0$ if $i\not=j$, $(e_i, e_i) = \|e_i\|^2 = 1$, and the eigenvectors span
the space.

If $\lambda_i$ is the eigenvalue corresponding to the norm 1 eigenvector $e_i$ then
$$
	T = \sum_i \lambda_i e_i\otimes e_i
$$
where $x\otimes y$ is the (rank one) linear operator defined by $(x\otimes y)z = (y,z)x$.
We can also write $x\otimes y = xy'$ where $y'$ is the column vector corresponding to $y$
and use standard matrix multiplication. Note $I = \sum_i e_i\otimes e_i$ is the
identity operator for any orthonormal basis $\{e_i\}$.

-->

### Model Arbitrage

The one-period model specifies initial prices $x\in\bm{R}^I$ and
final prices $X\colon\Omega\to\bm{R}^I$ where $\Omega$ is the set
of possible outcomes.

If there exists a portfolio $\xi\in\bm{R}^I$ with $\xi\cdot x < 0$ and
$\xi\cdot X \ge0$ on $\Omega$ then _model arbitrage_ exists: you make money on the
initial position and never lose money on any outcome.  This definition
does not assume a probability measure on $\Omega$.

The one-period Fundamental Theorem of Asset Pricing states there is no model
arbitrage if and only if there exists a positive measure $\Pi$ on
$\Omega$ with $x = \int_\Omega X(\omega)\,d\Pi(\omega)$.  We assume $X$
is bounded, as it is in the real world, and $\Pi$ is
[finitely additive](#finitely-additive-measures).

If such a measure exists and $\xi\cdot X\ge0$ then
$\xi\cdot x = \int_\Omega \xi\cdot X\,d\Pi \ge0$ so arbitrage
cannot occur. The other direction is less trivial.

**Lemma.** _If $x\in\bm{R}^n$ and $C$ is a closed cone in
$\bm{R}^n$ with $x\not\in C$ then there exists $\xi\in\bm{R}^n$
with $\xi\cdot x < 0$ and $\xi\cdot y \ge0$ for $y\in C$._

Recall that a _cone_ is a subset of a vector space closed under addition
and multiplication by a positive scalar, that is, $C + C\subseteq C$
and $tC\subseteq C$ for $t > 0$. The set of arbitrage
portfolios is a cone.

_Proof._ Since $C$ is closed there exists $x^*\in C$ with
$0 < ||x^* - x|| \le ||y - x||$ for all $y\in C$.  Let $\xi = x^* - x$.
For any $y\in C$ and $t > 0$ we have $ty + x^*\in C$ so $||\xi|| \le ||ty + \xi||$. 
Simplifying gives $t^2||y||^2 + 2t\xi\cdot y\ge 0$. 
Dividing by $t > 0$ and letting $t$ decrease to 0 shows $\xi\cdot y\ge 0$. 
Take $y = x^*$ then $tx^* + x^*\in C$ for $t \ge -1$. By similar reasoning
with $t < 0$ we have $\xi\cdot x^*\le 0$ so $\xi\cdot x^* = 0$. 
Now $0 < ||\xi||^2 = \xi\cdot (x^* - x) = -\xi\cdot x$ hence $\xi\cdot x < 0$.
$\blacksquare$

Since the set of non-negative finitely additive measures is a closed
cone and $X\mapsto \int_\Omega X\,d\Pi$ is positive, linear, and continuous
$C = \{\int_\Omega X\,d\Pi : \Pi\ge 0\}$ is also a closed cone.
The contrapositive follows from the lemma.

The proof also shows how to find an arbitrage when one exists.


### Fr&eacute;chet Derivative

A function $F\colon X\to Y$ where $X$ and $Y$ are
[normed vector spaces](https://en.wikipedia.org/wiki/Normed_vector_space)
has a Fr&eacute;chet derivative at $x\in X$ if it is linear to first
order in a neighborhood of $x$.
Let $\mathcal{B}(X,Y)$ be the space of bounded linear operators from $X$ to $Y$
where $\|T\| = \sup_{\|x\|\le 1}\|Tx\|$ if finite.
The Fr&eacute;chet derivative $DF\colon X\to\mathcal{B}(X,Y)$
is defined by $F(x + h) = F(x) + DF(x)h + o(\|h\|)$ as $h\to 0$.
(Recall $f(h) = g(h) + o(h)$ if $\lim_{h\to 0} \|f(h) - g(h)\|/\|h\| = 0$.)

For example, define $F\colon X\to X$ where $X$ is a (not necessarily
commutative) Banach algebra by $F(x) = x^2$.
Since $(x + h)^2 = x^2 + xh + hx + h^2$
and $h^2$ is $o(\|h\|)$, $DF(x)h = xh + hx$.
If we define the linear operators of left and right multiplication by $x$,
$L_x,R_x\colon X\to X$ where
$L_x y = xy$ and $R_x y = yx$, then $DF(x) = D(x^2) = L_x + R_x$.

A good exercise is to show $D(x^n) = \sum_{j=1}^n L_x^{n - j} R_x^{j - 1}$.

If $X$ is commutative the above reduces to
$DF(x) = 2M_x$ where $M_x = L_x = R_x$. If we implicitly
assume $x$ stands for multiplication by $x$, $M_x$, then
we can write $D(x^2) = 2x$, just as in the case $X = \bm{R}$.

The exercise shows $D(x^n) = nM_{x^{n-1}} = nx^{n-1}$ in the commutative case.

Note that we have computed the derivative without taking the limit of a difference quotient.
We only use the fact $\lim_{h\to 0}\|h^n\|/\|h\| = 0$ if $n > 1$ which follows
from $\|h^n\| \le \|h\|^n$.

If $Y = \bm{R}$ then $DF\colon X\to\mathcal{B}(X,\bm{R}) = X^*$
where $X^*$ is the dual space of $X$.
When taking Fr&eacute;chet derivatives it is important to recognize
when a dual space is involved.

If $T\colon\bm{R}^n\to\bm{R}^n$ is a self-adjoint linear
transformation ($T' = T$) and $F\colon\bm{R}^n\to\bm{R}$ is $F(x)
= x'Tx$ then $DF(x)h = 2x'Th$.
This follows from $(x + h)'T(x + h) = x'Tx +
x'Th + h'Tx + h'Th$ so $DF(x)h = x'Th + h'Tx = 2x'Th$ since $h'Tx = x'T'h
= x'Th$ and $h'Th$ is $o(\|h\|)$.
Note $DF(x)\in(\bm{R}^n)^*$, the dual
space of $\bm{R}^n$.
The Fr&eacute;chet derivative of $x'Tx$
is $2x'T\in\mathcal{B}(\bm{R}^n, \bm{R}) = (\bm{R}^n)^*$.

### Finitely Additive Measures

A measure $\mu$ on $\Omega$ is _finitely additive_ if $\mu(E\cup F) = \mu(E) + \mu(F)$
when $E$ and $F$ are disjoint subsets of $\Omega$ and $\mu(\emptyset) = 0$.

It is easy to prove the dual space of bounded functions on $\Omega$,
$B(\Omega)$, is the space of finitely additive measures on $\Omega$,
$ba(\Omega)$.  If $M\in B(\Omega)^*$ define $\mu(E) = M(1_E)$ where
$1_E$ is the _indicator function_ of $E$ defined by $1_E(\omega)$
is 1 if $\omega\in E$ and 0 otherwise. Since $1_{E\cup F} = 1_E + 1_F$
if $E\cap F = \emptyset$ and $M$ is linear this defines a finitely additive measure.

The other direction is only slightly more complicated.
A _simple function_ is a finite sum
of the form $\sum_i e_i 1_{E_i}$ where $e_i\in\bm{R}$ and $E_i\subseteq\Omega$.
If $\mu\in ba(\Omega)$ define
$M(\sum_i e_i 1_{E_i}) = \sum_i e_i \mu(E_i)$.
We can assume the $(E_i)$ are pairwise disjoint, which shows this is well-defined.
Since simple functions are uniformly dense in $B(\Omega)$ and $M$ is bounded on
the space of simple functions we can extend this to a bounded linear functional on $B(\Omega)$.

A similar proof shows $B(\mathcal{A})^* = ba(\mathcal{A})$ if $\mathcal{A}$ is an algebra of sets.

If $\Omega$ is finite then $B(\Omega)$ and $ba(\Omega)$ are isomorphic to $\bm{R}^n$ where
$n$ is the cardinality of $\Omega$. The integral is just the inner product.

It is not simple to define $\int_\Omega f\,d\mu$ for $f\in B(\Omega)$ and $\mu\in ba(\Omega)$
when the cardinality of $\Omega$ is infinite.
Consider the case $\Omega = \bm{N}$, the set of non-negative integers,
where $B(\bm{N})$ is called $\mathcal{l}^\infty$.
Let $\mathcal{L}\subseteq\mathcal{l}^\infty$ be the sequences $x = (x_i)_{i\in\bm{N}}$
for which $Lx = \lim_{i\to\infty} x_i$ exists. This defines a bounded linear functional
on $\mathcal{L}$. By the Hahn-Banach theorem this can be extended to a bounded linear functional
on $\mathcal{l}^\infty$ with the same norm (The Banach limit).
Good luck finding a finitely additive measure $\lambda$ and defining an integral with $Lx =
\int_{\bm{N}} x\,d\lambda$. See @DunSch63 for the full details.

<!--
The model also specifies a probability measure $P$ on the
space of outcomes. The _utility_ of $\xi$ is
$$
U_\tau(\xi) = E[R(\xi)] - \frac{\tau}{2}\operatorname{Var}(R(\xi))
$$
where $\tau\ge0$ is a risk aversion parameter. We could use
any utility of the form $aE[R(\xi)] + b\operatorname{Var}(R(\xi))$
with $a > 0$ and $b \le 0$ so that higher returns are
offset by lower variance.

Note $U_\tau(\xi) = U_\tau(t\xi)$ for any non-zero $t\in\bm{R}$
since $R(\xi) = R(t\xi)$.

To find a portfolio with return $\rho$ having maximum utility 
we use Lagrangian multipliers to solve
$$
\max_{\xi,\lambda,\mu} E[\xi'X] - \frac{\tau}{2}\xi'V\xi - \lambda(\xi'x - 1) - \mu(\xi'E[X] - \rho)
$$
where $V = \operatorname{Var}(X) = E[XX'] - E[X]E[X']$. Every extremum satisfies
$$
\begin{aligned}
	D_\xi\Phi &= E[X] - \tau V\xi - \lambda x - \mu E[X] = 0\\
	D_\lambda\Phi &= \xi'x - 1 = 0 \\
	D_\mu\Phi &= \xi'E[X] - \rho = 0 \\
\end{aligned}
$$
so $\xi = (\tau V)^{-1}(- \lambda x + (1 - \mu)E[X])$.
If $\tau > 0$ and $V$ is invertible then there is a maximum.
If $\xi'X = 0$ implies $\xi = 0$ then the maximum is unique.
If not we can remove redundant market instruments to make it so.

Note that every optimal solution belongs to the (at most) two-dimensional
subspace spanned by $V^{-1}x$ and $V^{-1}E[X]$.
If $\xi_0$ and $\xi_1$ are any two independent optimal solutions
then $\xi = \beta_0\xi_0 + \beta_1\xi_1$ for some constants $\beta_0$ and $\beta_1$.
Since $1 = \xi'x = \beta_0 + \beta_1$ we have $\xi = (1 - \beta)\xi_0 + \beta\xi_1$.
Note also that $\xi'X = R(\xi)$, likewise $\xi_j'X = R(\xi_j) = R_j$ for $j = 0, 1$ hence
$$
	R(\xi) - R_0 = \beta(R_1 - R_0)
$$
where $\beta = \operatorname{Cov}(R(\xi) - R_0,R_1 - R_0)/\operatorname{Var}(R_1 - R_0)$.

If $\operatorname{Var}(R_0) = 0$ then
$\beta = \operatorname{Cov}(R(\xi),R_1)/\operatorname{Var}(R_1)$
and we have a stronger form of the classic CAPM formula.
It holds for returns, not just their expected value, and
it holds for any distribution of market prices.
The riskless and market portfolio are not special.

Unfortunately, if $V$ is invertible then there is no $\xi$ with $\operatorname{Var}(\xi'X) = 0$.
If $\xi'X = c$ for some constant $c$ then $V\xi = E[XX']\xi - E[X] E[X']\xi
= E[XX'\xi] - E[X] E[X'\xi] = E[Xc] - E[X]c = 0$. We rectify this in the next section.

### Riskless Portfolios

A portfolio $\zeta\in\bm{R}^I$ with $\zeta'X(\omega) = c$ for some
constant $c\in\bm{R}$ and all $\omega\in\Omega$ is called _riskless_.
If $c = 1$ the portfolio is called a _zero coupon bond_ and has constant
realized return $R = R(\zeta) = 1/\zeta'x$.

Riskless portfolios with expected realized return $\rho = R$ are optimal since
$\Var(R(\zeta)) = 0$. If $\zeta_1$ is another riskless portfolio we must
have $R(\zeta) = R(\zeta_)$ if the model is arbitrage free.  By removing
redundant riskless portfolios we can assume there is exactly one.

Note $\zeta$ is an eigenvector of $V$ (with eigenvalue 0) and $V$ is self-adjoint
so $R^I_\perp = \{\zeta\}^\perp = \{y\in\bm{R}^I:\zeta'y = 0\}$ is an invariant subspace of $V$.
Write $V = V_\parallel \oplus V_\perp$ into an orthogonal direct sum

Let $V_\zeta = V|_{\{\zeta\}^\perp}$ where $\{\zeta\}^\perp = \{y\in\bm{R}^I:\zeta'y = 0\}$.
We can assume $V_\zeta$ is invertible and find other optimal portfolios in $\{\zeta\}^\perp$ as above.

If $x$ and $E[X]$ are collinear then $Rx = E[X]$ for some $R$ and
the only optimal portfolio with $\xi'x = 1$ is $\xi = V^{-1}x/x'V^{-1}x$. It has return $R$
and utility $U_\tau = R - \tau/2x'V^{-1}x$. Note $\xi$ does not depend on $\tau$ and requires
$\rho = R$.



We can write the system as
$$
\begin{bmatrix}
\tau V &x &E[x]\\
x' & 0 & 0\\
E[X'] & 0 & 0\\
\end{bmatrix}
\begin{bmatrix}
\xi\\
\lambda\\
\mu\\
\end{bmatrix}
= 
\begin{bmatrix}
E[X]\\
1\\
\rho\\
\end{bmatrix}
$$
The matrix is not invertible but a small perturbation is and we can use
the block matrix inversion formula
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
where $\Delta = A - BD^{-1}C$ to obtain
$$
\begin{bmatrix}
\tau V &x        &E[X] \\
x'     &\epsilon & 0\\
E[X']  &0        &\epsilon
\end{bmatrix}^{-1}
=
\begin{bmatrix}
\Delta^{-1}                &-\Delta^{-1}x/\epsilon                    &-\Delta^{-1}E[X]/\epsilon\\
-x'\Delta^{-1}/\epsilon    &1/\epsilon + x'\Delta^{-1}x/\epsilon^2    &x'\Delta^{-1}E[X]/\epsilon^2 \\
-E[X']\Delta^{-1}/\epsilon &E[X']\Delta^{-1}x/\epsilon^2              &1/\epsilon + E[X']\Delta^{-1}E[X]/\epsilon^2\\
\end{bmatrix}
$$
where $\Delta = \tau V - xx'/\epsilon - E[X]E[X']/\epsilon$.
By the  Sherman-Morrison formula, $(A + yz')^{-1}
= A^{-1} - A^{-1}yz'A^{-1}/(1 + z'A^{-1}y)$, we have
$$
\Delta^{-1} = A^{-1} + A^{-1}E[X] E[X']A^{-1}/(\epsilon - E[X']A^{-1}E[X])
$$
where $A = \tau V - xx'/\epsilon$.
This gives
$$
\begin{aligned}
	\xi_\epsilon &= \Delta^{-1}E[X] - \Delta^{-1}x/\epsilon \\
	&= A^{-1}E[X] + A^{-1}x x'A^{-1}E[X]/(\epsilon - x'A^{-1}x)
	   - A^{-1}x/\epsilon - A^{-1}x x'A^{-1}x/\epsilon(\epsilon - x'A^{-1}x) \\
	&= A^{-1}E[X] + \frac{1}{\epsilon(\epsilon - x'A^{-1}x)}
	   \bigl(\epsilon A^{-1}x x'A^{-1}E[X]
	   - (\epsilon - x'A^{-1}x)A^{-1}x - A^{-1}x x'A^{-1}x\bigr) \\
	&= A^{-1}E[X] + \frac{1}{\epsilon(\epsilon - x'A^{-1}x)}
	   \bigl(\epsilon x'A^{-1}E[X]
	   - (\epsilon - x'A^{-1}x) - x'A^{-1}x\bigr)A^{-1}x \\
	&= A^{-1}E[X] + \frac{1}{\epsilon - x'A^{-1}x}
	   \bigl(x'A^{-1}E[X] - 1\bigr)A^{-1}x \\
\end{aligned}
$$

-->

<!--

### Singular Variance

The Lagrangian conditions can be written

$$
\begin{bmatrix}
\tau V & x \\
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
The matrix is not invertible but a small perturbation is and we can use
the block matrix inversion formula
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
where $\Delta = A - BD^{-1}C$ to obtain
$$
\begin{bmatrix}
\tau V + \epsilon I & x \\
x'     & \epsilon \\
\end{bmatrix}^{-1}
=
\begin{bmatrix}
\Delta^{-1} & -\Delta^{-1}x/\epsilon \\
-x'\Delta^{-1}/\epsilon & 1/\epsilon + x'\Delta^{-1}x/\epsilon^2 \\
\end{bmatrix}
$$
where $\Delta = \tau V + \epsilon I - xx'/\epsilon$.
By the  Sherman-Morrison formula, $(A + uv')^{-1}
= A^{-1} - A^{-1}uv'A^{-1}/(1 + v'A^{-1}u)$, we have
$$
\Delta^{-1} = A^{-1} + A^{-1}x x'A^{-1}/(\epsilon - x'A^{-1}x)
$$
where $A = \tau V + \epsilon I$.
This gives
$$
\begin{aligned}
	\xi_\epsilon &= \Delta^{-1}E[X] - \Delta^{-1}x/\epsilon \\
	&= A^{-1}E[X] + A^{-1}x x'A^{-1}E[X]/(\epsilon - x'A^{-1}x)
	   - A^{-1}x/\epsilon - A^{-1}x x'A^{-1}x/\epsilon(\epsilon - x'A^{-1}x) \\
	&= A^{-1}E[X] + \frac{1}{\epsilon(\epsilon - x'A^{-1}x)}
	   \bigl(\epsilon A^{-1}x x'A^{-1}E[X]
	   - (\epsilon - x'A^{-1}x)A^{-1}x - A^{-1}x x'A^{-1}x\bigr) \\
	&= A^{-1}E[X] + \frac{1}{\epsilon(\epsilon - x'A^{-1}x)}
	   \bigl(\epsilon x'A^{-1}E[X]
	   - (\epsilon - x'A^{-1}x) - x'A^{-1}x\bigr)A^{-1}x \\
	&= A^{-1}E[X] + \frac{1}{\epsilon - x'A^{-1}x}
	   \bigl(x'A^{-1}E[X] - 1\bigr)A^{-1}x \\
\end{aligned}
$$



A _zero coupon bond_, $\zeta\in\bm{R}^I$, has $\zeta\cdot X = 1$ on
$\Omega$. Its initial value is $\zeta\cdot x = \int_\Omega \zeta\cdot
X\,d\Pi = \|\Pi\| = 1/R$. Note $R = R(\zeta)$.

This can be written
$$
\begin{bmatrix}
\tau V & x \\
x'     & 0 \\
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
The matrix is not invertible however using the block inversion formula
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
where $\Delta = A - BD^{-1}C$ we have
$$
\begin{bmatrix}
\tau V & x \\
x'     & \epsilon \\
\end{bmatrix}^{-1}
=
\begin{bmatrix}
\Delta^{-1} & -\Delta^{-1}x/\epsilon \\
-x'\Delta^{-1}/\epsilon & 1/\epsilon + x'\Delta^{-1}x/\epsilon^2 \\
\end{bmatrix}
$$
where $\Delta = \tau V - xx'/\epsilon$. Hence
$$
\begin{bmatrix}
\xi \\
\lambda \\
\end{bmatrix}
=
\begin{bmatrix}
\Delta^{-1}E[X] - \Delta^{-1}x/\epsilon \\
-x'\Delta^{-1}E[X]/\epsilon + 1/\epsilon + x'\Delta^{-1}x/\epsilon^2 \\
\end{bmatrix}
$$

By the  Sherman-Morrison formula, $(A + uv')^{-1}
= A^{-1} - A^{-1}uv'A^{-1}/(1 + v'A^{-1}u)$, we have
$$
\Delta^{-1} = (\tau V)^{-1} + (\tau V)^{-1}x x'(\tau V)^{-1}/(\epsilon - x'(\tau V)^{-1}x)
$$
and
$$
\begin{aligned}
\xi &= \Delta^{-1}E[X] - \Delta^{-1}x/\epsilon\\
	&= (\tau V)^{-1}E[X] + (\tau V)^{-1}x x'(\tau V)^{-1}E[X]/(1 - x'(\tau V)^{-1}x)
	   - (\tau V)^{-1}x\epsilon - (\tau V)^{-1}x x'(\tau V)^{-1}x/\epsilon(1 - x'(\tau V)^{-1}x)
\end{aligned}
$$

### Fixed Capital and Return

We wish to maximize $U_\tau(\xi)$ subject to $\xi' x = 1$ and $\xi'E[X] = \mu$.
Using Lagrangian multipliers let $\Phi(\xi,\alpha,\beta)
= \xi'E[X] - \frac{1}{2}\xi' V\xi - \alpha(\xi'x - 1) - \beta(\xi'E[X] - \mu)$.
We have
$$
\begin{aligned}
	D_\xi\Phi &= E[X] - \tau V\xi - \alpha x - \beta E[X] = 0\\
	D_\alpha\Phi &= \xi'x - 1 = 0\\
	D_\beta\Phi &= \xi'E[X] - \mu = 0\\
\end{aligned}
$$
so $\hat{\xi} = (\tau V)^{-1}((1 - \beta)E[x] - \alpha x)$.

Note every optimal
solution belongs to the (at most) two-dimensional subspace determined by
$y =  V^{-1}x$ and $Y =  V^{-1}E[X]$.

This can be written as

$$
\begin{bmatrix}
\tau V & x & E[X]\\
x'     & 0 & 0\\
E[X']  & 0 & 0\\
\end{bmatrix}
=
\begin{bmatrix}
\xi\\
1\\
\mu\\
\end{bmatrix}
$$

The matrix is not invertible but
$$
\begin{bmatrix}
\tau V & x & E[X]\\
x'     & \epsilon & 0\\
E[X']  & 0 & \epsilon\\
\end{bmatrix}
$$
is.
$$
\begin{bmatrix}
\tau V & x & E[X]\\
x'     & \epsilon & 0\\
E[X']  & 0 & \epsilon\\
\end{bmatrix}^{-1}
=
\begin{bmatrix}
\Delta^{-1} & - \Delta^{-1}[x E[X]]\Delta^{-1}\\
-
\end{bmatrix}
$$
where ...

## Notes

Assume $\|x\| = 1$ and let $\eta = P\xi + x$ where $P = 1 - xx'$ is
the orthogonal projection onto $\{x\}^\perp$. Note $\eta\cdot x = 1$
for all $\xi$.

$$
\begin{aligned}
	U_\tau(\eta) &= (P\xi + x)'E[X] - \frac{\tau}{2}(P\xi + x)'\Sigma(P\xi + x)\\
	&= \xi'P E[X] + x'E[X]
	   - \frac{\tau}{2}(\xi'P\Sigma P\xi + 2\xi'P\Sigma x + x'P\Sigma Px)\\
	&= x'E[X] - \frac{\tau}{2} x'P\Sigma x
		- \frac{\tau}{2} \bigl(\xi'P\Sigma P\xi - 2\xi'(P E[X]/\tau - P\Sigma x)\bigr)\\
	&= x'E[X] - \frac{\tau}{2} x'P\Sigma x
		- \frac{\tau}{2}
			\bigl(\|(P\Sigma P)^{1/2}\xi - (P\Sigma P)^{-1/2}(P E[X]/\tau - P\Sigma x)\|^2
			- (P E[X]/\tau - P\Sigma x)'(P\Sigma P)(P E[X]/\tau - P\Sigma x)\bigr)\\
	&= x'E[X] - \frac{\tau}{2} x'P\Sigma x
		- \frac{\tau}{2}
			\bigl(\|(P\Sigma P)^{1/2}\xi - (P\Sigma P)^{-1/2}(P E[X]/\tau - P\Sigma x)\|^2
			- (E[X]/\tau - \Sigma x)'(P\Sigma P)(E[X]/\tau - \Sigma x)\bigr)\\
	&= x'E[X] + \frac{\tau}{2}((E[X]/\tau - \Sigma x)'(P\Sigma P)(E[X]/\tau - \Sigma x) - x'P\Sigma x)
		- \frac{\tau}{2}
			\|(P\Sigma P)^{1/2}\xi - (P\Sigma P)^{-1/2}(P E[X]/\tau - P\Sigma x)\|^2\\
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

The matrix is not invertible however

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

By the  Sherman-Morrison formula, $(A + uv')^{-1}
= A^{-1} - A^{-1}uv'A^{-1}/(1 + v'A^{-1}u)$, we have
$$
\begin{aligned}
	(\tau\Sigma - xx'/\epsilon)^{-1} &= (\tau\Sigma)^{-1}
	+ ((\tau\Sigma)^{-1}xx'(\tau\Sigma)^{-1}/\epsilon)/(1 - x'(\tau\Sigma)^{-1}x/\epsilon)\\
	&= (\tau\Sigma)^{-1}
	- (\tau\Sigma)^{-1}xx'(\tau\Sigma)^{-1}/(x'(\tau\Sigma)^{-1}x - \epsilon)\\
\end{aligned}
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

$$
\begin{aligned}
    (A - cc'/\epsilon)^{-1} &= A^{-1}
        + A^{-1}c(-\epsilon + c'A^{-1}c)^{-1}c'A^{-1}\\
    &= A^{-1} + A^{-1}cc'A^{-1}/(-\epsilon + c'A^{-1}c)\\
\end{aligned}
$$
-->

# References
