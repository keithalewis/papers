# Category Theory

Vocabulary: _object_, _arrow_, _composition_,
_identity arrow_, _associative law_.

## Objects and Arrows

f: A -> B is an _arrow_, f, from object A to object B.

A is the _domain_ of f and B is the _codomain_ of f,
aka _range_, _target_, or _but_ if you parlez Francais,
but codomain is more apropos when we get to 'opposite day' furthur on.

We could do away with objects using domain and codomain,
just as it is possible to use nand to define the logical operators
not, and, or, implies, but why make things more difficult?

## Composition

If f: A -> B and g: B -> C then there exists an arrow
g o f: A -> C, the _composition_ of f with g.

Or maybe the composition of g with f. Some people get caught
up with trivialities. How come f and g get written in the
reverse order?

You could define f;g (or your favorite binary operator symbol
instead of ;) to be g o f. Or just write the arrows backwards.
Let's drop the ' o ' and write gf instead.

## Identity Arrow

On to more interesting things. Every object has an _identity arrow_.
If f: A -> B then the identity arrows 1_A and 1_B satisfy
f 1_A = f = 1_B f. Or maybe only somewhat more interesing.
You can always throw in identity arrows if they don't exist.

## Associative Law

If f: A -> B, g: B -> C, and h: C -> D then hgf is unambiguous
in category theory. The associative law is (hg)f = h(gf).

## Examples

It is impossible to understand Category Theory without understanding
examples of categories. That is its raison d'etre. Many seemingly
dissimilar constructs can be unified a la mode de Category Theory.

The primary example of a category is _Set_. The objects are sets and
the arrows are functions. People tried to come up with a purely
category theory notion of set and ended up with _topos_ theory.
One does not simply consider 'elements' of a 'set'. Long story.

Then there is _Par_, the category of partial functions, and _Rel_
the category of relations.

Given sets A and B, a _relation_ is a subset of the cartesian product A x B.
Composition of R, contained in A x B, and S contained in B x C is
SR = {(a,c) in A x C : there is a b in B with (a,b) in R and (b,c) in S}

Exercise: Show the identity 1_A = {(a,a) : a in A} and that composition is associative.

There are a slew of examples of categories where the objects are sets 'with structure'
and the arrows are functions that preserve that structure.

_Grp_ is the category of groups: the objects are groups 
