---
title: Probability
author: Keith A. Lewis
institution: KALX, LLC
email: kal@kalx.net
classoption: fleqn
abstract: |
	This short note collects salient facts about probability theory.
...

Probability is an extension of logic. Instead of propositions being
either true or false a degree of belief can be specified for events occurring.
All probabilities are based on information and
different people may have different degrees of belief.
However, as the amount of information increases, probabilities should converge.

A _probability model_ specifies a _sample space_ and a _probability measure_.
The sample space is just a set of what can possibly happen: heads or tails as the outcome
of a coin toss, the numbers 1 through 6 as the outcomes of rolling a singled die,
the set of all sequences of not more than 280 characters as a model of possible Twitter tweets.

People seem to be surprised probabilities are modeled using a set.
Sets have no structure, they are just a bag of things (_elements_). 

An _event_ is a subset of a sample space. A _probability measure_ assigns
a number between 0 and 1 to events. If $\Omega$ is a sample space and $P$
is a probability measure then the measure of the union of sets is the
sum of the measure of each set minus the measure of the intersection:
$P(E\cup F) = P(E) + P(F) - P(E\cap F)$ for events $E$ and $F$.  This is
the mathematical way to say measures do not double count.

A probability measure must also satisfy $P(\emptyset) = 0$ and $P(\Omega) = 1$.

Exercise. If $Q$ is a measure with $Q(\emptyset) = a$ and $Q(\Omega) = b$,
show $(Q - a)/(b - a)$ is a probability measure.

Let $1_A(\omega) = 1$ if $\omega\in A$ and $= 0$ if $\omega\not\in A$.
If $X = \sum a_i 1_{A_i}$ where $a_i\in\mathbf{R}$ and $A_i$ are events,
Define $EX = \sum_i a_i P(A_i)$.

Exercise. Show $P(\cup_i A_i) = \sum_i P(A_i) - \sum_{i < j} P(A_i\cap A_j)
+ \sum_{i < j < k} P(A_i\cap A_j\cap A_k) \cdots$.

Hint: Use $(1_A - 1_{A_1})\cdots (1_A - 1_{A_n}) = 0$, where $A = \cup_{k=1}^n A_k$.

Exercise. (Inclusion-Exclusion principal) Let $S$ be a finite set and
let $f$ be any function defined on subsets of $S$.
Define $\phi f(T) = \sum_{Y\supseteq T} f(Y)$ and
$\psi g(T) = \sum_{Y\supseteq T} (-1)^{|Y| - |T|} g(T)$.
Show $\phi\psi g = g$ and $\psi\phi f = f$.

Hint: Group the sum by $|Y| - |T|$.

## Algebras of Sets

An _algebra of sets_ on $\Omega$ is a collection of subsets,
$\mathcal{A}$, that is closed under complement and union. We also assume
the empty set belongs to $\mathcal{A}$. By De Morgan's Law an algebra
is also closed under intersection and $\Omega$ belongs to $\mathcal{A}$.

An _atom_ of an algebra is a member, $A$, of the algebra such that if
$B\subseteq A$ and $B$ is in the algebra, then either $B = A$ or $B$
is the empty set.

A _partition_ of a set is a collection of pairwise disjoint subsets who's union is equal to the set.

Exercise. If an algebra on $\Omega$ is finite its atoms form a partition of $\Omega$.

Hint: Show $A_\omega = \cap\{B\in\mathcal{A}:\omega\in B\}$, $\omega\in\Omega$, is an atom 

This shows there is a one-to-one correspondence between finite partitions
and finite algebras of sets.  A partition is the mathematical way of
specifying partial information. Knowing the outcome, $\omega\in\Omega$,
corresponds to complete knowledge. Knowing which atom the outcome
belongs to corresponds to partial knowledge. For example, the partition
$\{\{1,3,5\},\{2,4,6\}\}$ corresponds to knowing whether the roll of a
die is odd or even.

The coarsest partition $\{\Omega\}$ corresponds to no knowledge while the finest partition
$\{\{\omega\}:\omega\in\Omega\}$ corresponds to complete knowledge.

## Probability Spaces

A triple $\langle \Omega, P, \mathcal{A}\rangle$ where $\Omega$ is a set, $P$ is
a probability measure with domain $\mathcal{A}$ is called a _probability space_.
A _random variable_ is a function $X\colon\Omega\to\mathbf{R}$ that is $\mathcal{A}$
measureable: the sets $X^{-1}((-\infty, x]) = \{\omega\in\Omega:X(\omega)\le x\}$
belong to $\mathcal{A}$ for $x\in\mathbf{R}$.

Exercise: If $\mathcal{A}$ is finite, show that a function is measurable if and only if it
is constant on atoms of $\mathcal{A}$.

In this case $X\colon\mathcal{A}\to\mathbf{R}$ is indeed a function on the atoms.

## Random Variables

