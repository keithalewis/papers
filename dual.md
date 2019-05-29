---
title: Machine Precision Derivatives
author: Keith A. Lewis
copyright: © 2019 Keith A. Lewis
classoption: fleqn
abstract: |
	This note demonstrates a method for computing mixed partial derivatives to machine precision.
...

## Prior work

Difference quotients problems

AD

Dual Numbers.

## Single Variable Derivatives

Suppose there were a "number" $\epsilon$ such that $\epsilon\not=0$ but
$\epsilon^2 = 0$. If $f$ is differentiable at $x$ then, using the Taylor
series expansion, $f(x + \epsilon) = f(x) + f'(x)\epsilon + (1/2!)f''(x)
\epsilon^2 + \cdots = f(x) + f'(x)\epsilon$.  For example, if $f(x) =
x^2$ then $(x + \epsilon)^2 = x^2 + 2x\epsilon$ so $f'(x) = 2x$.

There is such a "number", the $2\times 2$ matrix $\epsilon =
\begin{bmatrix}0&1\\0&0\end{bmatrix}$.

If we let $\epsilon_n$ be the $n\times n$ matrix having $i,j$ entry
$\delta_{i+i,j}$ then $\epsilon_n^k$ has $i,j$ entry $\delta_{i+k,j}$,
so $\epsilon_n^k\not=0$ for $k < n$ and $\epsilon^k=0$ for $k\ge n$. This
allows us to compute the first $n-1$ derivatives of a function using
its Taylor expansion.

## Multiple Variable Derivatives

It is also possible to compute mixed derivatives to machine precision.
Let $\epsilon_{n,m}$ have $i,j$ entry $\delta_{i+1,j}$, $0\le i < n$, $0\le j < m$.

## NOTES

Apache Java math project and cite...
