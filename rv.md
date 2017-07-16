# Random Variables

A _random variable_ is a variable with additional information.
It can be used as a substitute for a known value in an equation
but the _probability_ it takes on a given value is also known.

## Discrete Random Variables

A _discrete_ random variable, $X$, is specified by the values
it can take, $x_j$, and the probability it takes on each
value, $p_j$. The $p_j$ must be positive and sum to 1.

We write $P(X = x_j) = p_j$ for "the probability $X$ equals
$x_j$ is $p_j$."

## Continuously Distributed Random Variable

A _continuously distributed_ random variable, $X$, is specified by a
function $f\colon\R\to[0,\infty)$ that integrates to 1. This function
is called the _probability density function_. 

We write $P(a < X < b) = \int_a^b f(x)\,dx$ for "the probability $X$ is
between $a$ and $b$."  Note the probability it equals a specific value is 0
so $P(a < X < b) = $P(a < X \le b) = $P(a \le X < b) = $P(a \le X \le b)$

## General Random Variables

Both types of random variables can be specified using a
_cumulative distribution function_, $F\colon\R\to[0,1]$ that is
non-decreasing and right continuous. It must also satisfy
$\lim_{x\to -\infty} F(x) = 0$ and $\lim_{x\to\infty} F(x) = 1$.

We write $P(X \le x) = F(x)$ for "the probability $X$ is less than
or equal to $x$.  It is trivial that $P(a < X \le b) = F(b) - F(a)$.
