---
title: The Unified Model
subtitle: How to model **all** derivative securities
theme: white
hash: true
history: true
controlsTutorial: false
transition: 'fade'

---

##  Quo vadis status quo?

* Valuing is only the first step.

* Since continuous hedging is impossible...

* ...how and when do you hedge?

* Current theory gives *wrong* answers.

---

## Barrier Options

* What is the value of a barrier option that
knocks in/out the _second_ time it hits the barrier?

* Current theory says same as a barrier option that knocks in/out the first time.

* Also same as a barrier option that knocks in/out the millionth time
it hits the barrier.

* __MATHEMATICALLY CORRECT, BUT USELESS__

---

## Derivative Securities

* A _derivative security_ is a contract between two parties.

* _I will give you this on these dates if you will give me that on those dates._

* Derivatives must have existed since before recorded history.

---

## Mapping Finance to Math

* Black-Scholes/Merton showed how to value an option.

* The latter two won Nobel prizes for that _assuming continuous hedging_.

* A Nobel prize awaits someone who comes up with a practical theory not assuming that.  

---

## Price and Cash Flow

Prices $(X_t)$
: Vector of _prices_ at time $t$ indexed by available market instruments.

Cash Flows $(C_t)$
: Vector of _cash flows_ associated with holding instruments, e.g.,
stock dividends, bond coupons, futures margin adjustments.

---

## Trading and Position

Trades $(\tau_j,\Gamma_j)$
: Increasing stopping times and corresponding vector
of shares _traded_ in each instrument at $\tau_j$.

Position $(\Delta_t)$
: Trades accumulate to a _position_ $\Delta_t = \sum_{\tau_j < t} \Gamma_j = \sum_{s < t} \Gamma_s$.  
The trade just executed is not included in the position.

---

## Value and Amount

Value $(V_t)$
: The marked-to-market value of position and last trade $V_t = (\Delta_t + \Gamma_t)\cdot X_t$.  

Amount $(A_t)$
: Trading costs $A_t = \Delta_t\cdot C_t - \Gamma_t\cdot X_t$.  
You receive the cash flows from the existing position and pay for last trade.

---

## Arbitrage

* Trades $(\tau_j,\Gamma_j)$

* $\sum_j \Gamma_j = 0$, must close out

* $A_{\tau_0} > 0$ and $A_t \ge 0$ for $t > \tau_0$.

* The first trade makes money and no money is lost after that.

---

## Asset Pricing

There is no arbitrage if and only if there
exist a positive, adapted _deflator_ $(D_t)$
on $\langle \Omega, P, (\mathcal{A}_t)_{t\in T}\rangle$
such that price and cash flow satisfy

$$
X_t D_t = E[X_u D_u + \sum_{t < s \le u} C_s D_s\mid\mathcal{A}_t].
$$

* If $C_t = 0$ then $X_tD_t$ is a martingale.

* As $u\to\infty$, the price is discounted future cash flows.

---

## Derivative Pricing

With value and amount as defined above,

$$
V_t D_t = E_t[V_u D_u + \sum_{t < s \le u} A_s D_s].
$$

* Note how value corresponds to price and amount corresponds to cash flow.

There is no arbitrage since if $A_t\ge 0$ for $t>\tau_0$

$$
-A_{\tau_0} = V_{\tau_0} = E_{\tau_0}[\sum_{t>\tau_0} A_t D_t]/D_{\tau_0} \ge 0
$$



<!--
[text]{.class key="value"}
-->

---

## Discrete Time

If trading times are discrete $T = \{t_0, t_1, \ldots\}$
then price and cash flow satisfy

$$
X_j D_j = E_{t_j}[(X_{j+1} + C_{j+1}) D_{j+1}]
$$

for all $j$ where $X_j = X_{t_j}$, etc.  
Value and amount satisfy

$$
V_j D_j = E_{t_j}[(V_{j+1} + A_{j+1}) D_{j+1}]
$$


---

## Lemma

