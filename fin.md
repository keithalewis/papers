---
title: Fixed Income Notation
author: Keith A. Lewis
institute: KALX, LLC
classoption: fleqn
---
<div id="kalx"><a href="mailto:kal@kalx.net">kal@kalx.net</a></div>

The price of all fixed income instruments is determined by the short
rate process as defined in the [standard model](model.html).
In what follows $E_t X = E[X|\mathcal{A}_t]$ denotes conditional expectation
with respect to the algebra of information available at time $t$.

## Repurchase Agreement

A _repurchase agreement_ over time $t$ to $t + dt$ has price $X_t = 1$
and a single cash flow $C_{t+dt} = \exp(f_t\,dt) \approx 1 + f_t\,dt$
where $f_t$ is the _repo rate_.
Since $D_t = E_t \exp(f_t\,dt)D_{t + dt}$ we have $D_{t + dt}/D_t =
\exp(-f_t\,dt)$ if $D_t$ is predictable.  
Assuming $D_0 = 1$ then

$$
D_t = \exp(-\int_0^t f_s\,ds).
$$

This is the _canonical stochastic discount_. The repo rate is the
_(continuously compounded) instantaneous forward rate_.

## Zero Coupon Bond

A _zero coupon bond_ maturing at time $u$, denoted $D(u)$, has a single cash flow $C_u = 1$.
Its value at time $t$, $D_t(u)$, satisfies $D_t(u)D_t = E_t D_u$ so

$$
D_t(u) = E_t D_u/D_t = E_t exp(-\int_t^u f_s\,ds).
$$

Its value at time $0$ is $D_0(u) = E D_u$ which we also denote by $D(u)$.

Define the _forward_ at time $t$ by, $f_t(u)$, by 
$$
D_t(u) = \exp(-\int_t^u f_t(s)\,ds).
$$

Write $f(u) = f_0(u)$ for the forward at time 0, or simply the _foward_.

<!--
Note that $\lim_{t\nearrow u}f_t(u) = f_u$. ???
-->

## Cash Deposit

A _cash deposit_ maturing at time $u$ having coupon $c$ and day count fraction $\delta$
has a single cash flow $C_u = 1 + \delta c$. Its price at time $t$
is $(1 + \delta c)D_t(u)$. If its price at time 0 is 1 then $c = (1/D(u) - 1)/\delta$.

## Forward Rate Agreement

A _forward rate agreement_ with coupon $f$ over the interval from $u$
to $v$ with day count basis $\delta$, denoted $F^\delta(u,v)$, has two cash flows,
$C_u = -1$ and $C_v = 1 + \delta(u,v) f$.
The coupon value making the price at time $t$ equal to 0, $F_t^\delta(u,v)$,
is called the _forward rate_ at time $t$. 
It satisfies $0 = E_t[-D_u + (1 + \delta(u,v)F_t^\delta(u,v))D_v]$
so

$$
F_t^\delta(u,v) = (D_t(u)/D_t(v) - 1)/\delta(u,v).
$$

A useful formula is
$$
\begin{aligned}
E_u[\delta(u,v) F^{\delta}(u,v) D_v] &= \delta(u,v) F^{\delta}(u,v) E_u[D_v] \\
&= (1/D_u(v) - 1) D_u(v)D_u \\
&= E_u[D_u - D_v] \\
\end{aligned}
$$


<!--
$\lim_{u\nearrow v} F_t(u,v) = f_t(v)$. ??? if $\delta(u,v) = v - u$.
-->

## Caplet

A _caplet_ has a single cash flow $C_v = \delta(u,v)\max\{F^\delta_u(u,v) - k, 0\}$.

## Floorlet

A _floorlet_ has a single cash flow $C_v = \delta(u,v)\max\{k - F^\delta_u(u,v), 0\}$.
$$
\begin{aligned}
E\delta\max\{k - F^\delta_u(u,v), 0\} D_v
&= E E_u[\delta\max\{k - F^\delta_u(u,v), 0\} D_v]\\
&= E \delta\max\{k - F^\delta_u(u,v), 0\} E_u[D_v]\\
&= E \max\{\delta k - (1/D_u(v) - 1), 0\} D_u(v) D_u\\
&= E \max\{\delta k D_u(v) - (1 - D_u(v)), 0\} D_u\\
&= E \max\{(\delta k + 1)D_u(v) - 1, 0\} D_u\\
&= D(u) E \max\{(1 + \delta k)D_u(v)e^\gamma - 1, 0\}\\
\end{aligned}
$$
where $\gamma = \Cov(\log D_u(v), \log D_u)$.

## Interest Rate Swap

An _interest rate swap_ is specified by _calculation dates_, $t_0 <
t_1 < \cdots < t_n$, a _coupon_, $c$, and a day count basis, $\delta$.
It has cash flows
$C_{t_0} = -1$,
$C_{t_j} = \delta(t_{j-1},t_j)c$ for $0 < j < n$, and
$C_{t_n} = 1 + \delta(t_{n-1},t_n)c$.

The coupon making the price at time $t$ equal to 0,
$F_t^\delta(t_0,\ldots,t_n)$, is called the _par coupon_ at time $t$.
It satisfies

$$
F_t^\delta(t_0,\ldots,t_n) = (D_t(t_0) - D_t(t_n))/\sum_{j=1}^n \delta(t_{j-1},t_j)D_t(t_j).
$$

A _payer_ swap pays fixed amounts versus prevailing floating rates. It has cash flows
$C_{t_j} = \delta(t_{j-1},t_j)[c - F^\delta_{t_{j-1}}(t_{j-1},t_j)]$, $0 < j \le n$.
Note our useful formula shows

$$
\begin{aligned}
E_t \sum_{j=1}^n \delta(t_{j-1},t_j) F^\delta_{t_{j-1}}(t_{j-1},t_j)  D_{t_j}
&= E_t \sum_{j=1}^n E_{t_{j-1}}[D_{t_{j-1}} - D_{t_j}]\\
&= E_t [\sum_{j=1}^n D_{t_{j-1}} - D_{t_j}]\\
&= E_t [D_{t_0} - D_{t_n}]\\
&= [D_t(t_0) - D_t(t_n)]D_t\\
\end{aligned}
$$

## Cap

A _cap_ is a sequence of caplets.

## Floor

A _floor_ is a sequence of floorlets.

## Swaption

A _swaption_ is an option on a swap.
