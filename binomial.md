# Binomial Models

Binomial models have a bad reputation. They are viewed as toy models
that MBA's can understand, but they are no worse than Brownian motion.
The fact is that computing power was limited in the past and
Moore's law has made them relevant again.

I've heard the claim binomial is bad, partial differential equation's
are good, but the world has moved on. It makes no sense spending time,
money, and brain-power developing a Crank-Nicholson PDE solver when
computing power is a commodity.

A trinomial model is just an explict backward technique of solving
PDEs. Why deal with delicate convergence issues with 

It is identical to a two step binomial model.

Find processes that allow for what can happen in the real world.

In the Bachelier model we have $s \mapsto s \pm \delta$. in
the Black-Scholes/Merton model we have $s \mapsto s(1 \pm \delta)$.
This can be generalized to $s \mapsto s \pm (1 - \alpha + \alpha s)\delta$
where $0\le\alpha\le1$.

$s_{k,j}\mapsto s_{k,j} \pm (1 + \alpha_{k,j}(s_{k,j} - 1))\delta$
