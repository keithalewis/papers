# Binomial Models

Binomial models have a bad reputation. They are viewed as toy models
that MBA's can understand, but they are no worse than Brownian motion.
The fact is that computing power was limited in the past and
Moore's law has made them relevant again.

I've heard the claim binomial is bad, partial differential equation's
are good, but the world has moved on. It makes no sense spending time,
money, and brain-power developing a Crank-Nicholson PDE solver when
computing power is a commodity.

A trinomial model is just a special case of Crank-Nicholson for solving
PDEs.

Let $\Omega = \{0,1\}^n$ represent a sequence of $n$ fair coin flips.

Define $V_n(\omega) = \omega_1 + \cdots + \omega_n$.

Define $A_n(\omega) = \{\omega'\in\Omega:\omega'_j = \omega_j, 1\le j\le n\}$.

Define $\mathcal{A}_n = \{A_n(\omega): \omega\in\Omega\}$.

Define $B_n(k) = \{\omega\in\Omega:V_n(\omega) = k\}$.

Define $\mathcal{B}_n = \{B_n(k): 0\le k\le n\}$.
