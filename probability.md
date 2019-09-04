---
title: Probability Refresher
author: Keith A. Lewis
institution: KALX, LLC
email: kal@kalx.net
classoption: fleqn
abstract: |
	This note collects salient facts about probability theory.
...

Probability is an extension of logic. Instead of propositions being either
true or false a degree of belief can be specified for events occurring.
All probabilities are conditional on models of available information.

# Probability Model

A _probability model_ specifies a _sample space_ and a _probability
measure_.

## Sample Space

A sample space is what can happen:
heads or tails as the outcome of a coin toss, the integers from 1 to
6 as the outcomes of rolling a single die, the set of all sequences of
not more than 280 characters as a model of possible Twitter tweets.

An _event_ is a subset of a sample space.

<!--
Assuming the characters are upper and lower case letters, space, and
3 punctuation marks then there are $30^280$ possible messages. This
is approximately $10^1374$. The number of elementary particles in the
universe has been estimated to be $10^80$.  The world population is a
bit under 8 billion. Assuming everyone posts a Trumpian 10 tweets a day
and uses all of their 280 character allotment, that comes to $8\times
10^9 \times 10 \times 280 = 2.24\times 10^44$. The universe is 14 billion years.
That means...
-->

People seem to be surprised probabilities are modeled using sets.
Sets have no structure, they are just a bag of things (_elements_). 

## Probability Measure

A _probability measure_ assigns
a number between 0 and 1 to events. If $\Omega$ is a sample space and $P$
is a probability measure then the measure of the union of sets is the
sum of the measure of each set minus the measure of the intersection:
$P(E\cup F) = P(E) + P(F) - P(E\cap F)$ for events $E$ and $F$.  This is
the mathematical way to say measures do not double count.

A probability measure must also satisfy $P(\emptyset) = 0$ and $P(\Omega) = 1$.

Exercise. If $Q$ is a measure with $Q(\emptyset) = a$ and $Q(\Omega) = b$,
show $(Q - a)/(b - a)$ is a probability measure.

## Algebra

An _algebra of sets_, or _algebra_, on $\Omega$ is a collection of subsets
(events), $\mathcal{A}$, that is closed under complement and union.
This lets us talk about and event not happening and whether event $A$
or $B$ occured.

We also assume the empty set belongs to $\mathcal{A}$, hence also $\Omega$.
By [De Morgan's Laws](https://en.wikipedia.org/wiki/De_Morgan's_laws)
an algebra is also closed under intersection.
The _power set_ of $\Omega$, $2^\Omega =
\{E:E\subseteq\Omega\}$, clearly satisfies these conditions.

An _atom_ of an algebra is a member, $A$, of the algebra such that if
$B\subseteq A$ and $B$ is in the algebra, then either $B = A$ or $B$
is the empty set.

## Partition

A _partition_ of a set is a collection of pairwise disjoint subsets
who's union is equal to the set.

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

## Measurable

A function $X\colon\Omega\to\mathbf{R}$ is $\mathcal{A}$-_measureable_ if the sets
$X^{-1}((-\infty, x]) = \{\omega\in\Omega:X(\omega)\le x\}$
belong to $\mathcal{A}$ for $x\in\mathbf{R}$.

Exercise: If $\mathcal{A}$ is finite, show that a function is measurable if and only if it
is constant on atoms of $\mathcal{A}$.

In this case $X\colon\mathcal{A}\to\mathbf{R}$ is indeed a function on the atoms.

# Random Variable

A _random variable_ is a variable, a
symbol that can be used in place of a number, with additional information:
the probability of the values it can take on. The _cumulative distribution
function_ is $F(x) = F^X(x) = P(X\le x)$.
It tells you everything there is to know about $X$. For example,
$P(a < X \le b) = F(b) - F(a)$. 

Exercise. Show $P(a\le X\le b) = \lim_{x\uparrow a} F(b) - F(x)$.

Hint: $[a,b] = \cap_n (a - 1/n, b]$.

