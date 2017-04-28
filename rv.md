# Random Variables

A _random variable_ is a variable with additional information.
It can be used as a substitute for a known value in an equation
but the _probability_ it takes on a given value is also known.

## Discrete Random Variables

A _discrete_ random variable, $X$, is specified by the values
it can take, $x_j$, and the probibility it takes on each
value, $p_j$. The $p_j$ must be positive and sum to 1.
We write $P(X = x_j) = p_j$.

## Continuously Distributed Random Variable

A _continuously distributed_ random variable, $X$, has the property that
the probability it equals a specific value is 0.
It is specified by function $f\colon\R\to\R$ that is non-negative
and integrates to 1. This function is called the _probability
density function_.
We write $P(a < X < b) = \int_a^b f(x)\,dx$.

## General Random Variables

Both types of random variables can be specified using a
_cumulative distribution function_, $F$, by $P(X \le x) = F(x)$.

It is trivial that $P(a < X \le b) = F(b) - F(a)$. For continuously
distributed random variables strick or weak inequalities do not
change the probabilty the variable take a value in an interval.

If $P(X = a) = p$ then $F$ has a jump of size $p$ at $x = a$.

