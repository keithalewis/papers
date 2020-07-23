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

In the [one-period model](one-period-model) all efficient portfolios lie in a two-dimensional
subspace. ...

## One-Period Model

This model is parameterized directly by prices. Returns are defined in terms of these.

Let $I$ be the set of market instruments and $\Omega$ be the set of
possible market outcomes over a single period.  The _one-period model_
specifies the initial instrument prices $x\in\mathbf{R}^I$ and the final
instrument prices $X\colon\Omega\to\mathbf{R}^I$ depending on the outcome.
We assume, as customary, that there are no cash flows associated with
the instruments and transactions are perfectly liquid.

It is common in the literature to write $\mathbf{R}^n$ instead of
$\mathbf{R}^I$ where $n$ is the cardinality of $I$.
If $A^B = \{f\colon B\to A\}$ is the set of functions from $B$ to $A$
then $x\in\mathbf{R}^I$ is a function $x\colon I\to\mathbf{R}$
where $x(i)\in\mathbf{R}$ is the price of instrument $i\in I$. 
This avoids circumlocutions like $I = \{i_1,\ldots,i_n\}$
and $x = (x_1,\ldots,x_n)$ where $x_j = x(i_j)$, $j = 1,\ldots, n$.

A _portfolio_ $\xi\in\mathbf{R}_I$ represents the number of
shares initially purchased in each instrument where $\mathbf{R}_I =
(\mathbf{R}^I)^*$ is the _dual vector space_ of $\mathbf{R}^I$.  Recall
the dual space of a vector space $X$ consists of all bounded _linear
functionals_ on $X$. The _dual pairing_ of a linear functional $x^*\colon
X\to\mathbf{R}$ is $\langle x,x^* \rangle = x^*(x)$ for $x\in X$.
If $\mathcal{B}(X,Y)$ is the space of bounded linear transformations
from $X$ to $Y$ then $X^* = \mathcal{B}(X,\mathbf{R})$.

When $I$ is finite dimensional, as it is in the real world, 
$\mathbf{R}_I$ can be identified with $\mathbf{R}^I$. An element
$y\in\mathbf{R}^I$ defines a linear functional $y'\in\mathbf{R}_I$ via
$y'(x) = \sum_{i\in I} y(i) x(i) = y\cdot x$, the _inner product_
of $y$ and $x$. If elements of $\mathbf{R}^I$ are considered as column
vectors then the right hand side of $y'(x) = y'x$ is the usual matrix
product where $y'$ is the _transpose_ of $y$ considered as a row vector.

The _value_ of a portfolio $\xi$ given prices $x$ is $\xi'x$.
It is the cost of attaining the portfolio $\xi$.
The _realized return_ is $R(\xi) = \xi'X/\xi'x$ when $\xi'x\not=0$.
Note $R(\xi) = R(t\xi)$ for any non-zero $t\in\mathbf{R}$ so
there is no loss in assuming $\xi'x = 1$ when needed.

There is _model arbitrage_ if there exists a portfolio $\xi$ with
$\xi'x < 0$ and $\xi'X(\omega) \ge0$ for all $\omega\in\Omega$:
you make money on the initial investment and never lose money
when unwinding at the end of the period. This definition does
not require a measure on $\Omega$.

The one-period fundamental
theorem of asset pricing states there is no model arbitrage if
and only if there exists a positive measure $\Pi$ on $\Omega$ with
$x = \int_\Omega X(\omega)\,d\Pi(\omega)$. We assume $X$ is
bounded, as it is in the real world, and $\Pi$ is finitely additive.
The dual space of bounded functions on $\Omega$ is the space of finitely additive measures
on $\Omega$
with the dual pairing $\langle X,\Pi\rangle = \int_\Omega X\,d\Pi$. \cite{Dunford and Schwartz}
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

A portfolio $\xi$ is _efficient_ for a given expected realized return
$\rho$ if $\mathrm{Var}(R(\xi)) \le \mathrm{Var}(R(\eta))$ for every
portfolio $\eta$ with expected realized return $\rho$.

