---
title: European Option Pricing
author: Keith A. Lewis
classoption: fleqn
copyright: © 2019 Keith A. Lewis
abstract: |
	There is an explicit formula for pricing European options using cumulants.
...

An European option pays some function of the underlying instrument value at expiration.
Let $F$ be the (random) value of an instrument at option expiration and $g$ be the
payoff function. The forward value of the option is $E[g(F)]$.
Any piecewise linear, continuous function can be approximated by a cash position,
a forward contract and a linear combination of puts and calls.

## Puts and Calls

A put has payoff $p(x) = \max\{k - x, 0\} = (k - x)^+$ and a call has payoff
$c(x) = (x - k)^+$. Since $c(x) - p(x) = x - k$ we can calculate the call value
using the put value and a forward contract having the same strike.

If $F$ is lognormal then the standard Black-Scholes/Merton theory can be used to
value puts and calls. If $F$ is a perturbation of a lognormal random variable there is
an explicit formula for computing the option value using the cumulants of the perturbation.

Valuation formulas depend on the cumulative distribution function of $F$.
The forward value of a put option is the expected value of the payoff

\begin{align*}
E[(k - F)^+] &= E[(k - F)1(k - F\ge 0)]\\
	&= E[(k - F)1(F\le k)]\\
	&= kP(F\le k) - E[F 1(F\le k)]\\
	&= kP(F\le k) - E[F] E[1(F\le k) F/E[F]]\\
	&= kP(F\le k) - E[F] P^*(F\le k)\\
\end{align*}

where $P^*$ is the measure defined by $dP^*/dP = F/E[F]$.
I.e., $E^*[X] = E[X F/E[F]]$. Similarly, the value of a
call is $E[(F - k)^+] = E[F] P^*(F\ge k) - k P(F\ge k)$.

_Exercise_. Derive this formula.

## Cumulant

The _cumulant_ of a random variable $X$ is $\kappa^X(s) = \log E[\exp(sX)]$
and the _cumulants_ are the coefficients in the power series expansion
$\kappa^X(s) = \kappa(s) = \sum_{n>0} \kappa_n s^n/n!$.

Note $\kappa(0) = 0$, $\kappa'(0) = \kappa_1 = E[X]$,
and $\kappa''(0) = \kappa_2 = \Var X$.

_Exercise_. Prove this.

_Exercise_. If $c$ is constant show $\kappa_n^{cX} = c^n\kappa_n$.

_Exercise_. If $X$ and $Y$ are independent show $\kappa_n^{X+Y} = \kappa_n^X + \kappa_n^Y$.

Define $X = z(F) = (\kappa(s) + \log F/f)/s$, so
$F = f\exp(sX - \kappa(s))$.  Note $E[F] = f$ and $\Var(\log F) = s^2\Var(X)$.

_Exercise_. Prove this.

The Black model has $X$
standard normal and $s = \sigma\sqrt{t}$. In this case the cumulant of $X$
is $s^2/2$ so all cumulants are zero except the second $\kappa_2 = 1$.

_Exercise_. Use $E\exp(N) = \exp(E[N] + \Var(N)/2)$ for any normally distributed
random variable $N$ to prove this.

We can and do assume $X$ has mean $0$ and variance $1$ as in the Black model.

_Exercise_. Show $f\exp(s(\sigma X + \mu) - \kappa^{\sigma X+\mu}(s))
= f\exp(s^*X - \kappa^X(s^*))$ where $s^* = \sigma s$.

_Exercise_. Show if $X$ is Poisson with parameter $\lambda$, i.e.,
$P(X = k) = e^{-\lambda} \lambda^k/k!$, $k = 0, 1$, \ldots, then
$\kappa_n = \lambda$ for all $n$.

Note $F/E[F] = e^{sX - \kappa(s)}$ and define $P^*$ as above by $dP^*/dP = e^{sX - \kappa(s)}$.

_Exercise_. If $X^*$ is the random variable defined by $P(X^*\le x) = P^*(X\le x)$ show
the cumulant of $X^*$ is $\kappa^*(u) = \kappa(u + s) - \kappa(s)$.

_Exercise_. Show $(\kappa^*)^{(n)}(0) = \kappa^n(s)$ for derivatives $n > 0$.

