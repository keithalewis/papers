---
title: CAPM
author: Keith A. Lewis
institute: KALX, LLC
classoption: fleqn
fleqn: true
---

# Capital Asset Pricing Model

Some notes on the Capital Asset Pricing Model.

## Unified Model

Let $I$ be the set of _market instruments_.

Let $T$ be the totally ordered set of _trading times_.

Let $\Omega$ be the set of all possible _outcomes_.

Let $\mathcal{A}_t$, be the _partiton_ of $\Omega$ representing
information available at time $t\in T$.

Let $X_t\colon\mathcal{A}_t\to\mathbf{R}^I$ be the _prices_ of market
instruments at time $t$.

Let $C_t\colon\mathcal{A}_t\to\mathbf{R}^I$ be the _cash flows_ of market
instruments at time $t$.

A _trading strategy_ is a discrete sequence of increasing stopping times
$\tau_j$ and functions $\Gamma_j\colon\mathcal{A}_{\tau_j}\to\mathbf{R}^I$
specifing the number of _shares_ traded in each instruments at
$\tau_j$. For any stopping time $\tau$, $\mathcal{A}_{\tau}
= \{A_\tau(\omega) : \omega\in\Omega\}$ is the partition with
$A_\tau(\omega) = \{\omega'\in\Omega : \tau(\omega') = \tau(\omega)\}$.

Define $\Delta_t = \sum_{\tau_j < t} \Gamma_j$ to be the _position_ at time $t$.
The notation $\Delta_t = \sum_{s<t} \Gamma_s$ means
$\Delta_t(\omega) = \sum_{\tau_j(\omega) < t} \Gamma_j(\omega)$.

Define $V_t = (\Delta_t + \Gamma_t)\cdot X_t$ to be the _value_ of the
position at time $t$.

Define $A_t = \Delta_t\cdot C_t - \Gamma_t\cdot X_t$ to be the
_amounts_ associated with trading $(\Gamma_t)_{t\in T}$.

A collection of trades is _closed out_ if $\sum_j\Gamma_j = 0$.

There is a _model arbitrage_ if there is a closed out strategy with
$A_{\tau_0} > 0$ and $A_t \ge 0$ for $t > t_0$.

We assume all functions are bounded and write $B(\Omega)$ for
the Banach space of bounded functions on $\Omega$ under the
norm topology $\|f\| = \sup_{\omega\in\Omega} |f(\omega)|$.

The dual of $B(\Omega)$ is the space of finitely additive
measures on $\Omega$, $ba(\Omega)$.

There is no model arbitrage if and only if there exist positive
measures $\Pi_t$ on $\mathcal{A}_t$ with
$X_t\Pi_t = ((C_u + X_u)\Pi_u)|_{\mathcal{A}_t}$ for sufficiently small
$u > t$.

Such measures are called _deflators_ or _risk-neutral_.

## One Period Model

In this case $T = \{t_0,t_1\}$ and $\Gamma_{t_0} = \Gamma_0 = \Gamma$,
$\Gamma_{t_1} = \Gamma_1 = -\Gamma$ for closed out strategies.
We have $\Delta_0 = 0$ and $\Delta_1 = \Gamma_0 = \Gamma$.

Using the definitions above, the initial amount is $A_0
= \Delta_0\cdot C_0 - \Gamma_0\cdot X_0
= - \Gamma\cdot X_0$
and the final amount is $A_1
= \Delta_1\cdot C_1 - \Gamma_1\cdot X_1
= \Gamma\cdot (C_1 + X_1)$.

Let $x = X_0$, $X = C_1 + X_1$, and $\xi = \Gamma$
so $A_0 = -\xi\cdot x$ and $A_1 = \xi\cdot X$.

A _portfolio_, $\xi\in\mathbf{R}^I$, is the number of shares purchased
at the beginning of the period.  The _realized return_ over the
period is $R(\xi) = \xi\cdot X/\xi\cdot x$ when $\xi\cdot x \not= 0$.

There is no arbitrage if and only if there is a positive measure,
$\Pi$, on $\Omega$ with $x = \int_\Omega X\,d\Pi$.