The [appendix](#efficient-portfolios) shows every efficient portfolio
has the form
$$
\xi = ((C - \rho B)/\Delta)V^{-1}x + ((-B + \rho A)/\Delta)V^{-1}E[X]
$$
where $A = xV^{-1}x$, $B = x'V^{-1}E[X] = E[X']V^{-1}x$, $C = E[X]V^{-1}E[X]$,
and $\Delta = AC - B^2$.
The variance of the portfolio is
$$
\mathrm{Var}(R(\xi)) = (C - 2B\rho + A\rho^2)/\Delta
$$ 

If $\xi_0$ and $\xi_1$ are any two independent efficient portfolios then
they belong to the subspace spanned by $V^{-1}x$ and $V^{-1}E[X]$.
Every efficient
portfolio can be written $\xi = \beta_0\xi_0 + \beta_1\xi_1$ for some
scalars $\beta_0$ and $\beta_1$.

We can assume $\xi_j'x = 1$ for $j = 0,1$ so $R(\xi_j) = \xi_j'X$.
If $\xi'x = 1$ then $\beta_0 + \beta_1 = 1$ and
$\xi = (1 - \beta)\xi_0 + \beta\xi_1$ where $\beta = \beta_1$.
Multiplying both sides by $X$ we have $\xi'X = (1 - \beta)\xi_0'X + \beta\xi_1'X$ so
$$
	R(\xi) - R(\xi_0) = \beta(R(\xi_1) - R(\xi_0))
$$
where $\beta = \mathrm{Cov}(R(\xi) - R(\xi_0), R(\xi_1) - R(\xi_0))/\mathrm{Var}(R(\xi_1) - R(\xi_0))$.

### Risk-less Portfolios

A _risk-less portfolio_ $\zeta$ has zero variance realize return so $\zeta'X = c$ for some constant $c$.
If $c = 1$ we call the portfolio a _zero coupon bond_. Zero coupon bonds have return $R(\zeta) = 1/\zeta'x$.
Since $V\zeta = E[Xc] - E[X]c = 0$ $V$ is not invertible.

## Appendix

### Efficient Portfolios

Let's find the minimum value of $\mathrm{Var}(R(\xi))$ given $E[R(\xi)] =
\rho$.  If $\xi'x = 1$ then $R(\xi) = \xi'E[X]$ and $\mathrm{Var}(R(\xi))
= \xi'V\xi$ where $V = \mathrm{Var}(X) = \mathrm{Cov}(X,X) = E[XX']
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
with $A = xV^{-1}x$, $B = x'V^{-1}E[X] = E[X']V^{-1}x$, and
$C = E[X]V^{-1}E[X]$.
Inverting gives
$$
\begin{bmatrix} \lambda \\ \mu \end{bmatrix}
= \frac{1}{\Delta}
\begin{bmatrix}
C & -B \\
-B & A\\
\end{bmatrix}
\begin{bmatrix}
1 \\
\rho
\end{bmatrix}
= \frac{1}{\Delta}
\begin{bmatrix}
C - \rho B \\
-B + \rho A\\
\end{bmatrix}
$$
where $\Delta = AC - B^2$ so
$\lambda = (C - \rho B)/\Delta$, $\mu = (-B + \rho A)/\Delta$, and
$$
\begin{aligned}
    \xi &= V^{-1}\begin{bmatrix}x & E[X]\end{bmatrix}
  \begin{bmatrix}\lambda \\ \mu\end{bmatrix} \\
        &= \frac{1}{\Delta} V^{-1}
           \bigl(
           (C - \rho B)x + (-B + \rho A)E[X]
           \bigr)
\end{aligned}
$$

