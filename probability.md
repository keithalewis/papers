# Probability

Probability is an extension of logic. Instead of propositions being
either true or false a degree of belief can be specified for events:
the probability, which is a number between 0 and 1.

A _probability model_ specifies a _sample space_ and a _probability measure_.
The sample space is just a set of what can possibly happen: heads or tails as the outcome
of a coin toss, the numbers 1 through 6 as the outcomes of rolling a singled die,
the set of all sequences of 280 characters as a model of possible Twitter tweets.

People seem to be surprised probabilities are modeled using a set.
Sets have no structure, they are just a bag of things. 

An _event_ is a subset of a sample space. A _probability measure_ assigns a number
between 0 and 1 to events. If $\Omega$ is a sample space and $P$ is a probability
measure then $P(E\cup F) = P(E) + P(F) - P(E\cap F)$ for events $E$ and $F$:
the measure of the union of sets is the sum of the measure of each set minus
the measure of the intersection. This is the mathematical way to say measures
do not double count.

A probability measure must also satisfy $P(\emptyset) = 0$ and $P(\Omega) = 1$.

Exercise. If $Q$ is a measure with $Q(\emptyset) = a$ and $Q(\Omega) = b$,
show $(Q - a)/(b - a)$ is a probability measure.

Exercise. Show $\cup_{k=1}^n A_k = \sum_{k=1}^n (-1)^{k-1} \cap_{i\in I,|I|=k} A_i$. ???

Hint: Use $(1_A - 1_{A_1})\cdots (1_A - 1_{A_n}) = 0$, where $A = \cup_{k=1}^n A_k$.

Exercise. (Inclusion-Exclusion principal) Let $S$ be a finite set and
let $f$ be any function defined on subsets of $S$.
Define $\phi f(T) = \sum_{Y\supseteq T} f(Y)$ and
$\psi g(T) = \sum_{Y\supseteq T} (-1)^{|Y| - |T|} g(T)$.
Show $\phi\psi g = g$ and $\psi\phi f = f$.

## Algebras of Sets

An _algebra of sets_ on $\Omega$ is a collection of subsets,
$\mathcal{A}$, that is closed under complement and union. We also assume
the empty set belongs to $\mathcal{A}$. An _atom_ of an algebra is a member, $A$,
of the algebra such that if $B\subseteq A$ and $B$ is in the algebra, then
either $B = A$ or $B$ is the empty set.

Exercise. If an algebra on $\Omega$ is finite its atoms form a partition of $\Omega$.

Recall a _partition_ of a set is a collection of disjoint subsets whos union is equal to the set.

Hint: Show $A_\omega = \cap\{B\in\mathcal{A}:\omega\in B\}$, $\omega\in\Omega$, is an atom 

This shows there is a one-to-one correspondence between finite partitions and finite algebras
of sets.
A partition is the mathematical way of specifying partial information. Knowing the outcome
of a sample corresponds to complete knowledge. Knowing which atom the outcome belongs to
corresponds to partial knowledge. For example, the partition $\{\{1,3,5\},\{2,4,6\}\}$
corresponds to knowing whether the roll of a die is odd or even.

The coarsest partition $\{\Omega\}$ corresponds to no knowledge while the finest partition
$\{\{\omega\}:\omega\in\Omega\}$ corresponds to complete knowledge.

## Probability Spaces

A triple $\langle \Omega, P, \mathcal{A}\rangle$ where $\Omega$ is a set, $P$ is
a probability measure with domain $\mathcal{A}$ is called a _probability space_.
A _random variable_ is a function $X\colon\Omega\to\mathbf{R}$ that is $\mathcal{A}$
measureable: the sets $X^{-1}((-\infty, x])$ belong to $\mathcal{A}$ for $x\in\mathbf{R}$.

Exercise: If $\mathcal{A}$ is finite show a function is measurable if and only if it
is constant on atoms of $\mathcal{A}$.

In this case $X:\mathcal{A}\to\mathbf{R}$ is indeed a function on the atoms.

## Remarks

Cheval de Mere

Pascal

Bernoulli(s)

Kolmogorov

Willy Feller
