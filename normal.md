---
title: Normal Random Variable
author: Keith A. Lewis
institution: KALX, LLC
email: kal@kalx.net
classoption: fleqn
...

The _standard normal_ random variable, $Z$, has density function $\phi(z)
= \frac{1}{\sqrt{2\pi}}e^{-z^2/2}$, $-\infty < z < \infty$. Using
$1 = \int_{-\infty}^\infty e^{-\pi z^2}\,dz$ it is easy to see
$\sqrt{\pi/\alpha} = \int_{-\infty}^\infty e^{-\alpha z^2}\,dz$ so $\phi$
does indeed integrate to 1. 

If $N$ is normal then $E e^N = e^{E N + \Var(N)/2}$.

\begin{align*}
E e^N &= \int_{-\infty}^\infty e^{\mu + \sigma z} e^{-z^2/2}\,dz/\sqrt{2\pi}\\
&= e^{\mu + \sigma^2/2} \int_{-\infty}^\infty e^{-\sigma^2/2 + \sigma z} e^{-z^2/2}\,dz/\sqrt{2\pi}\\
&= e^{\mu + \sigma^2/2} \int_{-\infty}^\infty e^{-(z - \sigma)^2/2}\,dz/\sqrt{2\pi}\\
&= e^{\mu + \sigma^2/2} \int_{-\infty}^\infty e^{-z^2/2}\,dz/\sqrt{2\pi}\\
&= e^{\mu + \sigma^2/2}
\end{align*}

This shows $E e^{sZ} = e^{s^2/2}$. Since $E e^{sZ} = \sum_{n=0}^\infty s^n
EZ^n/n!$ we have, equating odd powers of $s$, $0 = E Z^{2n+1}$ Equating
even powers of $s$ gives $1/(2^n n!) = E Z^{2n}/(2n)!$ hence $EZ^{2n} =
(2n)!/(2^n n!)$.  In particular, $EZ = 0$ and $EZ^2 = 2!/2^1 1! = 1$.
This shows the standard normal random variable has mean 0 and variance 1.

Note the cumulant of $Z$ is $\kappa^Z(s) = \log E e^{sZ} = s^2/2$.

If $N$ is normal then $E e^N f(N) = Ee^{E N} EF(N + \Var(N))$.

\begin{align*}
E e^N f(N) &= \int_{-\infty}^\infty e^{\mu + \sigma z} f(\mu + \sigma z) e^{-z^2/2}\,dz/\sqrt{2\pi}\\
&= e^{\mu + \sigma^2/2} \int_{-\infty}^\infty e^{-\sigma^2/2 + \sigma z} f(\mu + \sigma z) e^{-z^2/2}\,dz/\sqrt{2\pi}\\
&= e^{\mu + \sigma^2/2} \int_{-\infty}^\infty f(\mu + \sigma z) e^{-(z - \sigma)^2/2}\,dz/\sqrt{2\pi}\\
&= e^{\mu + \sigma^2/2} \int_{-\infty}^\infty f(\mu + \sigma (z + \sigma)) e^{-z^2/2}\,dz/\sqrt{2\pi}\\
&= e^{\mu + \sigma^2/2} E f(Z + \sigma^2)\\
&= e^{E N} Ef(N + \Var(N))
\end{align*}

If $N$ and $M$ are jointly normal then $E e^N f(M) = E e^N E f(M + \Cov(N,M))$.

If $N$ and $M_1,\dots$ are jointly normal then $E e^N f(M_1,\dots) = E e^N E f(M_1 + \Cov(N,M_1, \dots))$.

If $I = \int_{-\infty}^\infty e^{-\pi z^2}\,dz$ then

\begin{align*}
I^2 &= \int_{-\infty}^\infty \int_{-\infty}^\infty e^{-\pi (x^2 + y^2)}\,dx\,dy\\
&= \int_0^{2\pi} \int_0^\infty e^{-\pi r^2} r\,dr\,d\theta\\
&= \int_0^{2\pi} -e^{-\pi r^2}/2\pi|_0^\infty \,d\theta\\
&= 1
\end{align*}