In general, $P(X\in A) = E 1_A = \int 1_A(x)\,dF(x)$
for sufficiently nice $A\subset\mathbf{R}$ where we are using
[Riemann–Stieltjes](https://en.wikipedia.org/wiki/Riemann%E2%80%93Stieltjes_integral)
integration.

Exercise: Show for any cumulative distribution function, $F$, that
$F$ is non-decreasing, $\lim_{x\to -\infty} F(x) = 0$,
$\lim_{x\to\infty} F(x) = 1$ and $F$ is right continuous with left limits.

Every such function defines a random variable.

The cdf $F(x) = \max\{0,\min\{1,x\}\}$ defines the uniformly distributed random variable $U$.
For $0\le a < b\le 1$, $P(a < U < b) = b - a$.

Two random variables, $X$ and $Y$, have the same _law_ if they have the same cdf.

Exercise. If $X$ has cdf $F$, then $X$ and $F^{-1}(U)$ have the same law.

Exercise. If $X$ has cdf $F$, then $F(X)$ and $U$ have the same law.

This shows a uniformly distributed random variable has sufficient randomness to
generate any random variable. There are no random, random variables.

The mathematician's definition of a random variable is that it is
a measurable function $X\colon\Omega\to\mathbf{R}$. Its cumulative
distribution function is $F(x) = P(X\le x) = P(\{\omega\in\Omega\mid X(\omega) \le x\})$.
Given a cdf $F$ we can define
$X\colon\mathbf{R}\to\mathbf{R}$ to be the
identity function and let $P$ be the probability measure defined by $F$:
$P(A) = \int 1_A(x)\,dF(x)$. 

## Expected Value

The _expected value_ of a random variable is defined by the
$E X = \int_{-\infty}^\infty x\,dF(x)$. The expected value of any function of
a random variable is $E f(X) = \int_{-\infty}^\infty f(x)\,dF(x)$.

The _indicator_ (or _characteristic_) function $1_A(\omega)$ is 1 if $\omega\in A$ and 0 if $\omega\not\in A$.
If $X = \sum a_i 1_{A_i}$ where $a_i\in\mathbf{R}$ and $A_i$ are events,
Define the _expected value_ of $X$ by $EX = \sum_i a_i P(A_i)$.

Exercise. Show that if $\sum_i a_i 1_{A_i} = 0$ then $\sum_i a_i P(A_i) = 0$.

Hint: Replace the $A_i$ by disjoint $B_j$ so $b_j = 0$ for all $j$.

This shows expected value is [well-defined](https://en.wikipedia.org/wiki/Well-defined).

Exercise. Show $P(\cup_i A_i) = \sum_i P(A_i) - \sum_{i < j} P(A_i\cap A_j)
+ \sum_{i < j < k} P(A_i\cap A_j\cap A_k) \cdots$.

Hint: Use $(1_A - 1_{A_1})\cdots (1_A - 1_{A_n}) = 0$, where $A = \cup_{k=1}^n A_k$.

### Moments

The _moments_ of a random variable, $X$, are $m_n = E[X^n]$, $n = 0,1,2,\ldots$.
They don't necessarily exist for all $n$, except for $n = 0$.
They also cannot be an arbitrary sequence of values.

Suppose all moments of $X$ exist, then for any complex numbers,
$(c_i)$, $0 \le E|\sum_i c_i X^i|^2 = E\sum_{j,k} c_j\bar{c_k} X^{j+k}
= \sum_{j,k} c_j \bar{c_k} m_{j+k}$.  This says the Hankel matrix, $M =
[m_{j+k}]_{j,k}$, is positive definite.  The converse is also true: if
the Hankel matrix is positive definite there exists a random variable
with the corresponding moments.  This is not a trivial result and the
random variable might not be unique.

<!--
% Dunford Schwartz Volume 2 pg 1251.
% Extending unbounded symmetric operators. Deficiency index.
-->
 
### Cumulants

The _cumulant_ of a random variable, $X$, is $\kappa(s) = \kappa^X(s) = \log E\exp(sX)$.
The _cumulants_, $\kappa_n$, are defined by $\kappa(s) = \sum_{n>0}\kappa_n s^n/n!$.

It is easy to see $\kappa_1 = E X$ and $\kappa_2 = \Var X$. The third and fourth cumulants
are related to skew and kurtosis. We will see the exact relationship below.

If $c$ is a constant then $\kappa^{cX}(s) = \kappa^X(cs)$ so $\kappa^{cX}_n = c^n\kappa^X_n$.
If $X$ and $Y$ are independent then $\kappa^{X + Y}(s) = \kappa^X(s) + \kappa^Y(s)$ so
$\kappa^{X + Y}_n = \kappa^X_n + \kappa^Y_n$$

#### Bell Polynomial

The relationship between moments and cumulants is given by _Bell polynomials_.
They are defined by $\exp(\sum_1^infty a_n s^n/n!) = \sum_0^\infty B_n(a_1,\ldots,a_n) s^n/n!$.
Taking the derivative with respect to $s$ and equating powers of $s$ shows
$B_0 = 1$ and $B_{n+1}(a_1,\ldots,a_{n+1} = \sum_{k=0}^n \binom{n}{k} B_{n-k}(a_1,\ldots,a_{n-k}) a_{k+1}$.

Bell polynomials show the connection between the moments and the cumulants
of a random variable since $E \exp(sX) = \sum_0^\infty E X^n s^n/n! =
\sum_0^\infty m_n s^n/n!$ where $m_n$ is the $n$-th moment and $E \exp(sX)
= \exp(\kappa(s)) = \exp(\sum_{n=1}^\infty \kappa_n s^n/n!)$.

Excercise: Show $m_n = \sum_{k=1}^n B_k(\kappa_1,\ldots,\kappa_n)$.

Exercise: Find the first five Bell polynomials.

In particular $m_1 = \kappa_1$ and $m_2 = \kappa_1^2 + \kappa_2$ so
$\kappa_1$ is the mean and $\kappa_2$ is the variance. If the mean is 0 and
the variance is 1, then $\kappa_3$ is the skew and $\kappa_4$ is the
[excess kurtosis](https://en.wikipedia.org/wiki/Kurtosis#Excess_kurtosis).


<!--
%Exercise. (Inclusion-Exclusion principal) Let $S$ be a finite set and
%let $f$ be any function defined on subsets of $S$.
%Define $\phi f(T) = \sum_{U\supseteq T} f(U)$ and
%$\psi g(T) = \sum_{U\supseteq T} (-1)^{|U| - |T|} g(T)$.
%These are both operators from $2^S\to\mathbf{R}$.
%Show $\phi\psi g = g$ and $\psi\phi f = f$.

%Hint: Group the sum by $|Y| - |T|$.
-->

## Conditional Expectation

The _conditional expectation_ of an event $B$ given an event $A$ is
$P(B|A) = P(B\cap A)/P(A)$. In some sense, this reduces the sample space to $A$.
In particular, $P(A|A) = 1$.
Since $P(A|B) = P(A\cap B)/P(B)$ we have $P(A|B) = P(B|A)P(A)/P(B)$. 
This is the simplest form of Bayes Theorem. It shows how to update your degree
of belief based on new information. Every probability is conditional on given information.

Define $E[X|A] = E[X 1_A]/P(A)$ for any random variable $X$. If $X = 1_B$ then this
coincides with the definition of conditional expectation above.

This is how we define $E[X|\mathcal{A}]:\mathcal{A}\to\mathbf{R}$ on atoms of $\mathcal{A}$.

## Joint Distribution

Two random variables, $X$ and $Y$, are defined by their _joint
distribution_, $H(x,y) = P(X\le x, Y\le y)$.  For example, the point $(X,Y)$ is
in the square $(a,b]\times (c,d]$ with probability
$P(a < X \le b, c < Y \le d) = P(X \le b, Y \le d) - P(X \le a) - P(Y \le c) + P(X \le a, Y \le c)$.

The _marginal distbutions_ are $F(x) = H(x,\infty)$ and $G(y) =  H(\infty,y)$,
where $F$ and $G$ are the cumulative distributions of $X$ and $Y$ respectively.

In general, the joint distribution of $X_1$, \ldots, $X_n$ is
$F(x_1,\ldots,x_n) = P(X_1\le x_1,\ldots, X_n\le x_n$).

### Independent

The random variables $X$ and $Y$ are _independent_ if $F^{X,Y}(x,y) = F^X(x)F^Y(y)$ for all $x$ and $y$.
This is equivalent to $P(X\in A,Y\in B) = P(X\in A)P(Y\in B)$ for any sets $A$ and $B$.

We also have that $Ef(X)g(Y) = Ef(X) Eg(Y)$ for and functions $f$ and $g$ whenever all expected
values exist.

Exercise: Prove this for the case $f = \sum_i a_i 1_{A_i}$ and $g = \sum_j b_j 1_{B_j}$.

In general, $X_1$, \ldots, $X_n$ are independent if
$F(x_1,\ldots,x_n) = F_1(x_1)\cdots F_n(x_n)$, where $F_j$ is the law of $X_j$.

### Copulas

A _copula_ is the joint distribution of uniformly distributed random variables on the unit interval.
Let $U$ and $V$ be two uniformly distributed random variables.
The copula of $X$ and $Y$ is the joint distribution of $F^{-1}(X)$ and $G^{-1}(Y)$ where
$F$ and $G$ are the cumulative distributions of $X$ and $Y$ respectively:
$C^{X,Y=}(u,v) = P(F^{-1}(X) \le u, G^{-1}(Y) \le v)$.

Exercise: Show $C^{X,Y}(u,v) = H(F(u),G(v))$ where $C^{X,Y}$ is the copula of $X$ and $Y$,
and $H$ is the joint distribution of $X$ and $Y$.

Exercise: Show $H(x,y) = C(F^{-1}(x), G^{-1}(y))$

This shows how to use the copula and marginal distributions to get the joint distribution.

If $U$ and $V$ are independent, uniformly distributed random variables on the unit interval
then $C(u,v) = uv$.

If $V=U$ then their joint distribution is
$C(u,v) = P(U\le u, V\le v) = P(U\le u, U\le v) = P(U\le \min\{u, v\}) = \min\{u,v\} = M(u,v)$.

If $V=1-U$ then their joint distribution is $C(u,v) = P(U\le u, V\le v) = P(U\le u, 1-U\le v)
= P(1-v\le U\le u) = \max\{u - (1 -v), 0\} = \max\{u + v - 1, 0\} = W(u,v)$

Exercise: (Frechet-Hoeffding) For every copula, $W \le C \le M$.

### Characteristic Function

The _characteristic function_ of a random variable, $X$, is $\xi(t) = \kappa(it)$.

### Fourier Transform

The _Fourier transform_ is $\psi(t) = \xi(-t) = \kappa(-it)$.
Clearly $\psi(t) = \xi(-t)$.

### Examples

Move!!!
These can be used to prove the _central limit theorem_:
if $X_j$ are independent, identically distributed random variables with mean zero
and variance one, then $(X_1 + \cdots X_n)/sqrt{n}$ converges to a standard
normal random variable.

If $X$ is normal then $E\exp(X) = \exp(EX + \Var(X)/2)$ so the cumulants satisfy
$\kappa_n = 0$ for $n > 2$.

If $X$ is Poisson with parameter $\lambda$ then 
\begin{align*}
Ee^{sX} &= \sum_{k=0}^\infty e^{sk} e^{-\lambda}\lambda^k/k!\\
        &= \sum_{k=0}^\infty  (e^s\lambda)^ke^{-\lambda}/k!\\
		&= \exp(\lambda(e^s - 1))
\end{align*}
so $\kappa(s) = \lambda(e^s - 1)$ and $\kappa_n = \lambda$ for all $n$.
### Normal

### Poisson

### Infinitely Divisible

A random variable, $X$, is _infinitely divisible_ if for any positive integer, $n$,
there exist independent, identically distributed random variables $X_1$,\ldots,$X_n$
such that $X_1 + \cdots + X_n$ has the same law as $X$.

Characteristic function ...

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

## Examples

### Discrete

A _discrete_ random variable is defined by
$x_i\in\mathbf{R}$ and $p_i > 0$ with $\sum p_i = 1$.
The probability the random variable takes on value $x_i$ is $p_i$.

If a discrete random variable takes on a finite number of values, $n$, then
if $p_i = 1/n$ for all $i$ the variable is called _discrete uniform_.

#### Bernoulli

A _Bernoulli_ random variable is a discrete random variable with $P(X = 1) = p$, $P(X = 0) = 1 - p$.

#### Binomial

A _Binomial_ random variable is a discrete random variable with
$P(X = k) = \binom{n}{k}/2^n$, $k = 0$, \ldots, $n$.

### Uniform

A _continuous uniform_ random variable on the interval $[a,b]$ has density
$f(x) = 1_{[a,b]}/(b - a)$.


### Normal

The _standard normal_ random variable, $Z$, has density function $\phi(x) = \exp(-x^2/2)/\sqrt{2\pi}$.