A straightforward calculation shows the variance is
$$
\xi'V\xi = (C - 2B\rho + A\rho^2)/\Delta.
$$
Note that $A$, $B$, $C$, and $\Delta$ only depend on
$x$, $E[X]$, and $E[XX']$. Classical literature focuses
mainly on the latter three which may explain why prior
authors overlooked the elementary but stronger result
$$
	R(\xi) - R(\xi_0) = \beta(R(\xi_1) - R(\xi_0))
$$
as random variables for any efficient $\xi$ given any two
independent efficient portfolios $\xi_0$ and $\xi_1$.
Taking expectations on both sides
yields the classical CAPM formula when $\xi_0$ is the risk-free portfolio
and $\xi_1$ is the market portfolio.

<!--
If $Rx = E[X]$ and $\rho = R$ then $B = RA$ and $C = R^2A$ so $\Delta = 0$ and the
matrix is not invertible.  However if we replace $C$ by $C(1 + \epsilon)$
for $\epsilon\not=0$ it is and
$\Delta = R^2A^2\epsilon$, $C - 2BR + AR^2 = R^2A\epsilon$.
The maximum utility is $R - \tau/2A$ as noted above.
-->

### Model Arbitrage

A one-period model specifies initial prices $x\in\mathbf{R}^I$ and
final prices $X\colon\Omega\to\mathbf{R}^I$ where $\Omega$ is the set
of possible outcomes.

If there exists a portfolio $\xi\in\mathbf{R}^I$ with $\xi\cdot x < 0$ and
$\xi\cdot X \ge0$ on $\Omega$ then arbitrage exists. You make money on the
initial position and never lose money on any outcome.  This definition
does not assume there is a probability measure on $\Omega$.

The Fundamental Theorem of Asset Pricing states there is no _model
arbitrage_ if and only if there exists a positive measure $\Pi$ on
$\Omega$ with $x = \int_\Omega X(\omega)\,d\Pi(\omega)$.  We assume $X$
is bounded and $\Pi$ is finitely additive.

If such a measure exists and $\xi\cdot X\ge0$ then $\xi\cdot x = \int_\Omega \xi\cdot X\,d\Pi \ge0$ so arbitrage
cannot occur. The other direction is less trivial.

**Lemma.** _If $x\in\mathbf{R}^n$ and $C$ is a closed cone in
$\mathbf{R}^n$ with $x\not\in C$ then there exists $\xi\in\mathbf{R}^n$
with $\xi\cdot x < 0$ and $\xi\cdot y \ge0$ for $y\in C$._

Recall that a _cone_ is a subset of a vector space closed under addition
and multiplication by a positive scalar, i.e., $C + C\subseteq C$
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

A function $F\colon X\to Y$ where $X$ and $Y$ are Banach spaces
has a Fr&eacute;chet derivative at $x\in X$ if it is linear up to first
order in a neighborhood of $x$.
The Fr&eacute;chet derivative $DF\colon X\to\mathcal{B}(X,Y)$, where $\mathcal{B}(X,Y)$
is the space of bounded linear operators from $X$ to $Y$,
is defined by $F(x + h) = F(x) + DF(x)h + o(\|h\|)$ as $h\to 0$

For example, if $F\colon X\to X$, where $X$ is a (not necessarily
commutative) Banach algebra, is defined to be
$F(x) = x^2$ then $(x + h)^2 = x^2 + xh + hx + h^2$.
The $h^2$ term is $o(\|h\|)$ so $DF(x)h = xh + hx$.
If we define the linear operators of left and right multiplication by $x$,
$L_x,R_x\colon X\to X$, where
$L_x y = xy$ and $R_x y = yx$ then $DF(x) = L_x + R_x$.
Another way to write this is $D(x^2)dx = x\ dx + dx\ x$.

A good exercise is to show $D(x^n) = \sum_{j=1}^n L_x^{n - j} R_x^{j - 1}$.

If $X$ is commutative the above reduces to
$DF(x) = 2M_x$ where $M_x = L_x = R_x$. If we implicitly
assume $x$ stands for multiplication by $x$, $M_x$, then
we can write $D(x^2) = 2x$, just as in the case $X = \mathbf{R}$.

The exercise shows $D(x^n) = nM_{x^{n-1}} = nx^{n-1}$.

If $Y = \mathbf{R}$ we have $DF\colon X\to\mathcal{B}(X,\mathbf{R}) = X^*$
where $X^*$ is the dual space of $X$.

If $T\colon\mathbf{R}^n\to\mathbf{R}^n$ is a self-adjoint linear
transformation and $F(x) = x'Tx$ then $DF(x)h = 2h'Tx$. This
follows from $(x + h)'T(x + h) = x'Tx + x'Th + h'Tx + h'Th$
so $DF(x)h = x'Th + h'Tx = 2h'Tx$ since $x'Th = h'T'x = h'Tx$.
Note $DF\colon\mathbf{R}^n\to(\mathbf{R}^n)^*$.
Expressed using the dual pairing $DF(x)h = \langle 2Vx, h\rangle$.


<!--
The model also specifies a probability measure $P$ on the
space of outcomes. The _utility_ of $\xi$ is
$$
U_\tau(\xi) = E[R(\xi)] - \frac{\tau}{2}\mathrm{Var}(R(\xi))
$$
where $\tau\ge0$ is a risk aversion parameter. We could use
any utility of the form $aE[R(\xi)] + b\mathrm{Var}(R(\xi))$
with $a > 0$ and $b \le 0$ so that higher returns are
offset by lower variance.

Note $U_\tau(\xi) = U_\tau(t\xi)$ for any non-zero $t\in\mathbf{R}$
since $R(\xi) = R(t\xi)$.

To find a portfolio with return $\rho$ having maximum utility 
we use Lagrangian multipliers to solve
$$
\max_{\xi,\lambda,\mu} E[\xi'X] - \frac{\tau}{2}\xi'V\xi - \lambda(\xi'x - 1) - \mu(\xi'E[X] - \rho)
$$
where $V = \mathrm{Var}(X) = E[XX'] - E[X]E[X']$. Every extremum satisfies
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
where $\beta = \mathrm{Cov}(R(\xi) - R_0,R_1 - R_0)/\mathrm{Var}(R_1 - R_0)$.

If $\mathrm{Var}(R_0) = 0$ then
$\beta = \mathrm{Cov}(R(\xi),R_1)/\mathrm{Var}(R_1)$
and we have a stronger form of the classic CAPM formula.
It holds for returns, not just their expected value, and
it holds for any distribution of market prices.
The risk-free and market portfolio are not special.

Unfortunately, if $V$ is invertible then there is no $\xi$ with $\mathrm{Var}(\xi'X) = 0$.
If $\xi'X = c$ for some constant $c$ then $V\xi = E[XX']\xi - E[X] E[X']\xi
= E[XX'\xi] - E[X] E[X'\xi] = E[Xc] - E[X]c = 0$. We rectify this in the next section.

### Risk-free Portfolios

A portfolio $\zeta\in\mathbf{R}^I$ with $\zeta'X(\omega) = c$ for some
constant $c\in\mathbf{R}$ and all $\omega\in\Omega$ is called _risk-free_.
If $c = 1$ the portfolio is called a _zero coupon bond_ and has constant
realized return $R = R(\zeta) = 1/\zeta'x$.

Note $R\zeta'x = 1$ and $R\zeta'E[X] = R$
and the portfolio $\xi = R\zeta$ is optimal for expected return $\rho = R$
since $\Var(R(\zeta)) = 0$.

Let $V_\zeta = V|_{\{\zeta\}^\perp}$ where $\{\zeta\}^\perp = \{y\in\mathbf{R}^I:\zeta'y = 0\}$.
Note $\zeta$ is an eigenvector of $V$ (with eigenvalue 0) and $V$ is self-adjoint
so $\{\zeta\}^\perp$ is an invariant subspace of $V$.
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
The matix is not invertible but a small perturbation is and we can use
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
The matix is not invertible but a small perturbation is and we can use
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



A _zero coupon bond_, $\zeta\in\mathbf{R}^I$, has $\zeta\cdot X = 1$ on
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

The matrix is not invertable but
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
-->