_Exercise_. Show the cumulants of $X^*$ are $\kappa^*_n = \sum_{k = 0}^\infty \kappa_{n+k} s^k/k!$.

In particular, $E[X^*] = \kappa'(s)$ and $\Var(X^*) = \kappa''(s)$.

## Bell polynomials

The (complete) Bell polynomials $B_n(\kappa_1,\ldots,\kappa_n)$
are defined by $B_0 = 1$ and
$$
	B_{n+1}(\kappa_1,\ldots,\kappa_{n+1})
		= \sum_{k=0}^n {{n}\choose{k}}B_{n-k}(\kappa_1,\ldots,\kappa_{n-k}) \kappa_{k+1}
$$
for $n > 0$. They satisfy
$$
	e^{\sum_{n>0}\kappa_n s^n/n!} = \sum_{n\ge0} B_n(\kappa_1,\ldots,\kappa_n) s^n/n!
$$
Differentiation both sides with respect to $s$
and and equating terms of equal power gives the recursive definition.

Note $B_1(\kappa_1) = \kappa_1$ and $B_2(\kappa_1,\kappa_2) = \kappa_1^2 + \kappa_2$.

The _reduced Bell polynomials_, $b_n(\kappa_1,\ldots,\kappa_n) = B_n(\kappa_1,\ldots,\kappa_n)/n!$
satisfy the recursion
$$
	b_{n+1}(\kappa_1,\ldots,\kappa_{n+1})
		= \frac{1}{n + 1}\sum_{k=0}^n b_{n-k}(\kappa_1,\ldots,\kappa_{n-k}) \kappa_{k+1}/k!
$$

## Hermite polynomials

The (probabalists') Hermite polynomials are defined by $H_0(x)
= 1$, $H_1(x) = x$, and $H_{n+1}(x) = x H_n(x) - n H_{n-1}(x)$ for $n \ge 1$.
They satisfy
$$
\frac{d^n}{dx^n} e^{-x^2/2}(x) = (-1)^n H_n(x) e^{-x^2/2} 
$$

## Fourier transform

The Fourier transform of $\psi$ is $\hat{\psi}(u) = E[\exp(-iuX)]$.
It is a general property of
Fourier transforms that $\widehat{\psi'}(u) = iu\hat{\psi}(u)$.

_Exercise_. Prove this.

Let $\phi(x) = \exp(-x^2/2)/\sqrt{2\pi}$ be the standard normal density
function and let $\psi(x)$ be the probability density function of $X$.
Note $\hat{\phi}(u) = \phi(u)$.

## Cumulative distribuiton

This section shows how to compute the cumulative distribution of a perturbation
of a standard normal random variable.

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

The value of a put is $E[(k - F)^+] = k\Psi(z) - f\Psi^*(z)$ where
$z = (\kappa(s) + \log(f/F))/s$ and $\Phi^*$ is the formula above with
$\kappa_n$ replaced with $\kappa_n^*$.

## Remarks

The Hermite polynomials can be expressed using Bell polynomials, $H_n(x) = B_n(x,1,0,\ldots,0)$.

The first seven Bell polynomials with $k_1 = k_2 = 0$ are
\begin{align*}
	B_1(0) &= 0\\
	B_2(0,0) &= 0\\
	B_3(0,0,\kappa_3) &= \kappa_3\\
	B_4(0,0,\kappa_3,\kappa_4) &= \kappa_4\\
	B_5(0,0,\kappa_3,\kappa_4,\kappa_5) &= \kappa_5\\
	B_6(0,0,\kappa_3,\kappa_4,\kappa_5,\kappa_6) &= 10\kappa_3^2 + \kappa_6\\
	B_7(0,0,\kappa_3,\kappa_4,\kappa_5,\kappa_6,\kappa_7) &= 35\kappa_3\kappa_4 + \kappa_7\\
\end{align*}

If $f\colon\mathbf{R}\to\mathbf{R}$ has a piecewise continuous second derivatve, then
$$
f(x) = f(a) + f'(a)(x-a) + \int_{-\infty}^a (k - x)^+ f''(k)\,dk + \int_a^\infty (x - k)^+ f''(k)\,dk.
$$

## Remarks

If the payoff function has jumps, digital options can be used to replicate it.
