---
title: Vector Spaces
author: Keith A. Lewis
institute: KALX, LLC
classoption: fleqn
fleqn: true
---

Vector spaces occupy a sweet spot in the menagerie of mathematical structures.
They are completely classified up to _isomorphism_ by their _dimension_.
A _vector space_ is an _abelian group_ with a _scalar multiplication_ that satisfies the
_distributive law_.
A vector is not just a list of numbers, it is a mathematical object that satisfies
certain conditions. Vectors can be anything with an addition and scalar multiplication
that satisfy these conditions.
For example, _functions_ are vectors and _linear transformations_
between vector spaces are also vectors.

Let $K = \operatorname{ker}T$ be xxx.

Linear transformations from a finite dimensional vector space to itself
are categorized up to _similariy_ by a list of _eigenvalues_ together
with their _multiplicities_.

## Definition

The ingredients of a _vector space_ are a set $V$ of vectors and a binary
addition that satisfies the abelian group axioms:

Associative  
: $x + (y + z) = (x + y) + z$ for $x,y,z\in V$.  

Commutative  
: $x + y = y + x$ for $x,y\in V$.  

Identity  
: There is a $0\in V$ with $x + 0 = x$ for $x\in V$.  

Inverse  
: Every vector has an additive inverse $-x$ with $x + (-x) = 0$.  

A vector space also specifies a _field_ of scalars $𝑭$ (usually
the real $𝑹$ or complex $𝑪$ numbers) and a scalar
multiplication that satisfies the _distributive law_ 
$$
	α(x + y) = α x + α y, \mathrm{\ for\ } α\in𝑭 \mathrm{\ and\ } x,y\in V.
$$

If $x + x = x$ then $x = 0$ for $x\in V$. Using the axioms
$$
\begin{aligned}
	x + x &= x & & \\
	(x + x) + (-x) &= x + (-x) &u = v\mathrm{\ implies\ } u + w = v + w \\
	x + (x + (-x)) &= x + (-x) &\mathrm{associative} \\
	x + 0 &= 0 &\mathrm{inverse} \\
	x &= 0 &\mathrm{identity} \\
\end{aligned}
$$

__Exercise__. _Show the additive identity is unique_.

_Hint_. If $0'$ is another identity then $0 = 0 + 0'$. Your proof can be
used for any group, abelian or not.

__Exercise__. _Show $(-1)x = -x$_.

_Hint_. The left hand side is the scalar multiplication of $-1\in𝑭$ by $x$.
The right hand side is the additive inverse of $x$. You need to show
$x + (-1)x = 0$. Use the distributed law.

## Linear Transformation

When studying mathematical objects it is useful to study functions
between them that preserve the structure of the objects.

If $V$ and $W$ are vector spaces over the same field $𝑭$ then
a function $T\colon V\to W$ is a _linear transformation_ if $T(α x + y)
= α Tx + T y$ for $α\in𝑭$ and $x,y\in V$.  Note $Tx$ and $Ty$
are in $W$. The set of all linear transformations from $V$ to $W$ is
denoted $\mathcal{L}(V,W)$. If $W = V$ we write $\mathcal{L}(V)$
and call the elements _endomorphisms_ of $V$.

Linear transformations are a vector space with addition $T + S$ defined by
$(T + S)x = Tx + Sx$ and scalar multiplication by
$(αT)x = α(Tx)$ for $α\in𝑭$ and $x\in V$.

__Exercise__. _Show $T(0) = 0$ for $T\in\mathcal{L}(V,W)$_.

_Hint_: The $0$ on the left-hand side is the additive identity of $V$
and the $0$ on the right-hand side is the additive identity of $W$.
Use $x + x = x$ implies $x = 0$.

__Exercise__. _Show $T(α x) = α(Tx)$ for $α\in𝑭$ and $x\in V$.
and $v,w\in V$_.

_Hint_: Use $T(0) = 0$.

__Exercise__. _Show $T(α x + β y) = α (Tx) + β (Ty)$
for $α ,β \in𝑭$ and $x,y\in V$_.

_Hint_: You don't need a hint if you solved the previous exercises.

The _kernel_ of a linear transformation $T\in\mathcal{L}(V,W)$ is
$$
	\operatorname{ker}\,T = \{x\in V:Tx = 0\}\subseteq V
$$
and its _range_ is 
$$
	\operatorname{ran}T = \{Tx:x\in V\}\subseteq W.
$$
If $\operatorname{ker}T = \{0\}$ then $T$ is _one-to-one_, or _injective_.
If $\operatorname{ran}T = W$ then $T$ is _onto_, or _surjective_.

__Exercise__. _If $T$ is injective show $Tx = Ty$ implies $x = y$ for all $x,y\in V$_.

_Hint_: If $T$ is injective then $Tx = 0$ implies $x = 0$.

