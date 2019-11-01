---
title: Barrier Options
author: Keith A. Lewis
classoption: fleqn
abstract: |
	A short description of the taxonomy of barrier options.
...

Let $X_t$ be the price of a stock at time $t$.

Define the running maximum of the price $\overline{X}_t = \max_{s\le t} X_s$
and the running minimum of the price $\underline{X}_t = \min_{s\le t} X_s$.

The _draw up_ is $\overline{X}_t - X_t$. The _draw down_ is $X_t - \underline{X}_t$.

A put option with strike $k$ expiring at time $t$ has payoff $(k - X_t)^+$ at $t$.

A call option with strike $k$ expiring at time $t$ has payoff $(X_t - k)^+$ at $t$.

_Barrier options_ with barrier $h$ and strike $k$ expiring at $t$
 come in eight forms; put/call, in/out, up/down.
A put or call option can knock in or out if the running max or min hits the barrier
as it goes up or down.

The terminology goes in reverse order.

An _up-in-put_ pays $(k - X_t)^+ 1(\overline{X}_t > h)$ at $t$.
You get the put payoff if the running max hits the barrier.

A _down-in-put_ pays $(k - X_t)^+ 1(\underline{X}_t < h)$ at $t$.
You get the put payoff if the running min hits the barrier.

An _up-out-put_ pays $(k - X_t)^+ 1(\overline{X}_t < h)$ at $t$.
You get the put payoff if the running max does not hit the barrier.

A _down-out-put_ pays $(k - X_t)^+ 1(\underline{X}_t > h)$ at $t$.
You get the put payoff if the running min does not hit the barrier.

An _up-in-call_ pays $(X_t - k)^+ 1(\overline{X}_t > h)$ at $t$.
You get the call payoff if the running max hits the barrier.

A _down-in-call_ pays $(X_t -k)^+ 1(\underline{X}_t < h)$ at $t$.
You get the call payoff if the running min hits the barrier.

An _up-out-call_ pays $(X_t -k)^+ 1(\overline{X}_t < h)$ at $t$.
You get the call payoff if the running max does not hit the barrier.

A _down-out-call_ pays $(X_t - k)^+ 1(\underline{X}_t > h)$ at $t$.
You get the call payoff if the running min does not hit the barrier.

These can be combined into one formula.

If $c = 1$ in the case of a call option and $c = -1$ in case of a put option,
then $(c(X_t - k))^+$ is the payoff of the corresponding call or put option.

If $d = 1$ in the case of the running max and $d = -1$ in the case of
the running min, $X^d_t = d\max_{s\le t} d X_s$ is the corresponding running
max or min.

If $e = 1$ in the case of an in option and $e = -1$ in the case of an out
option, then $eX^d_t > eh$ is the corresponding in or out criterion.

The general barrier option payoff formula is
$c(X_t - k)^+ 1(eX^d_t > eh)$.

__Exercise__. How does the initial price, $X_0$, affect these formulas?

__Exercise__. What are the corresponding formulas for early ending barrier options?