Let $Q = R\Pi$ where $1/R = \|\Pi\|$. Note $Q$ is a positive measure
with mass 1, $x = E^Q[X]/R$ and $E^Q[R(\xi)] = R$ for all $\xi$.

A _zero coupon bond_, $\zeta\in\mathbf{R}^I$, has $\zeta\cdot X = 1$ on
$\Omega$. Its initial value is $\zeta\cdot x = \int_\Omega \zeta\cdot
X\,d\Pi = \|\Pi\| = 1/R$. Note $R = R(\zeta)$.


Define $A\colon\mathbf{R}^I\to\mathcal{R}\times B(\Omega)$.


## CAPM

The one period _Capital Asset Pricing Model_ assumes there is
a probability measure, $P$, on $\Omega$ representing the
"real-world" probability of possible outcomes.

The CAPM also posits a utility function of the form 
$$
U_\tau(\xi) = E[\xi\cdot X] - \frac{\tau}{2} \mathrm{Var}(\xi\cdot X)
    = \xi' E[X] - \frac{\tau}{2}\xi'V\xi
$$
where $\tau$ a risk aversion parameter and
$V = \mathrm{Var}(X) = E[XX'] - E[X]E[X']$ is positive semi-definite.

Note if $\tau = 0$ then the utility is not bounded.

Note if $\zeta$ is a zero coupon bond then $V\zeta = 0$ so
$V$ is not invertible.

We assume $\tau \not= 0$ and $V$ is invertible.

### Unconstrained

