---
title: CAPM Crunch
author: Keith A. Lewis
institute: KALX, LLC
classoption: fleqn
fleqn: true
---

# Capital Asset Pricing Model Revisited

The Capital Asset Pricing Model is a prescriptive theory of portfolio
investment based on the notion that higher expected returns
must be tempered by the risk involved. It uses portfolio variance as
a measure of risk to specify a utility function. If the utility is a
linear combination of these two factors then all optimal portfolios lie
in a two dimensional space. The classical theory uses
the _risk-free_ and _market_ portfolio as a basis.
Denoting the _realized return_ of a portfolio $\xi$ by $R(\xi)$,
the classical CAPM formula is
$$
	E[R(\xi)] - R(\zeta) = \beta(E[R(\mu)] - R(\zeta))
$$
where $\xi$ is any optimal portfolio, $\zeta$ is the risk-free
portfolio, $\mu$ is the market portfolio, and
$\beta = \mathrm{Cov}(R(\xi),R(\mu))/\mathrm{Var}(R(\mu))$.

We prove a stronger result that holds for any distribution of market prices:
$$
	R(\xi) - R(\zeta) = \beta(R(\mu) - R(\zeta))
$$
as random variables for any optimal $\zeta$ and $\mu$. In this case
$$
\beta = \mathrm{Cov}(R(\xi) - R(\zeta),R(\mu) - R(\zeta))/\mathrm{Var}(R(\mu) - R(\zeta)).
$$


## One-Period Model

Let $\Omega$ be the set of possible market outcomes and $I$ be
the set of available market instruments. The _one-period model_
specifies $x\in\mathbf{R}^I$ as the initial instrument prices
and $X\colon\Omega\to\mathbf{R}^I$ as the final instrument
prices depending on the outcome. We assume, as customary,
that there are no dividend cash flows and prices are perfectly
liquid.

A _portfolio_ $\xi\in\mathbf{R}^I$ represents the number of
shares initially purchased in each instrument. The _realized
return_ is $R(\xi) = \xi'X/\xi'x$ when $\xi'x\not=0$, where
$x'y = x\cdot y$ is the inner product of $x,y\in\mathbf{R}^I$.

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
Since $1 = \xi'x = \beta_0 + \beta_1$ we have $\xi = (1 - \beta)\xi_0 + \beta\xi_1$ and
$$
	R(\xi) - R_0 = \beta(R_1 - R_0)
$$
where $R_i = R(\xi_i)$ and 
$\beta = \mathrm{Cov}(R(\xi) - R_0,R_1 - R_0)/\mathrm{Var}(R_1 - R_0)$.

If $\mathrm{Var}(R_0) = 0$ then
$\beta = \mathrm{Cov}(R(\xi),R_1)/\mathrm{Var}(R_1)$
and we have a stronger form of the classic CAPM formula.
It holds for returns, not just their expected value, and
it holds for any distribution of market prices.
The risk-free and market portfolio are not special.

