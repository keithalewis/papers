---
title: Risky Bonds
author: Keith A. Lewis
copyright: © 2019 Keith A. Lewis
abstract: |
	A simple model for the price of risky bonds.
...

Consider an instument, denoted $D^{T,R}(u)$, that is a zero coupon bond
maturing at $u$ issued by a company that defaults at time $T$ and pays
(proportional) recovery $R$ at default.  It has a payoff of $1$ at $u$
if $T > u$ and a payoff of $R$ at $T$ if $T\le u$, where $T$ and $R$
are random variables with $T\ge 0$ and $0\le R\le 1$.

The value of this instrument at time $t$, $D_t^{T,R}(u)$, is determined by
$$
	D_t^{T,R}(u)D_t = E_t[\sum_{t<s\le u} R1(T = s)D_s + 1(T\ge u)D_u].
$$

A natural sample space for the random variables $T$ and $R$ is
$\Omega = [0,\infty)\times [0,1]$. Let $F^{T,R}$ be the joint 
cumulative distribution and $F^T$, $F^R$ be the marginals.

Assuming $R$ is constant we can use $\Omega = [0,\infty)$
and write $F^T(t) = F(t) = P(T\le t)$ for the cumulative distribution.
There is a natural filtration $(\AA_t)_{t\ge0}$ associated
with any default time.
The atoms of $\AA_t$ are the singletons $\{s\}$ for $s < t$
and the set $[t,\infty)$: if default occurs prior to $t$ we
know exactly when it happened, otherwise all we know is
default happened at or after $t$. Note we do not have
instantaneous knowledge of default so $\{t\}$ is not an atom
of $\AA_t$.

Under these assumptions
$$
	D_t^{T,R}(u) = R E_t[\sum_{t<s\le u} 1(T = s)] + E_t[1(T\ge u)].
$$
We can compute $E_t[1(T = s)]$ and $E_t[1(T\ge u)]$
using $E_t[X](P|_\AA) = (XP)|_{\AA_t}$ and evaluating on atoms.
For a singleton $\{s'\}$ with $t < s' \le u$,
$(\sum_{t<s\le u} 1(T = s)P)(\{s'\})
