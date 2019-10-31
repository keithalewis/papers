---
title: Normal Short Rate model
author: Keith A. Lewis
institution: KALX, LLC
email: kal@kalx.net
classoption: fleqn
...

If $f_t$ is the short rate process, 1 invested at $t$ returns $e^{f\,dt}$
at $t + dt$, then the price at time $t$ of a zero coupon bond maturing at time $u$ is
$D_t(u) = E_t \exp(-\int_t^u f_s\,ds)$,
where $E_t$ denotes conditional expectation at time $t$.

Let $(B_t)_{t\ge0}$ be standard brownian motion.
The _normal interest rate model_ specifies the short rate process
$f_t = \phi(t) + \sigma(t)B_t$.

If $\Sigma(t)$ is an integral of $\sigma(t)$,
we have $d(\Sigma(t) B_t) = \Sigma(t)\,dB_t + B_t\sigma(t)\,dt$ so

\begin{align*}
\int_t^u \sigma(s)B_s\,ds
&= \Sigma(u)B_u - \Sigma(t)B_t - \int_t^u \Sigma(s)\,dB_s\\
&= \Sigma(u)B_u - \Sigma(u)B_t + \Sigma(u)B_t - \Sigma(t)B_t
  - \int_t^u \Sigma(s)\,dB_s\\
&= (\Sigma(u) - \Sigma(t))B_t
  + \int_t^u (\Sigma(u) - \Sigma(s))\,dB_s\\
\end{align*}
Using $\exp(-\int_0^t \Lambda^2(s)\,ds/2 + \int_0^t \Lambda(s)\,dB_s)$ is a martingale
we have $\exp(\int_t^u \Lambda(s)\,dB(s))|_t = \exp(\int_t^u \Lambda(s)^2\,ds/2)$ and so
$$
    \exp(\int_t^u (\Sigma(u) - \Sigma(s))\,dB_s)|_t
    = \exp(\int_t^u (\Sigma(u) - \Sigma(s))^2\,ds/2)
$$
Putting the facts together yields
$$
    D_t(u) = e^{-\int_t^u [\phi(s)
        - (\Sigma(u) - \Sigma(s))^2/2]\,ds
        - (\Sigma(u) - \Sigma(t))B_t}
$$

If $\sigma$ is constant then $\Sigma(t) = \sigma t$ and
$$
    -\log D_t(u) = \int_t^u [\phi(s) - \sigma^2(u - s)^2/2]\,ds
            +  \sigma(u - t) B_t
$$
Since $D_0(u) = D(u) = \exp(-\int_0^u f(s)\,ds)$ is today’s discount curve
we have $\int_0^u f(s)\,ds = \int_0^u \phi(s)\,ds - \sigma^2 u^3/6$ and so $f(t) = \phi(t) - \sigma^2 u^2/2$.
In terms of the forward the equation above becomes
$$
    -\log D_t(u)
    = \int_t^u f(s)\, ds + \sigma^2ut(u - t)/2
            +  \sigma(u - t) B_t
$$
