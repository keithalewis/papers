---
title: Risky Bonds
author: Keith A. Lewis
copyright: © 2019 Keith A. Lewis
classoption: fleqn
abstract: |
	A simple model for the price of risky bonds.
...

Let $D^{T,R}(u)$ denote a zero coupon bond
maturing at $u$ issued by a company that defaults at time $T$ and pays
(proportional) recovery $R$ at default.  It has a payoff of $1$ at $u$
if $T > u$ and a payoff of $R$ at $T$ if $T\le u$, where $T$ and $R$
are random variables with $T\ge 0$ and $0\le R\le 1$.
A natural sample space for the random variables $T$ and $R$ is
$\Omega = [0,\infty)\times [0,1]$.

The value of this instrument at time $t$, $D_t^{T,R}(v)$, is determined by
$$
	D_t^{T,R}(v)D_t = E_t[\sum_{t<u\le v} R1(T = u)D_u + 1(T > v)D_v],
$$
where $D_t$ is a deflator.

Assuming rates are 0, so $D_t 1$, and $R$ is constant the only
random variable is the default time and the sample space is $\Omega =
[0,\infty)$.  There is a natural filtration $(\AA_t)_{t\ge0}$ associated
with any default time.  The atoms of $\AA_t$ are the singletons $\{s\}$
for $s < t$ and the set $[t,\infty)$: if default occurs prior to $t$ we
know exactly when it happened, otherwise all we know is default happened
at or after $t$. Note we do not have instantaneous knowledge of default
so $\{t\}$ is not an atom of $\AA_t$.

Under these assumptions
$$
	D_t^{T,R}(v) = R E_t[\sum_{t< u \le v} 1(T = u)] + E_t[1(T > v)].
$$

Recall that for a random variable, $X$, on $\langle\Omega, P,
\AA\rangle$, where $\AA$ is finite, we have $E_t[X](\omega) =
(XP)(A_\omega)/P(A_\omega)$ where $A_\omega$ is the atom of $\AA$
containing $\omega$. Note the conditional expectation is constant on
the atom and we define $0/0 = 0$.

For  $s < t$,
$$
E_t[1(T = u)](s) = [1(T = u) P](\{s\})/P(\{s\}) = 0
$$
when $u \in (t, v]$,
and if $s\ge t$ the atom containing $s$ is $[t,\infty)$ and
$$
E_t[1(T = u)](s) = [1(T = u) P]([t,\infty))/P([t,\infty)) = P(T = u)/P(T \ge t).
$$

For  $s < t$,
$$
E_t[1(T > v)](s) = [1(T > v) P](\{s\})/P(\{s\}) = 0,
$$
and if $s\ge t$,
$$
E_t[1(T > v)](s) = [1(T > v)P]([t,\infty))/P([t,\infty)) = P(T > v)/P(T\ge t).
$$

This shows
$$
D_t^{T,R}(v) = [R P(t < T \le v) + P(T > v)]1(T \ge t)/P(T\ge t).
$$

If $R$ is random this becomes
$$
D_t^{T,R}(v) = \bigl\{\int_{t+}^v E_t[R|T=u] dP(T\le u) + P(T > v)\bigl\}1(T \ge t)/P(T\ge t).
$$
