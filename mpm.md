---
title: The Unified Model
...

## Multi Period Model

Payoff $\bar{A}_j$ at $t_j$ and assume $C_j = 0$

Minimize
$$
\begin{aligned}
\Phi(\Gamma_0,\ldots,\Gamma_n) &= \sum_{j=1}^n E(\bar{A}_j - A_j)^2\\
     &= \sum_{j=1}^n E(\bar{A}_j + \Gamma_j\cdot X_j)^2\\
\end{aligned}
$$
where $\sum \Gamma_j = 0$

## Completing the Square

$\mathcal{H}$, $\mathcal{K}$ Hilbert spaces

$a\in\mathcal{H}$, $X\in\mathcal{L}(\mathcal{K},\mathcal{H})$, $\mathcal{M}\subset\mathcal{K}$

$\min_{g\in\mathcal{M}} ||a - Xg||^2$

Let $P$ be the projection from $\mathcal{K}$ to $\mathcal{M}$ and $\Xi = (PX^*XP)^{1/2}$, then

$$
\begin{aligned}
||a - Xg||^2 &= ||a - XPg||^2\\
&= ||a||^2 - ||\Xi^{-1}PX^*a||^2 + ||\Xi^{-1}PX^*a - \Xi g||^2\\
\end{aligned}
$$

Minimum occurs when $g = (PX^*XP)^{-1} PX^* a$

