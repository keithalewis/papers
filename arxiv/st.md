---
title: Separation Theorems
author: Keith A. Lewis
institute: KALX, LLC
classoption: fleqn
fleqn: true
thanks: |
	Thanks.
---

## Domination

Let $V$ be a vector space and $P\subseteq V$ be a cone. We say $v^*\in V^*$ is
$P$-_positive_ if $\langle p, v^* \rangle\ge0$ for all $p\in P$.
If $\Lambda\subseteq V^*$ is a subset of $P$-positive linear functionals we
say $x$ $\Lambda$-_dominates_ $y$, $x,y\in V$ if
$\langle x, \lambda\rangle\ge \langle y, \lambda\rangle$ for all $\lambda\in\Lambda$.

This generalized the notion of stochastic dominance. Let $V = L^1(\mathbf{R}, P)$ for some probability
measure $P$ on the real line and $\lambda_x = 1_{[x, \infty)}\in L^\infty(\mathbf{R}, P)$ for $x\in\mathbf{R}$.
In this case $\{\lambda_x:x\in\mathbf{R}\} dominance is the same as first-order stochastic dominance.

A random variable $X$ _(first-order) stochastically dominates_ the random variable $Y$ if
$P(X\le z) \le P(Y\le z)$ for all $z\in\bm{R}$. Since $P(X\le x) = E[1_{(-\infty,x]}(X)]$ and
every non-negative, non-decreasing function can be approximated uniformly by
$\sum_i a_i 1_{(-\infty,x_i]}$ this is equivalent to $E[u(X)] \le E[u(Y)]$ for all such functions $u$.
