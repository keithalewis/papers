# Order Books

A _limit order_ for an instrument placed at time $t$ has a _level_ $l$ and an _amount_ $a$.
The party placing the order agrees to buy (amount < 0) or sell (amount > 0)
at the level when the market price matches that.

Let $T$ be the trading times, $L$ be the possible prices of an instrument and $A$ be the possible
amounts that can be bought or sold in the instrument.

A _limit order book_, $O$, is a union of elements of $T\times L\times A$.
We assume all times are distinct.

The order book at time $u$ is the set of all orders placed (strictly) before $u$.

The _order book snapshot_ of $O$ is a function $o\colon T\times A\mapsto L$ defined by
$S(u,x) = \sum \{l 1(x\le a):(t,l,a)\in O(u)\}$.

A _market order_ for an instrument executed at time $t$ has an amount. If the amount is positive
it is a _buy order_. If the amount is negative it is a _sell_ order.

The set of limit order books can be supplied with a module structure over the integers.
The sum of two limit order books is their union.
The scalar multiplication multiplies each order amount in the book.
The empty book is the the identity of the addition.

Note the book obtained by multipling by -1 never occurs in the real world.

The _last time_ of an order book is the maximum of all limit order times.
We assume market orders executed against a book have time greater than the last time.

The _top_ of the order book is the maximum of all levels and the
_bottom_ is the minimum of all levels.

The _best ask_ is the minimum of all levels for which the amount is positive.
The _best bid_ is the maximum of all levels for which the amount is negative.
The _bid/ask spread_ is the difference of these amounts.

If $\lambda = (t,l,a)$ is a limit order, the operator $P_\lambda$
takes $O$ to $O + \{\lambda\}$ where $\{\lambda\}$ is the order book
containing only $\lambda$.
Note $P_\lambda(O + O') \not= P_\lambda(O) + P_\lambda(O')$ so
it is not a linear operator.
It is true that $P_\lambda(O + O') = P_\lambda(O) + P_\lambda(O') - \{\lambda\}$

If $\mu_1$ is a market order of unit amount define the operator $E_1$
to replace the most recent limit order at the top by $\lambda_1 = (t, l, a - 1)$.
Note $E_1(O + O') \not=  E_1(O) + E_1(O')$ so it is not linear.
It is true that $E_1(O + O') = E_1(O) + E_1(O') + \{\lambda_1'\}$
where $\lambda_1' = (t, l , 1)$.

If the amount of of the most recent order is 1 then the limit order is removed.
If the order book contains no sell limit orders the operator is undefined.

Define $E_n = (E_1)^n$ for positive integers $n$.

If $\mu_{-1}$ is a market order of negative unit amount define the operator $E_1$
to replace the most recent limit order at the bottom by $\lambda_1 = (t, l, a + 1)$.
Note $E_{-1}(O + O') \not=  E_{-1}(O) + E_{-1}(O')$ so it is not linear.
It is true that $E_{-1}(O + O') = E_{-1}(O) + E_{-1}(O') + \{\lambda_1'\}$
where $\lambda_1' = (t, l , 1)$.

If the amount of of the most recent order is -1 then the limit order is removed.
If the order book contains no buy limit orders the operator is undefined.

Define $E_{-n} = (E_{-1})^n$ for positive integers $n$.
