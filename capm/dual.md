# Dual Vector Spaces

A _vector space_ is an _abelian group_ with a _scalar multiplication_ that satisfies the
_distributive law_ with respect to the vector space addition.

The ingredients are a set $V$ of vectors, a binary addition $V\times
V\to V$ that satisfies the abelian group axioms: $v + w = w + v$,
$0\in V$ is the additive identity $0 + v = v + 0 = v$ and every vector
has an additive inverse $-v$ with $v + (-v) = 0$.  A vector space also
specifies a _field_ $mathbf{F}$ (usually the real $\mathbf{R}$ or complex
$\mathbf{C}$ numbers) and a _scalar multiplication_ $\mathbf{F}\times
V\to V$ that satisfies the distributive law $t(v + w) = tv + tw$ for
$t\in\mathbf{F}$ and $v,w\in V$.

If $V$ and $W$ are vector spaces then a function $T\colon U\to V$ is
a _linear transformation_ if it preserves the vector space structures
$T(t v + w) = t Tv + T w$ for $t\in\mathbf{F}$ and $v,w\in V$.
