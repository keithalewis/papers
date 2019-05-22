---
title: Dual Numbers
author: Keith A. Lewis
copyright: © 2019 Keith A. Lewis
classoption: fleqn
abstract: |
	Compute derivatives to machine precision.
...

# Dual Numbers

It is possible to compute derivatives to machine precision without using
difference quotients or automatic differentiation. Suppose there were a
"number" $\epsilon$ such that $\epsilon\not=0$ but $\epsilon^2 = 0$. If
$f$ is differentiable at $x$ then $f(x + \epsilon) = f(x) + f'(x)\epsilon$
using the Taylor series expansion. For example, if $f(x) = x^2$ then $(x +
\epsilon)^2 = x^2 + 2x\epsilon$ so $f'(x) = 2x$.

There is such a "number": $\epsilon = \begin{bmatrix}0&1\\0&0\end{bmatrix}$.
If we let $J_n$ be the $n\times n$ matrix having $i,j$ entry $\delta_{i+i,j}$
then $J_n^k$ has $i,j$ entry $\delta_{i+k,j}$, so $J_n^k\not=0$ for $k < n$
and $J^k=0$ for $k\ge n$. This allows us to compute the first $n-1$ derivatives
of a function.

It is also possible to compute mixed derivatives to machine precision.
Let $J_{n,m}$ have $i,j$ entry $\delta_{i+1,j}$, $0\le i < n$, $0\le j < m$.
Given $n_1,n_2,...$,
consider the block matrix have $i,j$ block entry $J_{n_i,n_j}$. Note this is
a square matrix having $n_1 + n_2 + \cdots$ rows and columns.
