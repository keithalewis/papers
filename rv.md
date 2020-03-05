# Random Variables

A _random variable_ is a variable with additional information.  It can
be used as a substitute for a value in an equation, just like a variable,
but the _probability_ it takes on a given values is also known.

Every random variable is completely described by its _cumulative
distribution_, $F(x) = P(X\le x)$, the probability it takes on a value
less than or equal to $x$. Note $F$ is non-decreasing, right continuous,
$\lim_{x\to -\infty} F(x) = 0$ and $\lim_{x\to\infty} F(x) = 1$.

**Exercise.** Use $(-\infty, x] = \cap_{t > x} (-\infty, t]$
to show $F$ is right continuous. 
Note $(-\infty,x) = \cup_{t < x} (-\infty, t] \not= (-\infty, x]$.

## Continuously Distributed Random Variable

If $F(x) = \int_{-\infty}^x F'(t)\,dt$ then the random variable is
_continuously distributed_.  The function $f(x) = F'(x)$ is called the
_probability density function_.

We have $\int_a^b f(t)\,dt = F(b) - F(a) = P(a < x\le b)$.

## Discrete Random Variables

A _discretely distributed_, or _discrete_, random variable is specified
by the values it can take, $x_j$, and the probability it takes on each
value, $p_j$. The $p_j$ must be positive and sum to 1.  Its cumulative
distribution is $F(x) = \sum_{x_j \le x} p_j$.  Note $P(X = x_j) = p_j$.

## Examples

### Uniform

A _uniformly distributed_, or _uniform_, random variable on
the unit inverval $(0,1)$ is continuously distributed and has density
$f(x) = 1$ if $0 < x < 1$ and $= 0$ if $x < 0$ or $x > 1$.
This can be written $f(x) = 1(0 < x < 1)$. We use
$1_A(x)$ for the _indicator function_ that is $1$ if $x\in A$ and $0$
if $x\not\in A$.

Its cumulative distribution is
$F(x) = x$ for $0 < x < 1$, $=0$ for $x<0$, and $=1$ for $x>1$.
This can be written $F(x) = \min\{\max\{0, x\}, 1\}$.

If it is uniform on the inverval $(a,b)$
its density is $f(x) = 1(a < x < b)/(b - a)$.

If $X$ has cumulative distribution $F$ then $F^{-1}(X)$ is
uniformly distributed.

**Exercise.** Prove this.

This shows the uniform random variable on the unit interval has all
the randomness needed to model _any_ random variable.
There are no random random variables.

## Exponential

A random variable is _exponentially distributed_ with parameter
$\lambda$ if $P(X > x) = \exp(-\lambda x)$ for $x > 0$.
Its density is $f(x) = \lambda \exp(-\lambda x)$ for $x > 0$.

**Exercise.** If $P(x < X < x + h\mid X > x) = \lambda h + o(h)$
then $X$ is exponentially distributed with parameter
$\lambda$.

_Hint._ $P(x < X < x + h\mid X > x) = (F(x + h) - F(x)/(1 - F(x))$
so $F'(x) = \lambda(1 - F(x))$. Let $\bar{F}(x) = 1 - F(x)$ so
$-\bar{F}'(x) = \lambda \bar{F}(x)$.


