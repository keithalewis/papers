---
title: Normal Pertubations
author: Keith A. Lewis
copyright: © 2019 Keith A. Lewis
abstract: |
	There is a simple formula for calculating the cumulative
	distribution function of random variables that are
	perturbations of normal random variables.
...

\begin{align*}
\hat{\psi}(u) &= E[\exp(-iuX)]\\
	&= \exp(\kappa(-iu))\\
	&= \exp(\sum_{n>0}\kappa_n (-iu)^n/n!)\\
	&= \exp(-u^2/2)\exp(\sum_{n\ge 3}\kappa_n (-iu)^n/n!)\\
	&= \hat{\phi}(u)\exp(\sum_{n\ge 3}\kappa_n (-iu)^n/n!)\\
	&= \hat{\phi}(u)(\sum_{n\ge 0} B_n(0,0,\kappa_3,\ldots,\kappa_n)(-iu)^n/n!)\\
	&= \hat{\phi}(u)(1 + \sum_{n\ge 3} B_n(0,0,\kappa_3,\ldots,\kappa_n)(-iu)^n/n!)\\
	&= \hat{\phi}(u) + \sum_{n\ge 3} B_n(\kappa_1,\ldots,\kappa_n)(-1)^n\widehat{\phi^{(n)}}(u)/n!\\
\end{align*}
Taking inverse Fourier transforms yields
$$
\psi(x) = \phi(x) + \sum_{n\ge 3} B_n(0,0,\kappa_3,\ldots,\kappa_n)(-1)^n{\phi}^{(n)}(x)/n!.
$$
Integrating gives
\begin{align*}
\Psi(x) &= \Phi(x) + \sum_{n\ge 3} B_n(0,0,\kappa_3,\ldots,\kappa_n)(-1)^n{\phi}^{(n-1)}(x)/n!\\
	    &= \Phi(x) - \phi(x)\sum_{n\ge 3} B_n(0,0,\kappa_3,\ldots,\kappa_n)H_{n-1}(x)/n!\\
\end{align*}

## Cumulants

$B_n(a\x_1,...,a^n x_n) = a^n B_n(x_1,...,x_n)$.

$B_n(x_1 + y_1, ..., x_n + y_n) = \sum_{k=0}^n \binom{n,k} B_k(x_1,...,x_k)
B_{n-k}(y_1,...,y_{n-k})$.

## Remarks

The Hermite polynomials can be expressed using Bell polynomials, $H_n(x) = B_n(x,1,0,\ldots,0)$.

\begin{align*}
	B_1(0) &= 0\\
	B_2(0,0) &= 0\\
	B_3(0,0,\kappa_3) &= \kappa_3\\
	B_4(0,0,\kappa_3,\kappa_4) &= \kappa_4\\
	B_5(0,0,\kappa_3,\kappa_4,\kappa_5) &= \kappa_5\\
	B_6(0,0,\kappa_3,\kappa_4,\kappa_5,\kappa_6) &= 10\kappa_3^2 + \kappa_6\\
	B_7(0,0,\kappa_3,\kappa_4,\kappa_5,\kappa_6,\kappa_7) &= 35\kappa_3\kappa_4 + \kappa_7\\
\end{align*}

