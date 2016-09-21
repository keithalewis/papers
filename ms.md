# Series

A _series_ is a function $s\colon\{0,\dots,n\}\to\mathbf{R}$.

## Monotonic Series

A _monotonic series_ is a sequence of times, $(t_j)$, from a totally
ordered set $T$ such that $t_j < t_k$ in the total order
whenever $j < k$.

A _time series_ is a sequence of pairs, $(t_j,X_j)$, where $(t_j)$ is a
monotonic series and $X_j$ are values in some vector space.

There are two natural ways to turn a time series into a function
on $T$ assuming you can only act on past data.
Let $X_j(t_j]$ be the function
$\sum_j X_j1_{(t_{j-1},t_j]}$
and let $X_j[t_j)$ be the function
Let $X_j(t_j]$ be the function
$\sum_j X_j1_{[t_{j-t},t_j)}$.
The first is used for trading strategies where your
position is right continuous.
The second is used for prices because they are left continuous.

Given a vector valued function $X\colon T\to V$ and a monotonic
series $(t_j)$ let  $X(t_j]$ and $X[t_j)$ denote the functions
defined above for the time series $(t_j, X(t_j))$.

Given time series $t^0, t^1,\dots$ define the _ziggurat_,
$t = t^0 x t^1 \dots$ by $t = t^0$ until $t^1$,

## Stop Loss/Start Gain

Let $X(t)$ be the price of the underlying.

Let $e$ be _end of week_.

Let $b$ be _beginning of week_.

Let $o$ be _open_.

Let $c$ be _close_.

Our bogey is $X[e)$, the price at the close of each week.

Our enter signal is $in = X(o] < X[e)$.

Our exit signal is $out = X(c] > X[e)$.

_|s and ^|s are alternating s from 0 to 1 and 1 to 0, respectivley
