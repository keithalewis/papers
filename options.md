---
title: Option Pricing
author: Keith A. Lewis
copyright: © 2019 Keith A. Lewis
abstract: |
	There is a simple formula for pricing European puts and calls 
	in terms of cumulants.
...

Let $F$ be the (random) value of an instrument at option expiration.  The
(forward) value of a put option is the expected value of the payoff
\begin{align*}
E[\max\{k - F,0\}] &= E[(k - F)1(k - F\ge 0)]\\
	&= E[(k - F)1(F\le k)]\\
	&= kP(F\le k) - E[F 1(F\le k)]\\
	&= kP(F\le k) - E[F] E[1(F\le k) F/E[F]]\\
	&= kP(F\le k) - E[F] P^*(F\le k)\\
\end{align*}

where $P^*$ is the Esscher transform of the probability measure, i.e.,
its Radon-Nikodym derivative is $dP^*/dP = F/E[F]$.

The _cumulant_ of a random variable $X$ is $\kappa^X(s) = \log E[\exp(sX)]$
and the _cumulants_ are the coefficients in the power series expansion
$\kappa(s) = \sum_{n>0} \kappa_n s^n/n!$, where we write $\kappa(s)$
instead of $\kappa^X(s)$ when the random variable obvious.

Note $\kappa(0) = 0$, $\kappa'(0) = \kappa_1 = E[X]$,
and $\kappa''(0) = \kappa_2 = \Var X$.

Define $X = z(F) = (\kappa(s) + \log F/f)/s$, so
$F = f\exp(sX - \kappa(s))$.  Note $E[F] = f$. The Black model has $X$
standard normal and $s = \sigma\sqrt{t}$. In this case the cumulant of $X$
is $s^2/2$ so all cumulants are zero except the second $\kappa_2 = 1$.
We can and do assume $X$ has mean $0$ and variance $1$ as in the Black model.

_Exercise_. Show $f\exp(s(\sigma X + \mu) - \kappa^{\sigma X+\mu}(s))
= f\exp(s^*X - \kappa^X(s^*))$ where $s^* = \sigma s$.

The (complete) Bell polynomials $B_n(\kappa_1,\ldots,\kappa_n)$
are defined by $B_0 = 1$ and
$$
	B_{n+1}(\kappa_1,\ldots,\kappa_{n+1})
		= \sum_{k=0}^n {{n}\choose{k}}B_{n-k}(\kappa_1,\ldots,\kappa_{n-k})
		  \kappa_{k+1}
$$
for $n > 0$. They satisfy
$$
	\exp(\sum_{n>0}\kappa_n s^n/n!) = \sum_{n\ge0} B_n(\kappa_1,\ldots,\kappa_n)
		s^n/n!
$$
Differentiation both sides with respect to $s$
and and equating terms of equal power gives the recursive definition.

Note $B_1(\kappa_1) = \kappa_1$ and $B_2(\kappa_1,\kappa_2) = \kappa_1^2 + \kappa_2$.

The (probabalists') Hermite polynomials are defined by $H_0(x)
= 1$, $H_1(x) = x$, and $H_{n+1}(x) = x H_n(x) - n H_{n-1}(x)$ for $n \ge 1$.
They satisfy
$$
H_n(x) = (-1)^n e^{x^2/2} \frac{d^n}{dx^n} e^{-x^2/2}(x)
$$

Let $\phi(x) = \exp(-x^2/2)/\sqrt{2\pi}$ be the standard normal density
function and let $\psi(x)$ be the probability density function of $X$.
The Fourier transform of $\psi$ is $\hat{\psi}(u) = E[\exp(-iuX)]$.
Note $\hat{\phi}(u) = \phi(u)$. It is a general property of
Fourier transforms that $\widehat{\psi'}(u) = iu\hat{\psi}(u)$.

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
