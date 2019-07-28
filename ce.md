# Conditional Expectation and Independence

Let $\langle P, \Omega, \AA\rangle$ be a probablity space of a set,
a positive measure with mass 1, and an algebra/partition.

The standard definition of _conditional expectation_ is if $A$ and $B$ are events,
the probability of $A$ given $B$ is $P(A|B) = P(A\cap B)/P(B)$. In particular
$P(B|B) = 1$. This localizes the probability to the set $B$.

An event $A$ is _independent_ of $B$ if $P(A|B) = P(A)$. The event $B$ provides
no additional information about $A$. Independence is symmetrical. It is also
true that $P(B|A) = P(A)$ since $P(B|A) = P(B\cap A)/P(A) = P(A|B)P(B)/P(A)$.???

It is also true that $P(A\cap B) = P(A) P(B)$.

Two algebras $\AA$ and $\BB$ are independent if for every $A\in\AA$ and $B\in\BB$
we have $P(A\cap B) = P(A) P(B)$.

## Random Variables

A random variable is a function $X\colon\Omega\to\RR$. 
