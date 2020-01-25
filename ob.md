# Order Books

A _limit order_ for an instrument has a _level_ and an _amount_.
The party placing the order agrees to buy (amount > 0) or sell (amount < 0)
at the level when the market price matches that.

Let $L$ be the possible prices of an instrument and $A$ be the possible
amounts that can be bought or sold in the instrument.

A _limit order_ book, $O$, is a subset of: $\{(l,a): l\in L, a\in A\}$.

The _order book_ of $O$ is a function $o\colon A\mapsto L$ defined by
$o(x) = sum_{(l,a)\in O} l 1(x\le a)$

Order books are a function of time. New limit orders get added as they come in.

A _market order_ for an instrument has an amount. If the amount is positive
it is a _buy order_. If the amount is negative it is a _sell_ order.

All of the limit orders get executed...
