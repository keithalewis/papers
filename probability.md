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

Excercise. Let $S$ be a finite set and let $f$ be any function defined on subsets of $S$.
define $\phi f(T) = \sum_{Y\supseteq T} f(Y)$ and $\psi f(T) = \sum_{Y\supseteq T}
(-1)^{|Y - T} f(T)$.2^{|Y - T} f(T)$. Show $\phi\psi f = f$ and $\psi\phi f = f$.

## Algebras of Sets

An _algebra of sets_ on $\Omega$ is a collection of subsets, $\mathcal{A}$, that is
closed under complement and union.

## Remarks

Cheval de Mere

Pascal

Bernoulli(s)

Kolmogorov

Willy Feller
