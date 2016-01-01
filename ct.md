# Category Theory

I was looking up a David Hilbert quote and came across this:

> Besides it is an error to believe that rigour is the enemy of simplicity. 
> On the contrary we find it confirmed by numerous examples that the rigorous 
> method is at the same time the simpler and the more easily comprehended. 
> The very effort for rigor forces us to find out simpler methods of proof. 

It reminded me of Alex Stepanov's and Paul McJones _Elements of Programming_.
And Bjarne Stroupstup's battles against the original _Concepts_ proposals.
He fought passionately to get _Concepts Lite_ in and the measure of his victory
is that everyone has forgotten how horribly complicated the original proposals
were and the _Lite_ has now been dropped. 

Hilbert figured out Euclid was missing a few axioms from geometry. For
example, the notion a point was _between_ two other points that determine
a line. Vocabulary is how human beings communicate. The quote I was
looking for is

> The elements, such as point, line, plane, and others, could be substituted
> by tables, chairs, glasses of beer and other such objects

He revised his attempts at axiomatizing geometry several times prior
to realizing this. Maybe this is old hat these days, but this is what math is
about. The names don't really matter, only the relationships
they satify.

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

The "set" of arrows from `A` to `B` is called `Hom(A,B)`. 
The scare quotes indicate this is not necessarily a set
but standard terminology is _homset_.

## Composition

If `f: A -> B` and `g: B -> C` then there exists an arrow
`g o f: A -> C`, the _composition_ of `f` with `g`. One of
the axioms of Category Theory is that if the codomain of `f`
is the same as the domain of `g`, then the composition exists.

Or maybe the composition of `g` with `f`. Some people get caught
up with trivialities. How come `f` and `g` get written in the
reverse order?

You could define `f;g` (or your favorite binary operator symbol
instead of `;`) to be `g o f`. Or just write the arrows backwards:
`g: C <- B` and `f: B <- A`.
Let's agree to drop the `'o'` symbol and simply write `gf`.

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
in category theory. The associative law states `(hg)f = h(gf)`.

## Examples

It is impossible to understand Category Theory without understanding
examples of categories. That is its raison d'etre. Many seemingly
disparate constructs can be unified a la mode de chez Category Theory.

The primary example of a category is _Set_. The objects are sets and
the arrows are functions. People tried to come up with a purely
category theory notion of Set and ended up with _topos_ theory.
One does not simply consider 'elements' of a 'set'. Long story.

Then there is _Par_, the category of partial functions. It does not
get the respect it deserves.
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
`SR = {(a,c) in A x C : there exists b in B with (a,b) in R and (b,c) in S}`

_Exercise 3. Show the identity arrows of_ Set _are `1_A = {(a,a) in A x A : a in A}`_.

_Exercise 4. Show that composition is associative in_ Set.

### Sets with Structure

There are a slew of examples of categories where the objects are sets
'with structure' and the arrows are functions that preserve that structure.

_Grp_ is the category of groups: the objects are groups and the arrows
are _homomorphisms_ (functions) that preserve the group structure.

_Vec_ is the category of vector spaces: the objects are vector spaces
and the arrows are linear transformations.

Rings, fields, and algebras provide more examples. The theme of category
theory is to provide a unified treatment of various mathematical notions.

### Orders 

A _Preset_ is a set wtih a relation `<=` that is reflexive and transitive.
The relation is called a _preorder_.
The notion predates Category Theory, but this maps perfectly into the
the definition of a category. The objects are elements of the set and
there is an arrow `x -> y` if and only if `x <= y`.

The identity arrow is the relexive property and composition is the transitive law.
Preorders have the property that homsets have at most one arrow.

The category _Set_ with arrows `f: A -> B` if `A` is a subset of `B` is
a preorder. It is also a _Poset_: a preorder that is also _anti-symmetric_.
If `x <= y` and `y <= x` then `x = y`. The relation is called a _partial order_.

A preorder satisfying `x <= y` implies `y <= x` is an _equivalence relation_. 
It is more common to use the notation `x ~ y` for equivalence relations
and say `x` and `y` belong to the same _equivalence class_. 

For any relation `R:A -> B` define `R*:B -> A` by `(b, a) in R*` if
and only if `(a, b) in R`.

In the following exercises, let `R:A -> A` be a relation.

_Exercise 5. Show `R` is reflexive if and only if `1_A` is a subset of `R`_.