If $T$ is both one-to-one and onto, injective and surjective
(_bijective_), it is an _isomorphism_ between $V$ and $W$.
Isomorphisms induce an _equivalence relation_ on vector spaces.

__Exercise__. Show $V$ is isomorphic to $V$, if $V$ is isomorphic to $W$
then $W$ is isomorphic to $V$, and if $U$ is isomorphic to $V$ and
$V$ is isomorphic to $W$ then $U$ is isomorphic to $W$.

_Hint_: Isomorphisms are invertable.

Two operators $R,T\in\mathcal{L}(V)$ are _similar_ if there exists
an isommorphism $S\in\mathcal{L}(V)$ with $R = S^{-1}TS$.

__Exercise__. _Show similarity is an equivalence relation_.

_Hint_. $T$ is similar to itself via $S = I$, the identity transformation.

### Dual Space

The _dual vector space_ of the vector space $V$ is the space of
_linear functionals_ $V^* = \mathcal{L}(V,𝑭)$.
For $v\in V$ and $v^*\in V^*$ we write the _dual pairing_
$\langle v, v^*\rangle = v*(v)\in𝑭$.

__Exercise__. _Show if $\langle v,v^*\rangle = \langle v',v^*\rangle$
for all $v^*\in V^*$ then $v = v'$_.

_Hint_. Show if $\langle v,v^*\rangle = 0$ for all $v^*\in V^*$ then $v = 0$.

For $T\in\mathcal{L}(V, W)$ the _adjoint_ $T^*\in\mathcal{L}(W^*, V^*)$ is
defined by $\langle Tv, w^*\rangle = \langle v, T^*w^*\rangle$
for $v\in V$ and $w^*\in W^*$.

### Ring of Endomorphisms

The endomorphisms $\mathcal{L}(V)$ are more than just a vector space.
They have a _product_ defined by composition $(ST)x = S(Tx)$ for
$S,T\in\mathcal{L}(V)$ and $x\in V$. This makes them a _ring_.
Recall a ring is a vector space with a product that satisfies

Associative  
: $R(ST) = (RS)T$

Identity  
: There is a multiplicative identity $I$ with $IR = R$

Distibutive
: $R(S + T) = RS + RT$

Composition is associative, the identity is $Ix = x$ for $x\in V$, and
the distibutive law follows from linearity $R(S+T)x = R(Sx + Tx) = RSx + RTx$.

The prototypical example of a ring is the set of polynomials (having
coefficients in $𝑭$) in one variable $𝑭[t]
= \{\sum_{n\ge0} α_n t^n\}$, where $α_n\in𝑭$ are
non-zero for only a finite number of $n$.

Note: If we replace the requirement that the scalars are a field by
the requirement they are a ring we have a _module_ instead of a vector space.
Modules are not (by a long shot) characterized by their dimension.


## Subspace

Just as factoring an integer into its prime factors can give you useful
information about the integer, vector spaces can be usefully broken down into
smaller pieces.

A subset $U$ of a vector space $V$ is a _subspace_ if it is also a vector space.

__Exercise__. _Show $U$ is a subspace if and only if $U + U\subseteq U$ and
$𝑭U\subseteq U$_.

We use the notation $U + U = \{x + y:x\in U, y\in U\}$
and $𝑭U = \{α x:α\in𝑭, x\in U\}$.

__Exercise__. _Show $\operatorname{ker}\,T$ is a subspace of $V$ and $\operatorname{ran}\,T$
is a subspace of $W$ for any $T\in\mathcal{L}(V,W)$_.

### Quotient Space

If $U\subseteq V$ is a subspace we define the _quotient space_
$V/U = \{x + U:x\in V\}$ where the _coset_ $x + U = \{x + u:u\in U\}$. 

__Lemma__. _If $U$ is a subspace of $V$ then $V/U$ is a vector space_.

__Exercise__. _Show $(x + U) + (y + U) = (x + y) + U$ and $α(x + U) = α x + U$
for any $α\in𝑭$ and $x,y\in V$_.

This shows addition and scalar multiplication is well-defined in the quotient space.

__Exercise__. _Show $0 + U$ is the additive identity of the quotient space_.

__Exercise__. _Show $V/U + V/U\subseteq V/U$ and $𝑭(V/U)\subseteq V/U$_.

The lemma is now proved.

Quotient spaces allow us to decompose vector spaces into two smaller vector spaces.
If $U$ is a subspace of $V$ then every vector has a unique decomposition into
a vector in $U$ and a vector in $V/U$.

__Exercise__. _If $v = u + w$ and $v = u' + w'$ where $u,u'\in U$ and $w,w'\in V$ then
$u = u'$ and $w + U = w' + U$_.

