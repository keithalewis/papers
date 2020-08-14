# Relation

A _relation_ on a set $S$ is a subset $R\subseteq S\times S$. We write $aRb$ for $(a,b)\in R$.
It is _reflexive_ if $aRa$ for all $a\in S$, _symmetric_ if $aRb$ implies $bRa$ for $a,b\in S$,
and _transitive_ if $aRb$ and $bRc$ imply $aRc$ for $a,b,c\in S$.

An _equivalence relation_ satisfies all three properties. It partitions the set $S$ into
_cosets_ $[a] = \{b\in S:aRb\}$. The union of all cosets is $S$ and they are pairwise disjoint.

__Exercise__. _Show $a\in [a]$ for every $a\in S$_.

__Exercise__. _Show if $[a]\cap [b]\not=\emptyset$ then $[a] = [b]$.

A relation is _antisymmetric_ if $(a,b)\in R$ implies $(b,a)\not\in R$.

A _weak partial order_ is a relation that is antisymmetric, and transitive.

A _preorder_ is a relation that is reflexive and transitive.

A _partial order_ is a weak partial order that is reflexive.

A _total order_ has the property the either $aRb$ or $bRa$ for every $a,b\in S$.

A _directed set_ is a preorder where every pair of elements has an upper bound,
for every $a,b\in S$ there exists $c\in S$ with $aRc$ and $bRc$.


