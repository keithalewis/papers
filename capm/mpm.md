---
title: MPM
author: Keith A. Lewis
institute: KALX, LLC
classoption: fleqn
fleqn: true
---

# Multi-period Model

Let $I$ be the set of _market instruments_.

Let $\Omega$ be the set of all possible _outcomes_.

Let $T$ be the totally ordered set of _trading times_.

Let $\mathcal{A}_t$ be the _partiton_ of $\Omega$ representing
information available at time $t\in T$.

Let $X_t\colon\mathcal{A}_t\to\mathbf{R}^I$ be the _prices_ of market
instruments at time $t$.

Let $C_t\colon\mathcal{A}_t\to\mathbf{R}^I$ be the _cash flows_ of market
instruments at time $t$.

A _trading strategy_ is a discrete sequence of increasing stopping times
$\tau_j$ and functions $\Gamma_j\colon\mathcal{A}_{\tau_j}\to\mathbf{R}^I$
specifing the number of _shares_ traded in each instruments at
$\tau_j$. For any stopping time $\tau$, $\mathcal{A}_{\tau}
= \{A_\tau(\omega) : \omega\in\Omega\}$ is the partition with atoms
$A_\tau(\omega) = \{\omega'\in\Omega : \tau(\omega') = \tau(\omega)\}$.

Define $\Delta_t = \sum_{\tau_j < t} \Gamma_j$ to be the _position_ at time $t$.
The notation $\Delta_t = \sum_{s<t} \Gamma_s$ means
$\Delta_t(\omega) = \sum_{\tau_j(\omega) < t} \Gamma_j(\omega)$.

Define $V_t = (\Delta_t + \Gamma_t)\cdot X_t$ to be the _value_ of the
position at time $t$.

Define $A_t = \Delta_t\cdot C_t - \Gamma_t\cdot X_t$ to be the
_amounts_ associated with trading $(\Gamma_t)_{t\in T}$.

A collection of trades is _closed out_ if $\sum_j\Gamma_j = 0$.
Note that if a strategy is closed out at time $t$ then
the value $V_u = 0$ for $u \ge t$.

There is a _model arbitrage_ if there is a closed out strategy with
$A_{\tau_0} > 0$ and $A_t \ge 0$ for $t > t_0$.

We assume all functions are bounded and write $B(\Omega)$ for
the Banach space of bounded functions on $\Omega$ under the
norm topology $\|f\| = \sup_{\omega\in\Omega} |f(\omega)|$.
We write $B(\mathcal{A})$ for the subspace of functions that
are constant on the atoms of $\mathcal{A}$.

The dual of $B(\mathcal{A})$ is the space of finitely additive
measures on $\mathcal{A}$, $ba(\mathcal{A})$.

There is no model arbitrage if and only if there exist positive
measures $\Pi_t$ on $\mathcal{A}_t$ with
$X_t\Pi_t = ((C_u + X_u)\Pi_u)|_{\mathcal{A}_t}$ for sufficiently small
$u > t$.

Such measures are called _deflators_ or _risk-neutral_.

## Appendix


