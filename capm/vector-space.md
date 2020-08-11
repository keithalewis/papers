---
title: Vector Spaces
author: Keith A. Lewis
institute: KALX, LLC
classoption: fleqn
fleqn: true
---

Vector spaces occupy a sweet spot in the menagerie of mathematical structures.
They are completely classified up to isomorphism by their _dimension_.
A _vector space_ is an _abelian group_ with a _scalar multiplication_ that satisfies the
_distributive law_ with respect to the vector space addition.
A vector is not just a list of numbers, it is a mathematical object that satisfies
certain conditions. Vectors can be added to get a new vector, or be multiplied
by a scalar value.
functions, linear transformations are also vectors

## Definition

The ingredients of a _vector space_ are a set $V$ of vectors and a binary
addition that satisfies the abelian group axioms: $v + w = w + v$, $0\in
V$ is the additive identity $v + 0 = v$ and every vector has an additive
inverse $-v$ with $v + (-v) = 0$.  A vector space also specifies a _field_
$\mathbf{F}$ (usually the real $\mathbf{R}$ or complex $\mathbf{C}$
numbers) and a scalar multiplication that satisfies the distributive
law $a(v + w) = av + aw$ for $a\in\mathbf{F}$ and $v,w\in V$.

__Exercise__. _Show the additive identity is unique_.

_Hint_. If $0'$ is another identity then $0 = 0 + 0'$. Your proof can be
used for any group, abelian or not.

__Exercise__. _Show $(-1)v = -v$.

_Hint_. The left hand side is the scalar multiplication of $-1\in\mathbf{F}$ by $v$.
The right hand side is the additive inverse of $v$. You need to show
$v + (-1)v = 0$.

## Linear Transformation

When studying mathematical objects it is useful to study functions
between them that preserve the structure of the objects.

If $V$ and $W$ are vector spaces over the same field $\mathbf{F}$ then
a function $T\colon V\to W$ is a _linear transformation_ if $T(a v + w)
= a Tv + T w$ for $a\in\mathbf{F}$ and $v,w\in V$.  Note $Tv$ and $Tw$
are in $W$.

__Exercise__. _Show $T(av + bw) = a(Tv) + b(Tw)$ for $a,b\in\mathbf{F}$
and $v,w\in V$_.

## Subspace

Just as factoring an integer into its prime factors can give you useful
information about the integer, vector spaces can be usefully broken down into
smaller pieces.

A subset $W$ of a vector space $V$ is a _subspace_ if it is also a vector space.

__Exercise__. _Show $W$ is a subspace if and only if $W + W\subseteq W$ and
$\mathbf{F}W\subseteq W$_.

We use the notation $W + W = \{x + y:x\in W, y\in W\}$
and $\mathbf{F}W = \{aw:a\in\mathbf{F}, w\in W\}$.

Note for any vector $v$ that $\mathbf{F}v$ is a subspace. It is the one-dimensional
subspace _spanned_ by $v$.

More generally, let $\{v_i\}_{i\in I}$ be any collection of vectors. The _span_ of the collection
is the smallest subspace containing all $v_i$, $i\in I$.

__Exercise__. _Show $\mathrm{span}(\{v_i\}_{i\in I}) = \{\sum_i a_i v_i\}$,
where the sum is over $\{a_i\}$ where only a finite
number of $a_i\in\mathbf{F}$ are non-zero, is the smallest subspace containing all $v_i$, $i\in I$.

## Independent

A key property of a collection of vectors is _independence_.
The vectors $\{v_i\}_{i\in I}$ are independent if a finite sum
$\sum_{i\in I} a_i v_i = 0$ implies $t_i = 0$ for all $i\in I$.
If $a_i\not = 0$ for some $i$ then
$v_i = (1/a_i)\sum_{j\not= i} a_j v_j$ belongs to the span of $\{v_j\}_{j\not= i}$.
We say $v_i$ is a _linear combinaton_ of $\{v_j\}_{j\not= i}$.

## Basis

A collection of vectors $\{v_i\}_{i\in I}$ where $v_i\in V$ is a _basis_
of $V$ if they are independent and their span is $V$. The _dimension_
of $V$ is the cardinality of $I$. The fundamental fact about vector
spaces is that if $\{w_j\}_{j\in J}$ is another basis then $J$ has the
same cardinality as $I$.