_Exercise 6. Show `R` is transitive if and only if `RR` is a subset of `R`_.

_Exercise 7. Show `R` is anti-symmetric if and only if the intersection of
`R` and `R*` is contained in `1_A`_.

A _partition_ of a set is a collection of disjoint subsets whos union equals the set.

_Exercise 8. If `R` is an equivalence relation, then the equivalence classes
form a partion of `A`_.

### The Category _Cat_

A _functor_ from category _C_ to category _D_ takes object of _C_
to objects of _D_ and arrows of _C_ to arrows of _D_ with the properties  

  i. If `f: A -> B` in _C_ then `F(f): F(A) -> F(B)` in _D_.   
 ii. If `g: A -> B` and `h: B -> C` in _C_ then `F(hg) = F(h)F(g)` in _D_.  

#### Some Properties of _Set_

Every function in _Set_ `f:A -> B` determines an equivalence relation on `A`.
For `x, y in A`, define `x ~ y` iff `f(x) = f(y)`. 
The function `f/~` takes elements of `A` to the equivalence class it belongs to
`(f/~)(x) = x/~ = {y in A : y ~ x}`.

_Exercise 9. Show `f/~:A -> A/~` is a function_.

There exists a function `g:A/~ -> B` defined by `g(x/~) = f(x)`.

_Excercise 10. Show `g` is a function_.

The function `f/~` is _onto_, or _surjective_. For every element in its
codomain there exists an element in its domain that the function maps to.

The function `g` is _1-to-1_, or _injective_. No two elements in the
domain get mapped to the same element in the codomain.

Functions that satisfy both properties are called 1-to-1 and onto
in the old school, and _bijective_ by 
[Nicolas Bourbaki](https://en.wikipedia.org/wiki/Nicolas_Bourbaki).

### Properties of Arrows

It is not always the case that arrows in a category can be factored
in a similar way.

A surjective function, `f:A -> B` has the property that for any functions
`g,h:B -> C` if `fg = fh` then `g = h`. In category theory such `f` are
called _epimorphisms_. 

An injective function, `f:A -> B` has the property that for any functions
`g,h:C -> A` if `gf = hf` then `g = h`. In category theory such `f` are
called _monomorphisms_.

Functions that satisfy both properties are called _isomorphisms_.

## Arrow Vocabulary


## Answers to Exercises

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

**Solution** Let `R: A -> B`, `S: B -> C` and `T:C -> D`. The following
are equivalent:
> `(a, d) in (TS)R`.  
> There exists `b in B` with `(a, b) in R` and `(b, d) in (TS)`.  
> There exists `b in B` with `(a, b) in R` and there exists `c in C` with `(b, c) in S` and `(c, d) in T`.  
> There exists `b in B` and there exists `c in C` with `(a, b) in R` and `(b, c) in S` and `(c, d) in T`.    
> There exists `c in C` and there exists `b in B` with `(a, b) in R` and `(b, c) in S` and `(c, d) in T`.    
> There exists `c in C` with `(a, c) in SR` and `(c, d) in T`.    
> `(a, d) in T(SR)`.

_Exercise 5. Show `R` is reflexive if and only if `1_A` is a subset of `R`_.

**Solution** The following statements are equivalent:  
> `R` is reflexive  
> `a <= a` for all `a in A`  
> `(a, a) in R` for all `a in A`  
> `1_A` is a subset of `R`  

_Exercise 6. Show `R` is transitive if and only if `RR` is a subset of `R`_.

**Solution** The following statements are equivalent:  
> `R` is transitive  
> `a <= b` and `b <= c` imply `a <= c`  
> `(a, b) in R` and `(b, c) in R` imply `(a, c) in R`  
> `(a, c) in RR` implies `(a, c) in R`  
> `RR` is a subset of `R`  

_Exercise 7. Show `R` is anti-symmetric if and only if the intersection of
`R` and `R*` is contained in `1_A`_.

**Solution** The following statements are equivalent:  
> `R` is anti-symmetric  
> `a <= b` and `b <= a` imply `a = b`  
> `(a, b) in R` and `(b, a) in R` imply `a = b`  
> `(a, b) in R` and `(a, b) in R*` imply `a = b`  
> `(a, b) in R intersect R*` imply `(a, b) in 1_A`   
> The intersection of `R` and `R*` is contained in `1_A`  