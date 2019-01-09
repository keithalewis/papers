---
title: Dynamic Hedging
---

The one period model of instruments, $I$, on the sample space $\Omega$ is
a vector, $x\in\RR^I$ and a function $X\colon\Omega\to\RR^I$.
Consider a European option paying $A$ at the end of the period.

If the model is arbitrage free there exists a positive measue, $\Pi$, on $\Omega$
such that $\gamma\cdot x = \int_\Omega X\,dP. We will also write this integral as
$\langle X, \Pi\rangle$ or $Pi X$.

Solving $\min_{\gamma}{\Pi\left( \gamma \cdot X - A \right)^{2}}$ gives
$\gamma = \left(\Pi XX^{T} \right)^{- 1}\text{\Pi AX}$. If a zero coupon
bond exists, i.e., $\zeta$ with $\zeta \cdot X = 1$, then
$\zeta = \left(\Pi XX^{T} \right)^{- 1}\Pi X$.

Note $0 = \Pi\left( \gamma \cdot X - A \right)X$ so
$\Pi\left( \gamma \cdot X - A \right)\left( \gamma \cdot X - A \right)
= \Pi\left( \gamma \cdot X - A \right)\left( - A \right)
= \Pi A^{2} - \gamma \cdot \Pi  XA = \Pi A^{2} - \left(\Pi AX\right)^{T}$
$\left(\Pi XX^{T} \right)^{- 1}\Pi AX$ .
