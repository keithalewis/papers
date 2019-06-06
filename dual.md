---
title: Machine Precision Derivatives
author: Keith A. Lewis
copyright: © 2019 Keith A. Lewis
classoption: fleqn
abstract: |
	This note demonstrates a method for computing mixed partial derivatives to machine precision.
...

Functions on numbers can be extended to functions on linear operators using a _functional calculus_.
If $T\colon V\to V$ is a linear operator on the vector space $V$, then $p(T)\colon V\to V$ can
be defined in an obvious way for any polynomial $p$.

This can be extended to functions that are defined by a power series if
$T$ belongs a Banach space.  If $f(x) = \sum_{n\ge0} f^{(n)}(x) x^n/n!$
and $\|T\|$ is less than the radius of convergence of the series, then
$f(T)$ is the limit of the power series.

This can be used to calculate derivatives to machine precision when
functions are implemented using generic numerical types.

## Prior work

Difference quotients.

Automatic Differentiation.

Dual Numbers.

## Single Variable Derivatives

Suppose there were a "number" $\epsilon$ such that $\epsilon\not=0$ but
$\epsilon^2 = 0$. If $f$ is differentiable at $x$ then, using the Taylor
series expansion,
$$
	f(x + \epsilon) = \sum_{k\ge0} f^{(k)}(x)\epsilon^k/k!  = f(x) + f'(x)\epsilon.
$$
For example, if $f(x) = x^2$ then $(x + \epsilon)^2 = x^2 + 2x\epsilon$
so $f'(x) = 2x$.

There is such a "number", the $2\times 2$ matrix $\epsilon =
\begin{bmatrix}0&1\\0&0\end{bmatrix}$.

Let $\epsilon_n$ be the $n\times n$ matrix having $i,j$
entry $\delta_{i+1,j}$, where $\delta_{i,j}$ is the Kronecker delta.
Using the definition of matrix multiplication, $\epsilon^k$ has
$i,j$ entry $\delta_{i+k,j}$.
It is true that $(\epsilon_n^k)$ are linearly independent for $0\le k < n$ and
$\epsilon^k=0$ for $k\ge n$. This allows us to compute derivatives
up to order $n$.

## Multiple Variable Derivatives

It is also possible to compute mixed derivatives to machine precision.
Suppose $f\colon\mathbf{R}^n\to\mathbf{R}$. The Taylor series expansion is
$$
	f(x + \epsilon) = \sum_{k\ge0} \sum_{|\alpha|=k} \frac{D^\alpha f(x)}{\alpha!}\epsilon^\alpha,
$$
where $x = (x_1,\ldots,x_n)$,
$\epsilon = (\epsilon_1,\ldots,\epsilon_n$),
$\alpha = (\alpha_1, \ldots, \alpha_n)$,
$|\alpha| = \alpha_1 + \cdots + \alpha_n$,
$D^\alpha f(x) = \partial^{|\alpha|}f(x_1,\ldots,x_n)/\partial^{\alpha_1} x_1\cdots\partial^{\alpha_n} x_n$,
$\alpha! = \alpha_1!\cdots\alpha_n!$,
and $\epsilon^\alpha = \epsilon_1^{\alpha_1}\cdots\epsilon_n^{\alpha_n}$,
a triumph of mathematical notation if there ever was one.

We can consider this
to be a function on the direct sum of $n$ copies of $\mathbf{R}$, $\mathbf{R}\oplus \cdots \oplus\mathbf{R}$,
by $f(x_1\oplus\cdots\oplus x_n) = f(x_1,\ldots,x_n)$.

To compute the partial derivatives of $x_i$ below order $k_i$
$\epsilon = \epsilon_{n_1}\oplus\cdots\oplus\epsilon_{n_k}$.



## NOTES

Apache Java math project and cite...