Since $\|(\tau V)^{1/2}\xi - (\tau V)^{-1/2}E[X]\|^2 =
\xi'(\tau V)\xi - 2 \xi'E[X] + E[X'](\tau V)^{-1}E[X]$
we have
$$
U_\tau(\xi) = \frac{1}{2}E[X'](\tau V)^{-1}E[X]
	- \frac{1}{2}\|(\tau V)^{1/2}\xi - (\tau V)^{-1/2}E[X]\|^2
$$
so the unconstrained maximum utility is
$$
U_\tau^* = \frac{1}{2}E[X'](\tau V)^{-1}E[X]
$$
when 
$$
\xi^* = (\tau V)^{-1}E[X].
$$

The realized return is $R^* = R(\xi^*) = E[X'] V^{-1}E[X]/x' V^{-1}E[X]$
and does not depend on $\tau$.

Note if $P$ is a deflator, so $x = E[X]/R$, then $R^* = R$ as noted above.


### Fixed Capital

We wish to maximize $U_\tau(\xi)$ subject to $\xi' x = 1$.
Using a Lagrangian multiplier let $\Phi(\xi,\lambda) = U_\tau(\xi) - \lambda(\xi'x - 1)$.
We have
$$
\begin{aligned}
	D_\xi\Phi &= E[X] - \tau V\xi - \lambda x = 0\\
	D_\lambda\Phi &= \xi'x - 1 = 0\\
\end{aligned}
$$
so $\bar{\xi} = (\tau V)^{-1}(E[X] - \lambda x)$
and since $1 = x'\bar{\xi}
= x'(\tau V)^{-1}(E[X] - \lambda x)$ we have
$\lambda = (x'(\tau V)^{-1}E[X] - 1)/x'(\tau V)^{-1}x
= (x' V^{-1}E[X] - \tau)/x' V^{-1}x$.

Define an inner product on $\mathbf{R}^I$ by $x.y = x' V^{-1}y$ so
$\lambda = (x . E[X] - \tau)/x . x$ and $\hat{R} = E[X] . E[X]/x . E[X]$.

Since $x'\bar{\xi} = 1$ the realized return is
$$
\begin{aligned}
\bar{R} &= E[X']\xi\\
    &= E[X'] V^{-1}(E[X] - \lambda x)\\
    &= E[X].E[X] - ((x . E[X] - \tau)/x . x)E[X] . x\\
    &= E[X].x (\hat{R} - ((x . E[X] - \tau)/x . x) \\
\end{aligned}
$$

### Fixed Capital and Return

We wish to maximize $U_\tau(\xi)$ subject to $\xi' x = 1$ and $\xi'E[X] = \rho$.
Since $U_\tau(xi) = \rho - \frac{\tau}{2}\xi' V\xi$ this is equivalent to
minimizing $\frac{1}{2}\xi' V\xi$. Note that this does not depend on $\tau$.

Using Lagrangian multipliers let $\Phi(\xi,\lambda,\mu)
= \frac{1}{2}\xi' V\xi - \lambda(\xi'x - 1) - \mu(\xi'E[X] - \rho)$.
We have
$$
\begin{aligned}
	D_\xi\Phi &=  V\xi - \lambda x - \mu E[X] = 0\\
	D_\lambda\Phi &= \xi'x - 1 = 0\\
	D_\mu\Phi &= \xi'E[X] - \rho = 0\\
\end{aligned}
$$
so $\bar{\xi} =  V^{-1}(\lambda x + \mu E[X])$ and every optimal
solution belongs to the (at most) two-dimensional subspace determined by
$y =  V^{-1}x$ and $Y =  V^{-1}E[X]$.

Using the constraints
$$
\begin{aligned}
    1 &= \lambda y'x + \mu Y'x\\
    \rho &= \lambda y'E[X] + \mu Y'E[X]\\
\end{aligned}
$$
$$
    \begin{bmatrix}
        1 \\ \rho
    \end{bmatrix}
    =
    \begin{bmatrix}
    y'x & Y'x\\
    y'E[X] & Y'E[X]\\
    \end{bmatrix}
    \begin{bmatrix}
        \lambda \\ \mu
    \end{bmatrix}
$$
$$
    \begin{bmatrix}
        \lambda \\ \mu
    \end{bmatrix}
    =
    \frac{1}{y'x Y'E[X] - (Y'x)^2}
    \begin{bmatrix}
    Y'E[X] & -Y'x\\
    -Y'x & y'x\\
    \end{bmatrix}
    \begin{bmatrix}
        1 \\ \rho
    \end{bmatrix}
$$


### Two Assets

Let $x = (r,s)$ and $X = (R,S)$.

$$
 V = E[XX'] - E[X] E[X']
    = \begin{bmatrix}
        \mathrm{Var}(R) & \mathrm{Cov}(R,S)\\
        \mathrm{Cov}(R,S) & \mathrm{Var}(S)\\
    \end{bmatrix}
    = \begin{bmatrix}
        \sigma_R^2 & \rho \sigma_R \sigma_S\\
        \rho \sigma_R \sigma_S & \sigma_S^2\\
    \end{bmatrix}
$$

This matrix has eigenvalues

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

$$
 V^{-1}
= \frac{1}{\mathrm{Var}(R)\mathrm{Var}(S) - \mathrm{Cov}(R,S)^2}
    \begin{bmatrix}
        \mathrm{Var}(S) & -\mathrm{Cov}(R,S)\\
        -\mathrm{Cov}(R,S) & \mathrm{Var}(R)\\
    \end{bmatrix}
$$

$$
 V^{-1}E[X]
= \frac{1}{\mathrm{Var}(R)\mathrm{Var}(S) - \mathrm{Cov}(R,S)^2}
    \begin{bmatrix}
        \mathrm{Var}(S) E[R]  - \mathrm{Cov}(R,S) E[S]\\
        -\mathrm{Cov}(R,S) E[R] + \mathrm{Var}(R) E[S]\\
    \end{bmatrix}
$$

$$
\begin{aligned}
E[X'] V^{-1}E[X]
	&= \frac{1}{V_R V_S - C_{R,S}^2}
        [V_S (ER)^2 - 2 C_{R,S} E[R] E[S] + V_R (ES)^2]\\
	&= \frac{1}{1 - \rho^2}((\mu_R/\sigma_R)^2 - 2\rho(\mu_R/\sigma_R)(\mu_S/\sigma_S) + (\mu_S/\sigma_S)^2)\\
\end{aligned}
$$
where $\rho$ is the correlation of $R$ and $S$ and $\mu_X = E[X]$, $\sigma_X^2 = \mathrm{Var}(X)$.

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
