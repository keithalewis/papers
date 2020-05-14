# Set Theory

_Set Theory_ involves _elements_, _members_, and _containment_.

Standard set theory uses the symbol epsilon, &epsilon;, to indicate memership.
The set _S_ is an _element_ of set _T_ is written _S_ &in; _T_ and we say
_S_ is a _member_ of _T_. The set _S_ is _contained in_ the set _T_ is written
_S_ &subseteq; _T_ and means every element of _S_ is also an element of _T_.


## Remarks

"The language of Set Theory is epsilon" is the flippant way logicians
describe set theory.

## Musings

Define set theory as a category with objects sets and arrows indicating containment.

There exist _C_ &rarr; _A_ and _C_ &rarr; _B_  iff _C_ &subseteq; _A_ &cap; _B_.

There exist _A_ &rarr; _C_ and _B_ &rarr; _C_  iff _A_ &cup; _B_ &subseteq; _C_.

given C &rarr; A, C &rarr; B exists C &rarr; A &cap; B, C &rarr; A &cap; B ...

x &in; y iff x &rarr; y

### Zermelo-Fraenkel

__Extensionality__ _A_ = _B_ iff _A_ &rarr; _B_ and _B_ &rarr; _A_.

__Null Set__ is an (the) initial element. For all _A_ &emptyset; &rarr; _A_.