The physicist's definition of a random variable that it is a variable, a
symbol that can be used in place of a number, with additional information,
the probability of the values it can take on. The _cumulative distribution
function_ is $F(x) = F^X(x) = P(X\le x)$
It tells you everything there is to know about $X$. For example,
$P(a < X \le b) = F(b) - F(a)$.  In general, $P(X\in A) = E 1_A = \int
1_A(x)\,dF(x)$ for sufficiently nice $A\subset\mathcal{R}$.
Here we use the [Riemann–Stieltjes integral](https://en.wikipedia.org/wiki/Riemann%E2%80%93Stieltjes_integral).

The mathematician's definition of a random variable is that it is
a measurable function $X\colon\Omega\to\mathbf{R}$. Its cumulative
distribution function is $F(x) = P(X\le x) = P(\{\omega\in\Omega\mid X(\omega) \le x\})$.
Given a cdf $F$ we can define recover the physicists random variable by defining
$X\colon\mathbf{R}\to\mathbf{R}$ to be the
identity function and let $P$ be the probability measure defined by $F$:
$P(A) = \int 1_A(x)\,dF(x)$. 

Two random variables, $X$ and $Y$, are defined by their _joint distribution_,
$F(x,y) = F^{X,Y}(x,y) = P(X\le x, Y\le y)$.

$P((X,Y) \in square)$.

This is where the mathematician's definition is ???

One probablity measure, and two (or any number) of function.

### Expected Value

The _expected value_ of a random variable is defined by the
$E X = \int_{-\infty}^\infty x\,dF(x)$. The expected value of any function of
a random variable is $E f(X) = \int_{-\infty}^\infty f(x)\,dF(x)$.

### Moments

The _moments_ of a random variable, $X$, are $m_n = E[X^n]$, $n = 0,1,2,\ldots$.
They don't necessarily exist for all $n$, except for $n = 0$.
They also cannot be an arbitrary sequence of values.

Suppose all moments of $X$ exist, then for any numbers, $(c_i)$, $0 \le E|\sum_i c_i X^i|^2 =
E\sum_{j,k} c_j\bar{c_k} X^{j+k} = \sum_{j,k} c_j \bar{c_k} m_{j+k}$.
This says the Hankel matrix, $M = [m_{j+k}]_{j,k}$, is positive definite.
The converse is also true: if the Hankel matrix is positive definite there
exists a random variable with the corresponding moments.

This is a special case of interpolation. Suppose you have linear functionals on 
a Hilbert space, $f_j\colon\mathcal{H}\to\mathbf{C}$...
 
Let $\ell^2$ be the vector space $\{(c_j): \sum_{j=0}^\infty |c_j|^2 < \infty\}$ where
$c_j$ are complex numbers. It has a basis, $(e_j)$, where $(e_j)_k = \delta_{j,k}$.
Define the unilateral shift operator $S:\ell^2\to\ell^2$ by $S(c_0,c_1,\ldots) = (0,c_0,c_1,\ldots)$.

Spectral measure ...

Copulas

### Cumulants

The _cumulant_ of a random variable, $X$, is $\kappa(s) = \kappa^X(s) = \exp(sX)$.
The _cumulants_, $\kappa_n$, are defined by $\kappa(s) = \sum_{n>0}\kappa_n s^n/n!$.

It is easy to see $\kappa_1 = E X$ and $\kappa_2 = \Var X$. The third and fourth cumulants
are related to skew and kurtosis. We will see the exact relationship below.

If $c$ is a constant then $\kappa^{cX}(s) = \kappa^X(cs)$ so $\kappa^{cX}_n = c^n\kappa^X_n$.
If $X$ and $Y$ are independent then $\kappa^{X + Y}(s) = \kappa^X(s) + \kappa^Y(s)$ so
$\kappa^{X + Y}_n = \kappa^X_n + \kappa^Y_n$$

#### Examples

If $X$ is normal then $E\exp(X) = \exp(EX + \Var(X)/2)$ so $\kappa_1 = EX$, $\kappa_2 = \Var(X)$,
and $\kappa_n = 0$ for $n > 2$.

If $X$ is Poisson with parameter $\lambda$ then 
\begin{align*}
Ee^{sX} &= \sum_{k=0}^\infty e^{sk} e^{-\lambda}\lambda^k/k!\\
        &= \sum_{k=0}^\infty  (e^s\lambda)^ke^{-\lambda}/k!\\
		&= \exp(\lambda(e^s - 1))
\end{align*}
so $\kappa(s) = \lambda(e^s - 1)$ and $\kappa_n = \lambda$ for all $n$.

### Bell Polynomials

The relationship between moments and cumulants is given by Bell polynomials.

In particular $m_1 = \kappa_1$ and $m_2 = \kappa_1^2 + \kappa_2$ so
$\kappa_1$ is the mean and $\kappa_2$ is the variance. If the mean is 0 and
the variance is 1, then $\kappa_3$ is the skew and $\kappa$ is the
excess kurtosis.

## Examples
### Uniform

every rv comes from uniform

### Normal

### Poisson

### Infinitely Divisible

A random variable, $X$, is _infinitely divisible_ if for any positive integer, $n$,
there exist independent, identically distributed random variables $X_1$,\ldots,$X_n$
such that $X_1 + \cdots + X_n$ has the same law as $X$.

Characteristic function ...

## Conditional Expectation

The _conditional expectation_ of an event $B$ given an event $A$ is
$P(B|A) = P(B\cap A)/P(A)$. In some sense, this reduces the sample space to $A$.
In particular, $P(A|A) = 1$.
Since $P(A|B) = P(A\cap B)/P(B)$ we have $P(A|B) = P(B|A)P(A)/P(B)$. 
This is the simplest form of Bayes Theorem. It shows how to update your degree
of belief based on new information. Every probability is conditional on given information.

Define $E[X|A] = E[X 1_A]/P(A)$ for any random variable $X$. If $X = 1_B$ then this
coincides with the definition of conditional expectation above.

If we write this as $E[X|A]P(A) = E[X 1_A]$ then defining $E[X|\mathcal{A}]$ by
$E[X|\mathcal{A}]P|_\mathcal{A} = (XP)_\mathcal{A}$ agrees on atoms of $\mathcal{A}$.


moments, Hamburger moment problem.

cumulants, Bell polynomials


### Normal

### Poisson

### Infinitely Divisible

## Stochastic Processes

A _stochastic process_ is ...

### Brownian Motion

reflection

### L\'evy Processes



## Remarks

Cheval de Mere

Pascal

Bernoulli(s)

Kolmogorov

Willy Feller