_Hint_. Show $w + U = w' + U$ using $0 = v - v = (w - w') + (u - u')$ and $u,u'\in U$.
Show $u = u'$ using $v = u + (v - u)$ so $w = v - u$ and ...

Every $T\in\mathcal{L}(V,W)$ factors into
$V\to V/\operatorname{ker}\,T\to \operatorname{ran}\,T\to W$ where
$V\to V/\operatorname{ker}\,T$ sends $v\mapsto v + \operatorname{ker}\,T$,
$V/\operatorname{ker}\,T\to\operatorname{ran}\,T$ sends $v + \operatorname{ker}\,T\mapsto Tv$,
and $\operatorname{ran}\,T\to W$ is just inclusion $Tv\mapsto Tv\in W$.

We already know $(x + U) + (y + U) = (x + y) + U$ and $α(x + U) = α x + U$
for any subspace $U$ so the first map is linear.

__Exercise__. _Show if $x + \operatorname{ker}\,T = y + \operatorname{ker}\,T$ then $Tx = Ty$._

This shows the second map is well-defined.

__Exercise__. _Show $V\to V/\operatorname{ker}\,T$ is surjective_.

__Exercise__. _Show $V/\operatorname{ker}\,T\to V$ is injective_.

__Exercise__. _Show $V/\operatorname{ker}\,T\to\operatorname{ran}\,T$ is bijective_.

### External Sum

The _external sum_ of vector spaces $V$ and $W$ is the set $V\times
W$ with addition $(v,w) + (x, y) = (v + x, w + y)$, where $v,x\in V$
and $w,y\in W$, and scalar multiplication $α(v, w) = (α v,
α w)$ for $α\in𝑭$.  The external sum addition and scalar
multiplication are defined in terms of those for $V$ and $W$ in the
first and second elements (respectively) of the pairs on the right-hand side.

__Exercise__. _Show the external sum is a vector space_.

The previous section shows every vector space $V$ is the external
sum of $U$ and $V/U$ for any subspace $U\subseteq V$.

### Span

If $v\in V$ then $𝑭\{v\} = \{α v:α\in𝑭\}$ is a subspace.
It is the one-dimensional subspace _spanned_ by $v$.

More generally, let $X$ be any collection of vectors in $V$.
The _span_ of the collection is 
$$
	\operatorname{span}\,X = \vee X = \{\sum_{x\in X} α_x x\},
$$
where the sum is over any $\{α_x\}_{x\in X}$

We could say $X = \{x_i\}_{i\in I}$ where $x_i\in X$ for all $i\in I$
but it is simpler to
say $X = \{x\}_{x\in X}$ without dragging in an index set $I$.

__Exercise__. _Show the span of $X$ is the smallest subspace of $V$ containing $X$_.

__Exercise__. _If $U$ and $W$ are subspaces of $V$ then $\operatorname{span}(U\cup V)
= U\vee W = \{u + w: u\in U, w\in W\}$_.

__Exercise__. _If the span of $X\subseteq V$ is $V$ and $T\in\mathcal{L}(V,W)$
is surjective then the span of $TX = \{Tx:x\in X\}$ is $W$_.


## Independent

A key property of a collection of vectors is _independence_.  A collection
of vectors $X\subseteq V$ are independent if every _linear combination_
$\sum_{x\in X} α_x x = 0$ implies $α_x = 0$ for all $x\in X$.
If $α_x\not = 0$ for some $x$ then
$x = -(1/α_x)\sum_{y\not = x} α_y y$ is a linear combination
of vectors in $X\setminus \{x\}$.
In this case $X$ is _linearly dependent_ and $X\setminus\{x\}$
has the same span.


__Exercise__. Every $X\subseteq V$ contains an independent subset $Y\subseteq X$
that is independent.

_Hint_. Zorn's lemma using $Y\preceq X$ if and only if $X\subseteq Y$.

Independence ensures unique representations.

__Exercise__. _If $X$ are independent and the finite sums $\sum_{x\in X}α_x x
= \sum_{x\in X}β_x x$ then $α_x = β_x$ for all $x\in X$_.

Independence is preserved by injective linear transformations.

__Exercise__. _If $X\subseteq V$ are independent and $T\in\mathcal{L}(V,W)$ is injective
then $TU\subseteq W$ are independent_.

## Basis

A collection of vectors $X\subseteq V$ is a _basis_
of $V$ if they are independent and their span is $V$.

__Exercise__. _Show every vector $v\in V$ can be uniquely written
as $v = \sum_{x\in X}α_x x$ for some $α_x\in𝑹$_.

The _dimension_
of $V$ is the cardinality of a basis $X$. The fundamental fact about vector
spaces is that every basis has the same cardinality. This shows
the definition of dimension is well-defined.

__Theorem__. If $X$ and $X'$ are basis' of $V$ then $X$ and $X'$ have
the same cardinality.

Classical texts prove this for finite dimensional vector spaces
using the Steinitz exchange lemma. Our proof works for any dimension.

## Inner Product Space

A function $(.,.)\colon V\times V\to𝑭$ with $y\mapsto (x,y)$
and $y\mapsto (y,x)$ linear in $y$ for each $x\in V$ is a _bilinear_
function. If also $(α x,y) = (x, \bar{α} y)$ for $α\in𝑭$ and
$x,y\in V$ it is _sesquilinear. 
An _inner product_ on a vector space V is a _sesquilinear_ form
that is also _non-singular_, $(x, x) = 0$ implies $x = 0$.

__Exercise__. _If the inner product is singular
then $K = \{x:(x,x) = 0\}$ is a subspace of $V$. The inner product on
$V/K$ defined by $(x + K, y + K) = (x, y)$ is well-defined
and non-singular_.

The _norm_ of a vector is $\|x\| = \sqrt{(x,x)}$. The Cauchy-Schwartz
inequality is $|(x,y)|\le\|x\| \|y\|$ with equality if and only
if $x$ and $y$ are linearly dependent.
This follows from
$0\le \|x - \lambda y\|^2 = \|x\|^2 - 2\operatorname{Re}\,\lambda (x, y) + |\lambda|^2\|y\|^2$
and taking $\lambda = (x,y)/\|y\|^2$. Equality holds if and only
if $x = \lambda y$.

If $T\in\mathcal{L}(V,V^*)$ then $(x,y) = \langle x, Ty\rangle$ is bilinear.

Inner products are used to define _adjoints_. If $T\in\mathcal{L}(V,W)$...

If $V$ is finite dimensional and $\{e_i\}$ is a basis we can define an inner
$(x,y) = \sum_i x_i y_i$ where $x_i = (x,e_i)$ and $y_i = (y, e_i)$.

[Grobner basis...]

## Eigenvector, Eigenvalue

If $Tv = \lambda v$ for some $\lambda\in𝑹$ then $\lambda$ is
an _eigenvalue_ of $T$ and $v$ is its corresponding _eigenvector_.
If $I$ is the _identity operator_ defined by $Iv = v$ for all $v$
and $\lambda$ is an eigenvalue, then $T - \lambda I$ is not invertable
since $(T - \lambda I)v = 0$.

If the eigenvectors of $T$ are independent ...
And form a basis... 
Then $Tv_i = \lambda_i vi_i$ and $TV = \sum \lambda_i v_i$.
We say $T$ is _diagonalizable_.

If $T$ has only one eigenvalue... (Jordan form)

__Theorem__. If $V$ is finite dimensional every operator in $\mathcal{L}(V)$ has an eigenvector.

If $T\in\mathcal{L}(V)$ and $Tx = 0$ for some $x\in V$ then $x$ is an eigenvector with eigenvalue $0$

If $(x,y) = \|x\| \|y\|$ then $α x = y$ for some $α\in𝑭$.

There exists $x^*$ such that $\|x*\| \ge \|T e\|$ for $\|e\| = 1$.

Let $x^* = Te^*$. $\|x^*\|^2 = (x^*, Te^*) \le \|x^*\| \|Te^*\| \le \|x^*\|^2$
so $Te^* = \lambda x^*$ for some scalar $\lambda$.


## Polynomial Functional Calculus

Let $\mathcal{P}$ be the _ring_ of polynomials of one variable over the
scalar field $𝑭$. Define $\Phi\mathcal{P}\to \mathcal{L}(V)$
by $\Phi(p) = p(T)$.

# Remarks

A _relation_ on a set $S$ is a subset $R\subseteq S\times S$. We write $aRb$ for $(a,b)\in R$.
It is _reflexive_ if $aRa$ for all $a\in S$, _symmetric_ if $aRb$ implies $bRa$ for $a,b\in S$,
and _transitive_ if $aRb$ and $bRc$ imply $aRc$ for $a,b,c\in S$.

An _equivalence relation_ satisfies all three properties. It partitions the set $S$ into
_cosets_ $[a] = \{b\in S:aRb\}$. The union of all cosets is $S$ and they are pairwise disjoint.

By reflexivity $a\in [a]$. If $c\in [a]\cap [b]$ then
$[a] = [b]$ by transitivity.

"mod out" by the relation means identifying two cosets if they are equal.

$I\supset R$, $R' = R$, $R^2\subseteq R$.

Infinite sums. What does $\sum_{x\in X} α_x x$ for $α_x\in𝑭$ mean?
Define $+\colon 𝑭^I\times V^I\to V$ for any $I$ as follows: ...
We introduce $I$ since the scalars and vectors must be indexed by the same set.
We are really defining $+\colon 2^V\times𝑭^I\times V^I\to V$...
