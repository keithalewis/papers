---
title: European Option Pricing using Cumulants
author: Keith A. Lewis
institution: KALX, LLC and Columbia University
classoption: fleqn
---

<div id="kalx"><a href="mailto:kal@kalx.net">kal@kalx.net</a></div>

## Normal Distribution

If $N$ is a random variable having a normal distribution then $E\exp(N)
= \exp(E N + \Var(N)/2)$.


## Moments and Cumulants

The _moment generating function_ of the random variable $X$
is
$$
Ee^{sX} = \sum_{n=0}^\infty m_n s^n/n!
$$
where $m_n = EX^n$ is the $n$-th moment.

The _cumulant_ (_generating function_) of the random variable $X$
is $\kappa^X(s) = \log Ee^{sX}$.
When they exist, the _cumulants_, $(\kappa_n)$,
are defined by
$$
\kappa(s) = \sum_{n=1}^\infty \kappa_n \frac{s^n}{n!}
$$

The moments and cumulants are related by _Bell polynomials_.
$$
\exp(\sum_{n=1}^\infty \kappa_n \frac{s^n}{n!})
= \sum_{n=0}^\infty B_n(\kappa_1,\ldots,\kappa_n) \frac{s^n}{n!}
$$
where $B_n(\kappa_1,\dots,\kappa_n)$ is the $n$-th complete
Bell polynomial.
This is just a special case of the
Fa\`a di Bruno formula first proved by Louis Fran\c{c}ois Antoine
Arborgast in 1800\cite{Arb1800}.
Bell polynomials satisfy the recurrence \cite{Com1974} $B_0 = 1$ and
$$
B_{n+1}(x_1,\dots,x_{n+1}) = \sum_{k=0}^n \binom{n}{k}
B_{n - k}(x_1,\dots, x_{n - k}) x_{k+1}.
$$

This is not a deep result. Just ...

Since the $n$-th derivative evaluated at $0$
satisfies $\kappa^{(n)}(s)|_{s = 0} = \kappa_n$ 
it is easy to
work out that
$\kappa_1 = EX$ and $\kappa_2 = \Var(X)$. Higher order
cumulants are less intuitive but the third and fourth are
related to skew and kurtosis. [Insert explicit formulas for 3 and 4 here!!!]

If $N$ is normal, $\kappa^N(s) = \log E \exp(sN) = \mu s +
\sigma^2 s^2/2$ where $\mu$ is the mean of $N$ and $\sigma$ is the
standard deviation.

<!--
The cumulants of a random variable plus a constant are the 
same except the first cumulant is increased by the constant.
More generally, the cumulants of the sum of two independent 
random variables are the sums of their cumulants.
They scale homogeneously, the $n$-th cumulant of a constant
times a random variable is
$\kappa_n(cX) = c^n\kappa_n(X)$.

## Bell Polynomials
The exponential of the cumulant in terms of
powers of $s$ is
$$
Ee^{sX} =  \exp(\sum_{n=1}^\infty \kappa_n \frac{s^n}{n!})
= \sum_{n=0}^\infty B_n(\kappa_1,\dots,\kappa_n) \frac{s^n}{n!}
$$
where $B_n(\kappa_1,\dots,\kappa_n)$ is the $n$-th complete
Bell polynomial.
This is just a special case of the
Fa\`a di Bruno formula first proved by Louis Fran\c{c}ois Antoine
Arborgast in 1800\cite{Arb1800}.
Bell polynomials satisfy the recurrence \cite{Com1974} $B_0 = 1$ and
$$
B_{n+1}(x_1,\dots,x_{n+1}) = \sum_{k=0}^n \binom{n}{k}
B_{n - k}(x_1,\dots, x_{n - k}) x_{k+1}.
$$


## Hermite Polynomials

The derivatives of the standard normal density 
can be computed using Hermite polynomials\cite{AbrSte1964}
pp. 793--801.
One definition is
$$
H_n(x) = (-1)^n e^{x^2/2}\frac{d^n}{dx^n}e^{-x^2/2}.
$$
They satisfy the recurrence $H_0(x) = 1$, $H_1(x) = x$ and
$$
H_{n+1}(x) = xH_n(x) - n H_{n-1}(x).
$$
Note some authors use $He_n(x)$ instead of $H_n(x)$.
This shows $\phi^{(n)}(x) = (-1)^n\phi(x) H_n(x)$
so $\Phi^{(n)} = (-1)^{n-1} H_{n-1}(x)$ for $n > 0$.


$$
\begin{align*}
\hat\psi(u) &= Ee^{-iuX}\\
&= Ee^{\sum_{n=1}^\infty \kappa_n (-iu)^n/n!\\
&= e^{-u^2/2}Ee^{\sum_{n=3}^\infty \kappa_n (-iu)^n/n!\\
&= \hat\psi(u)E\sum_{n=0}^\infty B_n(0,0,\kappa_3,\dots,\kappa_n) (-iu)^n/n!\\
&= E\sum_{n=0}^\infty (-1)^n
B_n(0,0,\kappa_3,\ldots,\kappa_n)\hat{\psi^(n)}(u)/n!\\
\end{align*}
$$
Taking inverse Fourier transforms
$$
\psi(x) = 
E\sum_{n=0}^\infty (-1)^n B_n(0,0,\kappa_3,\ldots,\kappa_n)\psi^(n)(u)/n!\\
$$
Integrating both sides
$$
\Psi(x) = 
E\sum_{n=0}^\infty (-1)^n B_n(0,0,\kappa_3,\ldots,\kappa_n)\Psi^(n)(u)/n!\\
$$

We now have an explicit formula for the cumulative
distibution function of $X$:
\begin{equation}
\Psi(x) = \Phi(x) - \phi(x)\sum_{n=3}^\infty
B_n(0,0,\kappa_3,\dots,\kappa_n) H_{n-1}(x)/n!
\end{equation}

since $B_1(0) = B_2(0,0) = 0$.
-->
