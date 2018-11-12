---
title: Algebras
author: Keith A. Lewis
institute: KALX, LLC
classoption: fleqn
---
<div id="kalx"><a href="mailto:kal@kalx.net">kal@kalx.net</a></div>

!!!Short explanatory blurb goes here...

## Partition

A _partition_ of a set $\Omega$ is a collection of sets that are mutually
disjoint and contain every element of $\Omega$.

Mathematically, a partition $\AA = \{A_i\}_{i\in I}$ where $A_i\cap A_j= \emptyset$
is empty if $i\not=j$ and $\Omega = \cup_{i\in I} A_i$ is the union of all
sets in the algebra.

A _measure_ is a function $m\colon\AA\to\RR$

These are not the standard mathematical definitions but are the same if an algebra is finite.
Any mathematical model implemented on a computer is finite, obviously.

The usual definition of an _algebra_ is the collection of arbitrary unions of the sets $\{A_i\}$.
The usual definition of a measure is $m(\cup_{i\in I} A_i) = \sum_{i\in I} m(A_i)$.

## Measurable 

A _measurable_ function (with respect to $\AA$) is a function $m\colon\AA\to\RR$

This is not the standard mathematical definition but it is the same as usual if an algebra is finite.

Note that a measurable function and a measure have the same definition and multiplying a function and
a measure is also a measure.

## Conditional Expectation

If $P$ is a positive measure with mass 1, also called a _probability
measure_ even if it is not the probablity of anything, the _conditional
expectation_ of $A$ given $B$ is $P(A|B) = P(A\cap B)/P(B)$.

If $X\AA\to\RR$ is a measurable functions and $\BB\subset\AA$ then $Y = E[X|\AA]$ is the
_conditional expectation_ of $X$ given $\BB$. It is defined by $YP(B)
= \sum\{X(A)P(A): A\subseteq B\}$.
