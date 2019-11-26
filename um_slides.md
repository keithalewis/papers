---
title: The Unified Model
subtitle: How to model **all** derivative securities
theme: white
previewLinks: true
transition: 'fade'
hash: true

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

* Same as a barrier option that knocks in/out the first time.

* Same as a barrier option that knocks in/out the millionth time
it hits the barrier.

* __CORRECT, BUT USELESS__

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
: Vector of prices at time $t$ indexed by available market instruments.

Cash Flows $(C_t)$
: Vector of cash flows associated with holding instruments, e.g.,
stock dividends, bond coupons.

---

## Trading and Position

Trades $(\tau_j,\Gamma_j)$
: Increasing stopping times and corresponding vector
of shares traded in each instrument at $\tau_j$.

Position $(\Delta_t$)
: Trades accumulate to a position $\Delta_t = \sum_{\tau_j < t} \Gamma_j = \sum_{s < t} \Gamma_s$.

---

## Value and Amount

Value $(V_t)$
: The marked-to-market value of position and the last trade $V_t = (\Delta_t + \Gamma_t)\cdot X_t$.  
The last trade is not included in the position.

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
exist a positive, adapted _deflator_ $(D_t)$ such that price and cash flow satisfy

>  $X_t D_t = E_t[X_u D_u + \sum_{t < s \le u} C_s D_s].$

* If $C_t = 0$ then $X_tD_t$ is a martingale.

* As $u\to\infty$ price is discounted future cash flows.

---

## Derivative Pricing

With value and amount as defined above,

> $V_t D_t = E_t[V_u D_u + \sum_{t < s \le u} A_s D_s].$

* Note how value corresponds to price and amount corresponds to cash flow.

<!--
[text]{.class key="value"}
-->

---

## Discrete Time

Trading times are discrete $T = \{t_0, t_1, \ldots\}$.  
Price and cash flow satisfy

> $X_j D_j = E_j[(X_{j+1} + C_{j+1}) D_{j+1}]$

for all $j$ where $X_j = X_{t_j}$, etc.  
Value and amount satisfy

> $V_j D_j = E_j[(V_{j+1} + A_{j+1}) D_{j+1}]$


---

## Lemma.

Let $V = V_j$, $V' = V_{j+1}$, etc.
so $\Delta + \Gamma = \Delta'$,
$V = (\Delta + \Gamma)\cdot X$, $A' = \Delta'\cdot C' - \Gamma'\cdot X'$,
and $XD = E[(X' + C')D']$

$V D = (\Delta + \Gamma)\cdot X D$  
$\ \ \ \ \ \ \ = \Delta'\cdot E[(X' + C') D']$  
$\ \ \ \ \ \ \ = E[(\Delta'\cdot X' + \Delta'\cdot C') D']$  
$\ \ \ \ \ \ \ = E[(\Delta'\cdot X' + \Gamma'\cdot X' + A') D']$  
$\ \ \ \ \ \ \ = E[(V'+ A') D']$  

---

## Models

Every arbitrage-free model is parameterized by a positive, adapted deflator $(D_t)$ and
a vector-valued martingale $(M_t)$.

> $X_t = (M_t - \sum_{s\le t} C_s D_s)/D_t$

> $E_t[X_u D_u + \sum_{t < s \le u} C_s D_s]$
> $\ \ = E_t[(M_u - \sum_{s\le u} C_s D_s) + \sum_{t < s \le u} C_s D_s]$
> $\ \ = E_t[M_u - \sum_{s\le t} C_s D_s]$
> $\ \ = M_t - \sum_{s\le t} C_s D_s = X_t D_t$

---

## Black-Scholes/Merton

Let $D_t = e^{-\rho t}$ and $M_t = (r, se^{\sigma B_t - \sigma^2 t/2})$ where
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

* Hence $R_t = \exp(f_t\,dt) \approx 1 + f_t\,dt$.

---

## Zero Coupon Bonds

* $Z(u)$ has one non-zero cash flow $C_u = 1$
* Price at $t$ satisfies $Z_t(u) D_t = E_t D_u$
* $Z_t(u) = \exp(-\int_t^u f_s\,ds)$
* Now we can price any fixed-income instrument.

---

## Risky Zero Coupon Bonds

* Default at $T$ with recovery $R$
* Cash flow $C_t = 1(T > u) + R1(T = u, t \le u)$
* Sample space $\Omega\times T$
* Algebras $\mathcal{A} \time \{\{t_0\}, \ldots, \{t_{j-1}\},\{t_j,\ldots\}\}$.

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