Let $V = V_j$, $V' = V_{j+1}$, etc.
so $\Delta + \Gamma = \Delta'$,
$V = (\Delta + \Gamma)\cdot X$, $A' = \Delta'\cdot C' - \Gamma'\cdot X'$,
and $XD = E[(X' + C')D']$. We have

$$
\begin{aligned}
V D &= (\Delta + \Gamma)\cdot X D\\
 &= \Delta'\cdot E[(X' + C') D']\\
 &= E[(\Delta'\cdot X' + \Delta'\cdot C') D']\\  
 &= E[(\Delta'\cdot X' + \Gamma'\cdot X' + A') D']\\
 &= E[(\Delta' + \Gamma')\cdot X' + A') D']\\
 &= E[(V'+ A') D']\\
\end{aligned}
$$

---

## Models

Every arbitrage-free model is parameterized by a positive, adapted deflator $(D_t)$ and
a vector-valued martingale $(M_t)_{t\in T}$: $X_t = (M_t - \sum_{s\le t} C_s D_s)/D_t$
$$
\begin{aligned}
E_t[&X_u D_u + \sum_{t < s \le u} C_s D_s]\\
&= E_t[(M_u - \sum_{s\le u} C_s D_s) + \sum_{t < s \le u} C_s D_s]\\
&= E_t[M_u - \sum_{s\le t} C_s D_s]\\
&= M_t - \sum_{s\le t} C_s D_s = X_t D_t\\
\end{aligned}
$$

---

## Black-Scholes/Merton

Let $D_t = \exp(-\rho t)$ and $M_t = (r, s\exp(\sigma B_t - \sigma^2 t/2))$ where
$(B_t)$ is standard Brownian motion.

* No need for Ito's formula.

* No need for partial differential equations.

* No need for change of measure.

* No need for self-financing.

* No need for the Hahn-Banach theorm.

<!--
## Levy Processes

$(Y_t)$ is a Levy process if it has independent increments and is stationary.

The _cumulant_ of $Y_t$ is $\kappa_t(s) = \log E[\exp(s Y_t)]$
and $e^{\sigma Y_t - \kappa_t(\sigma)}$ si a martingale.

Let $D_t = e^{-\rho t}$ and $M_t = (r, se^{\sigma Y_t - \kappa_t(\sigma)})$.

Examples:

* Merton's jump diffusion

* Carr and Madan's Variance Gamma

* Kou's double exponential model.

-->

---

## Canonical Deflator

* _Instantaneous forward rate_ process $(f_t)$

* _Canonical deflator_ $D_t = \exp(-\int_0^t f_s\,ds)$.  

* Repurchase agreement: $X_t = 1$, $C_{t+dt} = R_t$. 

* _Realized return_ is $R_t$ over $[t, t + dt]$.

* Hence $R_t = \exp(f_t\,dt) \approx 1 + f_t\,dt$.

---

## Futures

* Futures on $S$ expiring at $t_n$ have _quotes_ $\Phi_j$, $j \le n$.
* At $t_n$ $\Phi_n = S_n$.
* The price of a futures is always zero.
* They have cash flows $C_j = \Phi_j - \Phi_{j-1}$ at $t_j$.
* Since $X_j D_j = E_j C_{j+1} D_{j + 1}$...
* ...we have $0 = E_j(\Phi_{j+1} - \Phi_j)/R_j$ and $\Phi_j = E_j\Phi_{j+1}$.
* Futures quotes are martingales.

---

## Zero Coupon Bonds

* $Z(u)$ has one non-zero cash flow $C_u = 1$
* Price at $t$ satisfies $Z_t(u) D_t = E_t D_u$
* Hence $Z_t(u) = E_t[\exp(-\int_t^u f_s\,ds)]$
* Fixed-income instruments are a portfolio of zero coupon bonds
* Price dynamics are determined by the short rate process.

---

## Risky Zero Coupon Bonds

* Default at $T$ with recovery $R$
* Sample space $\Omega\times [0, \infty) \times [0,1]$
* Algebras $\mathcal{A}_{t_j} \times \{\{t_0\}, \ldots, \{t_{j-1}\},\{t_j,\ldots\}\}$.

$$
C_t = \bigl(1(t = u, T > u) + R1(t = T, t \le u)\bigr)1(T > t).
$$

* If $R$ is constant and $Z_t(u) = 1$ then

$$
Z_t^{T,R}(u) = \bigl(P(T > u) + R\,P(t < T \le u)\bigr) 1(T > t)/P(T > t)
$$

---

## American Options

* Owner chooses stopping time $\tau$
* Sample space $\Omega\times [0,\infty)$
* Algebras $\mathcal{A}_{t_j} \times \{\{t_0\}, \ldots, \{t_{j}\},\{t_{j+1},\ldots\}\}$
* Cash flow: $C_t = \phi(X_t) 1(t = \tau)$
* Allow for non-optimal exercise.
* Don't make implicit assumptions.

---

## Hedging

* Derivative pays $(\bar{A}_k)$ at $(\bar{\tau}_k)$
* Find $(\tau_j, \Gamma_j)$ with $\sum_j \Gamma_j = 0$ and

$$
\begin{aligned}
A_t =
\begin{cases}
\bar{A}_k, &t = \bar{\tau}_k\mathrm{\ for\ some\ } k\\
0, &t \ne \bar{\tau}_k\mathrm{\ for\ all\ } k
\end{cases}
\end{aligned}
$$

* The second case is called &#8220;self-financing&#8221;

---

## Initial Hedge

Assume discrete time and option pays $\bar{A}_n$ at $t_n$.

* $V_0 = E[\bar{A}_nD_n]$.

* $V_0 = (\Delta_0 + \Gamma_0)\cdot X_0 = \Gamma_0\cdot X_0$

* Initial hedge is $\Gamma_0 = dV_0/dX_0$.

---

## Intermediate Hedge

* $V_j = E_j[\bar{A}_nD_n]/D_j$.

* $V_j = (\Delta_j + \Gamma_j)\cdot X_j$

* Intermediate hedge is $\Gamma_j = dV_j/dX_j - \Delta_j$.

* $\Gamma$ is gamma and $\Delta$ is delta.

---

## Final Hedge

* The position must close out.

* Final hedge must be $\Gamma_n = -\sum_{0\le j<n}\Gamma_j$

* No guarantee this hedge replicates payoffs.

* How good is the hedge?

---

## One Period Model

* Payoff $A$ at $t_1$.

* Minimize $\Phi = E(A - A_1)^2$.

$$
\begin{aligned}
\Phi(\Gamma_0) &= E(A + \Gamma_1\cdot X_1)^2\\
    &= E(A - \Gamma_0\cdot X_1)^2\\
    &= E(A^2) - \Gamma_0^T E[X_1 X_1^T]\Gamma_0\\
\end{aligned}
$$

---

## Bond and Stock Hedge

* Martingale $M_j = (1, S_j D_j)$.
* Prices $X_j = (1/D_j, S_j)$ and zero cash flows.
* Trades $\Gamma_j = (M_j, N_j)$
* First trade $V_0 = M_0 + N_0 S_0$ so $M_0 = V_0 - N_0 S_0$.
* Amounts $A_j = -\Gamma_j\cdot X_j = -M_j/D_j - N_j S_j$.
* For $0 < j < n$, $A_j = 0$ so $M_j = -N_j S_j D_j$.
* $M_n = -\sum_{j<n} M_j$ and $N_n = -\sum_{j<n} N_j$.

---

## Final Amount

$$
\begin{aligned}
A_n &= - M_n/D_n - N_n S_n\\
    &= (\sum_{j<n} M_j)/D_n + (\sum_{j<n} N_j) S_n\\
    &= V_0/D_n + (\sum_{j<n} -N_j S_j D_j)/D_n + (\sum_{j<n} N_j) S_n\\
    &= V_0/D_n + \sum_{j<n} N_j(S_n - S_j D_j/D_n)\\
\end{aligned}
$$

---

## Least Squares Hedge

* Minimize over $(N_j)_{j<n}\in\oplus_{j \lt n} L^2(\Omega,P,\mathcal{A}_j)$

$$
E[A_n - V_0/D_n - \sum_{j<n} N_j(S_j D_j/D_n - S_n)]^2
$$

* Solution:

$$
N_j = \frac{E_j[(A_n - V_0/D_n)(S_j D_j/D_n - S_n)]}{E_j(S_j D_j/D_n - S_n)^2}
$$

* Minimum:

$$
E(A_n - V_0/D_n)^2 - \sum_{j<n} \frac{E[(A_n - V_0/D_n)(S_j D_j/D_n - S_n)]^2}{E(S_j D_j/D_n - S_n)^2}
$$

---

## Cash Deposits

* $CD(r,u)$ has price $X_0 =1$ and $C_u = 1 + ru$.
* It is a zero coupon bond a with different quoting convention.
* $r = (1/D_0(u) - 1)/u$

---

# Algebras of Sets

* An _algebra_ is a collection of subsets of a set.

* The subsets are called _events_.

* Algebras contain 

    * the empty set,
    * the complement of any set in the algebra,
    * the union of any two sets in the algebra.

---

## Mathematical Definition

* An _algebra_ on $\Omega$ is a subset of the powerset $\mathcal{P}(\Omega) = \{E\mid E\subseteq\Omega\}$
such that

  * The empty set $\emptyset\in\mathcal{A}$
  * $E\in\mathcal{A}$ implies $E^c=\Omega\setminus E\in\mathcal{A}$
  * $E,F\in\mathcal{A}$ implies $E\cup F\in\mathcal{A}$

---

## Corollaries

* An algebra $\mathcal{A}$ must satisfy

    * $\Omega = \emptyset^c\in\mathcal{A}$
    * $E,F\in\mathcal{A}$ implies $E\cap F\in\mathcal{A}$

* Given events $E$ and $F$ we can say &#8220;not $E$&#8221;, &#8220;$E$ or $F$&#8221;,
and &#8220;$E$ and $F$&#8221;.

* Mathematicians have a smaller vocabulary than pirates.

---

## Partitions

An _atom_ of an algebra is a set $A\in\mathcal{A}$ with the property
$B\subseteq A$ and $B\in\mathcal{A}$ implies $B = A$ or $B = \emptyset$.

A _partition_ of a set is a collection of disjiont subsets whos union is equal to the set.

If $\mathcal{A}$ is finite the atoms form a partition.

For $\omega\in\Omega$ let $A_\omega = \cap\{A\in\mathcal{A} : \omega\in A\}$.

The set $\{A_\omega : \omega\in\Omega\}$ is a partition.

---

## Partial Information

A partition is partial information.

Complete information is knowing exactly $\omega\in\Omega$.

No information is knowing only $\omega\in\Omega$.

Partial information is know what atom $\omega\in\Omega$ belongs to.

---

## Example (Random Walk)

$\Omega = [0,1)$.

$\Omega = C[0,\infty)$ $A_\omega$ is ...

---

## Mapping Math to Software

---
