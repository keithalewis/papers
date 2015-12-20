# Category Theory

Vocabulary: _object_, _arrow_, _composition_,
_identity arrow_, _associative law_.

## Objects and Arrows

`f: A -> B` is an _arrow_, `f`, from object `A` to object `B`.

`A` is the _domain_ of `f` and `B` is the _codomain_ of `f`,
aka _range_, _target_, or _but_ if you parlez Francais,
but codomain is more apropos when we get to 'opposite day' furthur on.

We could do away with objects using domain and codomain,
just as it is possible to use nand to define the logical operators
not, and, or, implies, but why make things more difficult?

## Composition

If `f: A -> B` and `g: B -> C` then there exists an arrow
`g o f: A -> C`, the _composition_ of `f` with `g`.

Or maybe the composition of `g` with `f`. Some people get caught
up with trivialities. How come `f` and `g` get written in the
reverse order?

You could define `f;g` (or your favorite binary operator symbol
instead of `;`) to be `g o f`. Or just write the arrows backwards.
Let's agree to drop the `'o'` symbol and write `gf` instead.

## Identity Arrow

On to more interesting things. Every object has an _identity arrow_.
If `f: A -> B` then the identity arrows `1_A: A -> A` and `1_B: B -> B` 
satisfy `f 1_A = f = 1_B f`. Or maybe only somewhat more interesing.
You can always throw in identity arrows if they don't exist.

### Exercises

_Exercise 1. If `e: A -> A` has the property `fe = f` for all `f: A -> B`
then `e = 1_A`_.

_Exercise 2. If `e: B -> B` has the property `ef = f` for all `f: A -> B`
then `e = 1_B`_.

## Associative Law

If `f: A -> B`, `g: B -> C`, and `h: C -> D` then `hgf` is unambiguous
in category theory. The associative law is `(hg)f = h(gf)`.

## Examples

It is impossible to understand Category Theory without understanding
examples of categories. That is its raison d'etre. Many seemingly
disparate constructs can be unified a la mode de chez Category Theory.

The primary example of a category is _Set_. The objects are sets and
the arrows are functions. People tried to come up with a purely
category theory notion of Set and ended up with _topos_ theory.
One does not simply consider 'elements' of a 'set'. Long story.

Then there is _Par_, the category of partial functions. It gets no respect.
Most functions are actually partial functions. The function `x -> 1/x`
is only a partial function from the real numbers to the real numbers.

_Rel_ is the category of relations. It generalizes _Set_ and _Par_.
Given sets `A` and `B`, a _relation_ is a subset of the cartesian product `A x B`.

A function, `f`, is a relation with the property that for every `a in A`
there exists a unique `b` in `B` such that `(a,b) in f`.

A partial function, `g`, is a relation with the property that for every `a in A`
there exists at most one `b in B` such that `(a,b) in g`.

Composition of the relation `R`, contained in `A x B`, and the relation `S`
contained in `B x C` is
`SR = {(a,c) in A x C : there is a b in B with (a,b) in R and (b,c) in S}`

_Exercise 3. Show the identity arrows of_ Set _are `1_A = {(a,a) in A x A : a in A}`_.

_Exercise 4. Show that composition is associative in_ Set.

Proof of Exercise 3.

There are a slew of examples of categories where the objects are sets
'with structure' and the arrows are functions that preserve that structure.

_Grp_ is the category of groups: the objects are groups and the arrows
are _homomorphisms_ (functions) that preserve the group structure.

_Vec_ is the category of vector spaces: the objects are vector spaces
and the arrows are linear transformations.

Rings, fields, and algebras provide more examples. The theme of category
theory is how to provide a unified treatment of various mathematical notions.

A _Preset_ is a set wtih a relation `<=` that is reflexive and transitive.
The notion predates Category Theory, but this maps perfectly into the
the definition of a category. The objects are elements of the set and
there is an arrow `x -> y` if and only if `x <= y`.

The identity arrow is the relexive property and composition is the transitive law. 
Putting on your category theory goggles lets you see things that would not
be obvious otherwise. 

## Answers to Excercises

_Exercise 1. If `e: A -> A` has the property `fe = f` for all `f: A -> B`
then `e = 1_A`_.

**Solution.** Taking `f = 1_A`, `1_A e = 1_A`. By the definition of `1_A`, `1_A e = e`, hence `1_A = e`.

_Exercise 2. If `e: B -> B` has the property `ef = f` for all `f: A -> B`
then `e = 1_B`_.

**Solution** Taking `f = 1_B`, `e 1_B = 1_B`. By the definition of `1_B`, `e 1_B = e`, hence `1_B = e`.

_Exercise 3. Show the identity arrows of_ Set _are `1_A = {(a,a) in A x A : a in A}`_.

**Solution** Let `R: A -> B` be a relation. The following are equivalent:
> `(a, b) in 1_A R`
> There exists `a' in A` with `(a, a') in 1_A` and `(a', b) in R`.
> `(a, a) in 1_A` and `(a, b) in R`
> `(a, b) in R`
The proof of `R 1_B = R` is similar.

_Exercise 4. Show that composition is associative in_ Set.
