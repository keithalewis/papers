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
by a scalar value. For example, functions are vectors and linear transformations
between vector spaces are also vectors.

## Definition

The ingredients of a _vector space_ are a set $V$ of vectors and a binary
addition that satisfies the abelian group axioms:

Associative  
: $u + (v + w) = (u + v) + w$ for $u,v,w\in V$.  

Commutative  
: $v + w = w + v$ for $v,w\in V$.  

Identity  
: There is a $0\in V$ with $v + 0 = v$ for $v\in V$.  

Inverse  
: Every vector has an additive inverse $-v$ with $v + (-v) = 0$.  

A vector space also specifies a _field_ of scalars $\mathbf{F}$ (usually
the real $\mathbf{R}$ or complex $\mathbf{C}$ numbers) and a scalar
multiplication that satisfies the _distributive law_ 
$$
	\alpha(v + w) = \alpha v + \alpha w, \mathrm{\ for\ } \alpha\in\mathbf{F} \mathrm{\ and\ } v,w\in V.
$$

If $v + v = v$ then $v = 0$ for $v\in V$. Using the axioms
$$
\begin{aligned}
	v + v &= v & & \\
	(v + v) + (-v) &= v + (-v) &u = v\mathrm{\ implies\ } u + w = v + w \\
	v + (v + (-v)) &= v + (-v) &\mathrm{associative} \\
	v + 0 &= 0 &\mathrm{inverse} \\
	v &= 0 &\mathrm{identity} \\
\end{aligned}
$$

__Exercise__. _Show the additive identity is unique_.

_Hint_. If $0'$ is another identity then $0 = 0 + 0'$. Your proof can be
used for any group, abelian or not.

__Exercise__. _Show $(-1)v = -v$_.

_Hint_. The left hand side is the scalar multiplication of $-1\in\mathbf{F}$ by $v$.
The right hand side is the additive inverse of $v$. You need to show
$v + (-1)v = 0$.

## Linear Transformation

When studying mathematical objects it is useful to study functions
between them that preserve the structure of the objects.

If $V$ and $W$ are vector spaces over the same field $\mathbf{F}$ then
a function $T\colon V\to W$ is a _linear transformation_ if $T(a v + w)
= \alpha Tv + T w$ for $\alpha\in\mathbf{F}$ and $v,w\in V$.  Note $Tv$ and $Tw$
are in $W$. The set of all linear transformations from $V$ to $W$ is
denoted $\mathcal{L}(V,W)$.

__Exercise__. _Show $T(0) = 0$ for $T\in\mathcal{L}(V,W)$_.

_Hint_: The $0$ on the left-hand side is the additive identity of $V$
and the $0$ on the right-hand side is the additive identity of $W$.
Use $v + v = v$ implies $v = 0$.

__Exercise__. _Show $T(\alpha v) = \alpha(Tv)$ for $\alpha\in\mathbf{F}$ and $v\in V$.
and $v,w\in V$_.

_Hint_: Use $T(0) = 0$.

__Exercise__. _Show $T(\alpha v + \beta w) = \alpha (Tv) + \beta (Tw)$
for $\alpha ,\beta \in\mathbf{F}$ and $v,w\in V$_.

_Hint_: You don't need a hint if you solved the previous exercises.

The _kernel_ of a linear transformation $T\in\mathcal{L}(V,W)$ is
$$
	\mathrm{ker}\,T = \{v\in V:Tv = 0\}\subseteq V
$$
and its _range_ is 
$$
	\mathrm{ran}\,T = \{Tv:v\in V\}\subseteq W.
$$
If $\mathrm{ker}\,T = \{0\}$ then $T$ is _one-to-one_, or _injective_.
If $\mathrm{ran}\,T = W$ then $T$ is _onto_, or _surjective_.

__Exercise__. _If $T$ is injective show $Tv = Tw$ implies $v = w$_.

_Hint_: If $T$ is injective then $Tv = 0$ implies $v = 0$.

If $T$ is both one-to-one and onto, injective and surjective
(_bijective_), it is an _isomorphism_ between $V$ and $W$.
Isomorphisms induce an _equivalence relation_ on vector spaces.

