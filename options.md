---
title: European Option Pricing
author: Keith A. Lewis
classoption: fleqn
copyright: © 2019 Keith A. Lewis
abstract: |
	We demonstrate an explicit formula for pricing any European option
	in terms of the standard normal distribution and cumulants
	using Bell and Hermite polynomials.
...

An European option pays some function of the underlying instrument value at expiration.
Let $F$ be the (random) value of an instrument at option expiration and $g$ be the
payoff function. The forward value of the option is $E[g(F)]$.
Any piecewise linear, continuous function can be approximated by a cash position,
a forward contract and a linear combination of puts and calls.
We demonstrate an explicit formula for puts and calls in terms of the standard
normal distribution and cumulants using Bell and Hermite polynomials.

## Puts and Calls

A put has payoff $p(x) = \max\{k - x, 0\} = (k - x)^+$ and a call has payoff
$c(x) = (x - k)^+$.

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

__Exercise__. Derive this formula.

The Black model uses $F = f\exp(\sigma B_t - \sigma^2 t/2)$ where $B_t$ is standard
Brownian motion. Note $F \le k$ is equivalent to
$B_t/\sqrt{t} \le (\sigma^2 t/2 + \log k/f)/\sigma\sqrt{t}$.
The right-hand side of the last inequality is often called $-d_2$
and the probability that the inequality holds is $\Phi(-d_2)$ where $\Phi$ is the standard
normal cumulative density function.
For any normally distributed random variable, $N$, we have
$E[\exp(N)] = \exp(E[N] + \Var(N)/2)$ and
$E[\exp(N) f(N)] = E[\exp(N)] E[f(N + \Var(N))]$.

_Exercise._ Show $P^*(F\le k) = E[e^{\sigma B_t - \sigma^2 t/2}1(F\le k)]
= P(Fe^{\sigma^2 t} \le k)$.

__Exercise__. Show $P^*(F\le k) = \Phi(-d_1)$
where $d_1 = d_2 + \sigma\sqrt{t}$.


## Cumulant

The _cumulant_ of a random variable $X$ is $\kappa^X(s) = \kappa(s) = \log E[\exp(sX)]$
and the _cumulants_ are the coefficients in the power series expansion
$\kappa(s) = \sum_{n>0} \kappa_n s^n/n!$.

Note $\kappa(0) = 0$, $\kappa'(0) = \kappa_1 = E[X]$,
and $\kappa''(0) = \kappa_2 = \Var X$.

__Exercise__. Prove this.

__Exercise__. If $c$ is constant show $\kappa_n^{cX} = c^n\kappa_n$.

__Exercise__. If $X$ and $Y$ are independent show $\kappa_n^{X+Y} = \kappa_n^X + \kappa_n^Y$.

Define $X = z(F) = (\kappa(s) + \log F/f)/s$, so
$F = f\exp(sX - \kappa(s))$.  Note $E[F] = f$ and $\Var(\log F) = s^2\Var(X)$.

__Exercise__. Prove this.

The Black model takes $X$
standard normal and $s = \sigma\sqrt{t}$. In this case the cumulant of $X$
is $s^2/2$ so all cumulants are zero except the second $\kappa_2 = 1$.

__Exercise__. Use $E\exp(N) = \exp(E[N] + \Var(N)/2)$ for any normally distributed
random variable $N$ to prove this.

We can and do assume $X$ has mean $0$ and variance $1$ as in the Black model.

__Exercise__. Show $f\exp(s(\sigma X + \mu) - \kappa^{\sigma X+\mu}(s))
= f\exp(s^*X - \kappa^X(s^*))$ where $s^* = \sigma s$.

__Exercise__. Show if $X$ is Poisson with parameter $\lambda$, i.e.,
$P(X = k) = e^{-\lambda} \lambda^k/k!$, $k = 0, 1$, \ldots, then
$\kappa_n = \lambda$ for all $n$.

Note $F/E[F] = e^{sX - \kappa(s)}$ and define $P^*$ as above by $dP^*/dP = e^{sX - \kappa(s)}$.

__Exercise__. If $X^*$ is the random variable defined by $P(X^*\le x) = P^*(X\le x)$ show
the cumulant of $X^*$ is $\kappa^*(u) = \kappa(u + s) - \kappa(s)$.

__Exercise__. Show $(\kappa^*)^{(n)}(0) = \kappa^n(s)$ for derivatives $n > 0$.

__Exercise__. Show the cumulants of $X^*$ are $\kappa^*_n = \sum_{k = 0}^\infty \kappa_{n+k} s^k/k!$.

In particular, $E[X^*] = \kappa'(s)$ and $\Var(X^*) = \kappa''(s)$.

__Exercise__. Show that if $X$ is stanard normal then $X^*$ is normal with mean $s$ and variance 1.

__Exercise__. Show that if $X$ is Poisson with parameter $\lambda$ then $X^*$ 
is Poisson with parameter $\lambda e^s$.

## Bell polynomials

The (complete) Bell polynomials $B_n(\kappa_1,\ldots,\kappa_n)$
are defined by $B_0 = 1$ and

\begin{align*}
	B_{n+1}(\kappa_1,\ldots,\kappa_{n+1})
		= \sum_{k=0}^n {{n}\choose{k}}B_{n-k}(\kappa_1,\ldots,\kappa_{n-k}) \kappa_{k+1}