Unfortunately, if $V$ is invertible then there is no $\xi$ with $\mathrm{Var}(\xi'X) = 0$.
If $\xi'X = c$ for some constant $c$ then $V\xi = E[XX']\xi - E[X] E[X']\xi
= E[XX'\xi] - E[X] E[X'\xi] = E[Xc] - E[X]c = 0$. We rectify this in the next section.

### Zero Coupon Bonds

A portfolio $\zeta\in\mathbf{R}^I$ with $\zeta'X = 1$ is called a
_zero coupon bond_. It pays one unit on any outcome.

Let $R = 1/\zeta'x = R(\zeta)$. We have $R\zeta'x = 1$ and $R\zeta'E[X] = R$.
The portfolio $\xi = R\zeta$ is optimal for expected return $\rho = R$
since $V\zeta = 0$.

Let $V_\zeta = V|_{\{\zeta\}^\perp}$ where $\{\zeta\}^\perp = \{y\in\mathbf{R}^I:\zeta'y = 0\}$.
Since $\zeta$ is an eigenvector of $V$ (with eigenvalue 0) and $V$ is self-adjoint
$\{\zeta\}^\perp$ is an invariant subspace of $V$.
We can assume $V_\zeta$ is invertible and find other optimal portfolios in $\{\zeta\}^\perp$ as above.

If $x$ and $E[X]$ are collinear then $Rx = E[X]$ for some $R$ and
the only optimal portfolio with $\xi'x = 1$ is $\xi = V^{-1}x/x'V^{-1}x$. It has return $R$
and utility $U_\tau = R - \tau/2x'V^{-1}x$. Note $\xi$ does not depend on $\tau$ and requires
$\rho = R$.

## Appendix

### Maximum Utility Solution

Let's solve $EX - \tau V\xi - \lambda x - \mu E[X] = 0$,
$\xi'x - 1 = 0$, $\xi'E[X] - \rho = 0$ for $\xi$, $\lambda$, and $\mu$.

Since $\xi = -\lambda (\tau V)^{-1} x + (1 - \mu)(\tau V)^{-1} E[X]$
assuming $\tau > 0$ and $V$ is invertible we have
$$
\begin{aligned}
1    &= - \lambda x'(\tau V)^{-1}x + (1-\mu)x'(\tau V)^{-1}E[X] \\
\rho &= - \lambda E[X'](\tau V)^{-1}x + (1-\mu)E[X'](\tau V)^{-1}E[X]
\end{aligned}
$$
which can be written
$$
\begin{bmatrix}
1 \\
\rho \\
\end{bmatrix}
= \frac{1}{\tau} \begin{bmatrix}
A & B \\
B & C\\
\end{bmatrix}
\begin{bmatrix}-\lambda \\ 1 - \mu\end{bmatrix}
$$
with $A = xV^{-1}x$, $B = x'V^{-1}E[X] = E[X']V^{-1}x$, and
$C = E[X]V^{-1}E[X]$.
Inverting gives
$$
\begin{bmatrix} -\lambda \\ 1 - \mu \end{bmatrix}
= \frac{\tau}{\Delta}
\begin{bmatrix}
C & -B \\
-B & A\\
\end{bmatrix}
\begin{bmatrix}1 \\ \rho \end{bmatrix}
= \frac{\tau}{\Delta}
\begin{bmatrix}
C - \rho B \\
-B + \rho A\\
\end{bmatrix}
$$
where $\Delta = AC - B^2$ so
$\lambda = (\rho B - C)\tau/\Delta$, $\mu = 1 + (B - \rho A)\tau/\Delta$, and
$$
\begin{aligned}
    \xi &= \frac{1}{\tau}\begin{bmatrix}V^{-1}x & V^{-1}E[X]\end{bmatrix}
		   \begin{bmatrix}-\lambda \\ 1 - \mu\end{bmatrix} \\
        &= \frac{1}{\Delta} V^{-1}
           \bigl(
           (C - \rho B)x + (-B + \rho A)E[X]
           \bigr)
\end{aligned}
$$
<!--
Note that $\xi$ does not depend on $\tau$. Since $\xi = aV^{-1}x + bV^{-1}E[X]$ and
the constraints are $\xi'x = 1$ and $\xi'E[X] = \rho$ this is not surprising.
-->

A straightforward calculation shows the variance is
$$
\xi'V\xi = (C - 2B\rho + A\rho^2)/\Delta
$$
so the maximum utility is $U_\tau(\xi) = \rho - (C - 2B\rho + A\rho^2)\tau/2\Delta$.

If $Rx = E[X]$ and $\rho = R$ then $B = RA$ and $C = R^2A$ so $\Delta = 0$ and the
matrix is not invertible.  However if we replace $C$ by $C(1 + \epsilon)$
for $\epsilon\not=0$ it is and
$\Delta = R^2A^2\epsilon$, $C - 2BR + AR^2 = R^2A\epsilon$.
The maximum utility is $R - \tau/2A$ as noted above.

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

If such a measure exists and $\xi\cdot X\ge0$ then $\xi\cdot x = \int \xi\cdot X\,d\Pi \ge0$ so arbitrage
cannot occur. The other direction is less trivial.

**Lemma.** _If $x\in\mathbf{R}^n$ and $C$ is a closed cone in
$\mathbf{R}^n$ with $x\not\in C$ then there exists $\xi\in\mathbf{R}^n$
with $\xi\cdot x < 0$ and $\xi\cdot y \ge0$ for $y\in C$._

Recall that a _cone_ is a subset of a vector space closed under addition
and multiplication by a positive scalar, i.e., $C + C\subseteq C$
and $tC\subseteq C$ for $t > 0$. The set of arbitrage
portfolios is a cone.

_Proof._ Since $C$ is closed there exists $x^*\in C$ with
$||x^* - x|| \le ||y - x||$ for all $y\in C$.  Let $\xi = x^* - x$.
For any $y\in C$ and $t\ge 0$ we have $ty + x^*\in C$ so $||\xi|| \le ||ty + \xi||$. 
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

<!--

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
-->