__Exercise__. Show $V$ is isomorphic to $V$, if $V$ is isomorphic to $W$
then $W$ is isomorphic to $V$, and if $U$ is isomorphic to $V$ and
$V$ is isomorphic to $W$ then $U$ is isomorphic to $W$.

_Hint_: Isomorphisms are invertable.

## Subspace

Just as factoring an integer into its prime factors can give you useful
information about the integer, vector spaces can be usefully broken down into
smaller pieces.

A subset $W$ of a vector space $V$ is a _subspace_ if it is also a vector space.

__Exercise__. _Show $W$ is a subspace if and only if $W + W\subseteq W$ and
$\mathbf{F}W\subseteq W$_.

We use the notation $W + W = \{x + y:x\in W, y\in W\}$
and $\mathbf{F}W = \{aw:a\in\mathbf{F}, w\in W\}$.

__Exercise__. _Show $\mathrm{ker}\,T$ is a subspace of $V$ and $\mathrm{ran}\,T$
is a subspace of $W$ for $T\in\mathcal{L}(V,W)$_.

Note for any vector $v$ that $\mathbf{F}v$ is a subspace. It is the one-dimensional
subspace _spanned_ by $v$.

More generally, let $U$ be any collection of vectors in $V$.
The _span_ of the collection is 
$$
	\mathrm{span}\,U = \vee U = \{\sum_{u\in U} \alpha_u u\},
$$
where the sum is over any $\{\alpha_u\}_{u\in U}$ where only a finite
number of $\alpha_u\in\mathbf{F}$ are non-zero.

__Exercise__. _Show the span of $U$
is the smallest subspace of $V$ containing $U$_.

__Exercise__. _If $U$ and $W$ are subspaces of $V$ then $\mathrm{span}(U\cup V)
= U\vee W = \{u + w: u\in U, w\in W\}$_.

__Exercise__. If the span of $U\subseteq V$ is $V$ and $T\in\mathcal{L}(V,W)$
is surjective then the span of $TU = \{Tu:u\in U\}$ is $W$.

## Independent

A key property of a collection of vectors is _independence_.
A collection of vectors $U\subseteq V$ are independent if a finite sum
$\sum_{u\in U} \alpha_u u = 0$ implies $\alpha_u = 0$ for all $u\in U$.
If $\alpha_u\not = 0$ for some $u$ then
$u = -(1/\alpha_u)\sum_{w\not = u} \alpha_w w$ belongs to the span of $U\setminus \{u\}$.
We say $u$ is a _linear combinaton_ of the vectors in $U\setminus \{u\}$.

Independence ensures unique representations.

__Exercise__. _If $U$ are independent and the finite sums $\sum_{u\in U}\alpha_u u
= \sum_{u\in U}\beta_u u$ then $\alpha_u = \beta_u$ for all $u\in U$_.

Independence is preserved by injective linear transformations.

__Exercise__. _If $U\subseteq V$ are independent and $T\in\mathcal{L}(U,V)$ is injective
then $TU\subseteq W$ are independent_.

## Basis

A collection of vectors $U\subseteq V$ is a _basis_
of $V$ if they are independent and their span is $V$.

__Exercise__. _Show every vector $v\in V$ can be uniquely written
as $v = \sum_{u\in U}\alpha_u u$ for some $\alpha_u\in\mathbf{R}$_.

The _dimension_
of $V$ is the cardinality of a basis $U$. The fundamental fact about vector
spaces is that every basis has the same cardinality. This shows
the definition of dimension is well-defined.

__Theorem__. If $U$ and $U'$ are basis' of $V$ then $U$ and $U'$ have
the same cardinality.

## Eigenvector, Eigenvalue

If $Tv = \lambda v$ for some $\lambda\in\mathbf{R}$ then $\lambda$ is
an _eigenvalue_ of $T$ and $v$ is its corresponding _eigenvector_.
If $I$ is the _identity operator_ defined by $Iv = v$ for all $v$
and $\lambda$ is an eigenvalue, then $T - \lambda I$ is not invertable.

## Functional Calculus

Let $\mathcal{P}$ be the set of polynomials of one variable over the
scalar field $\mathbf{F}$.