\end{align*}

for $n > 0$. They satisfy

\begin{align*}
	\exp\bigl(\sum_{n>0}\kappa_n s^n/n!\bigr) = \sum_{n\ge0} B_n(\kappa_1,\ldots,\kappa_n) s^n/n!
\end{align*}

Differentiation both sides with respect to $s$
and and equating terms of equal power gives the recursive definition.

Note $B_1(\kappa_1) = \kappa_1$ and $B_2(\kappa_1,\kappa_2) = \kappa_1^2 + \kappa_2$.

The _reduced Bell polynomials_, $b_n(\kappa_1,\ldots,\kappa_n) = B_n(\kappa_1,\ldots,\kappa_n)/n!$
satisfy the recursion

\begin{align*}
	b_{n+1}(\kappa_1,\ldots,\kappa_{n+1})
		= \frac{1}{n + 1}\sum_{k=0}^n b_{n-k}(\kappa_1,\ldots,\kappa_{n-k}) \kappa_{k+1}/k!
\end{align*}

__Exercise__. Prove this.

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

__Exercise__. Prove this.

By induction, $\widehat{\psi^{(n)}}(u) = (iu)^n\hat{\psi}(u)$.

Let $\phi(x) = \exp(-x^2/2)/\sqrt{2\pi}$ be the standard normal density
function and let $\psi(x)$ be the probability density function of $X$.
Note $\hat{\phi}(u) = \phi(u)$.

## Cumulative distribution

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

The value of a put is $E[(k - F)^+] = kP(X \le z) - fP^*(X \le z)$ where
$z = (\kappa(s) + \log(k/f))/s$, and $\kappa$ is the cumulant of $X$.
We can use the formula above to calculate $P(X\le z) = \Psi(z)$.

To compute $P^*(X\le z) = P(X^* \le z)$ we normalize $X^*$ to have mean 0
and variance 1. As we have shown above,
$E[X^*] = (\kappa^*)'(0) = \kappa'(s) = \mu$ and
$\Var(X^*) = (\kappa^*)''(0) = \kappa''(s) = \sigma^2$.
Let $\bar{X} = (X^* - \mu)/\sigma$ then
$\bar{\kappa}(u) = \kappa^*(u/\sigma)  - \mu s/\sigma
= \kappa(u/\sigma + s) - \kappa(s)  - \mu s/\sigma$.

Note $\bar{\kappa}_1 = \kappa'(s)/\sigma - \mu/\sigma = 0$
and $\bar{\kappa}_2 = \kappa''(s)/\sigma^2 = 1$, as expected.
For $n > 2$, $\bar{\kappa}_n = \kappa_n^*/\sigma^n$.
Using these to compute $\bar{\Psi}$ as above,
$P^*(X\le z) = \bar{\Psi}((z - \mu)/\sigma)$.

We can now value puts and calls using the standard normal distribution, cumulants,
Bell, and Hermite polynomials.

## Carr-Madan Formula

If $f\colon\mathbf{R}\to\mathbf{R}$ has a piecewise continuous second derivatve, then
\begin{align*}
f(x) = f(a) + f'(a)(x-a) + \int_{-\infty}^a (k - x)^+ f''(k)\,dk + \int_a^\infty (x - k)^+ f''(k)\,dk.
\end{align*}
Note this formula holds for $x = a$. Taking a derivative with respect to $x$ yields
\begin{align*}
f'(x) &= f'(a) + \int_{-\infty}^a -1(x \le k) f''(k)\,dk + \int_a^\infty 1(x \ge k) f''(k)\,dk\\
      &= f'(a) - \int_{\min\{x, a\}}^a f''(k)\,dk + \int_a^{\max\{x,a\}} f''(k)\,dk\\
\end{align*}
Note this formula holds for $x = a$. Taking a derivative with respect to $x$ yields
\begin{align*}
f''(x) = f''(x)1(x < a) + f''(x)1(x > a)(k)
\end{align*}
for $x\not= a$. Note the left and right limits as $x\to a$ equal $f''(a)$.
This proves the original formula is valid.

The formula shows how to approximate any continuous payoff with a cash position, a forward
contract, a portfolio of puts, and a portfolio of calls.

## Remarks

If the payoff function has jumps, digital options can be used to replicate.

The Hermite polynomials can be expressed using Bell polynomials, $H_n(x) = B_n(x,1,0,\ldots,0)$.

The first seven Bell polynomials with $\kappa_1 = \kappa_2 = 0$ are
\begin{align*}
	B_1(0) &= 0\\
	B_2(0,0) &= 0\\
	B_3(0,0,\kappa_3) &= \kappa_3\\
	B_4(0,0,\kappa_3,\kappa_4) &= \kappa_4\\
	B_5(0,0,\kappa_3,\kappa_4,\kappa_5) &= \kappa_5\\
	B_6(0,0,\kappa_3,\kappa_4,\kappa_5,\kappa_6) &= 10\kappa_3^2 + \kappa_6\\
	B_7(0,0,\kappa_3,\kappa_4,\kappa_5,\kappa_6,\kappa_7) &= 35\kappa_3\kappa_4 + \kappa_7\\
\end{align*}

