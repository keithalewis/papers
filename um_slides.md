---
title: The Unified Model
subtitle: The right way to model derivative securities
theme: white
previewLinks: true
transition: 'zoom'

---

##  What's wrong with the current model?

* Valuing is only the first step.

* How (and when) do you hedge?

* Continuous hedging is impossible.

* Current theory gives wrong answers.

---

## Barrier Options

* What is the value of a barrier option that
knocks in/out the _second_ time it hits the barrier?

* Same as a barrier option that knocks in/out the first time.

* Same as a barrier option that knocks in/out the millionth time.

---


## Unified Model

Prices $(X_t)$
: vector of prices at $t$ indexed by available market instruments

Cash Flows $(C_t)$
: vector of cash flows associated with holding instruments, e.g.,
stock dividends, bond coupons.

---

## Trades, Position

Trades $(\tau_j,\Gamma_j)$
: increasing stopping times and corresponding vector
of shares traded in each instrument at $\tau_j$.

Position $(\Delta_t$)
: accumulated shares traded $\Delta_t = \sum_{\tau_j < t} \Gamma_j = \sum_{s < t} \Gamma_s$.

---

# Algebras of Sets

* An _algebra_ is a collection of subsets of a set.

* The subsets are called _events_.

* Algebras contain 

    * the empty set,
    * the complement of any set in the algebra,
    * the union of any two sets in the algebra.

---

## Mathematical Definition

* An _algebra_ on $\Omega$ is a subset of the powerset $\mathcal{P}(\Omega) = \{E\mid E\subseteq\Omega\}$
such that

  * The empty set $\emptyset\in\mathcal{A}$
  * $E\in\mathcal{A}$ implies $E^c=\Omega\setminus E\in\mathcal{A}$
  * $E,F\in\mathcal{A}$ implies $E\cup F\in\mathcal{A}$

---

## Corollaries

* An algebra $\mathcal{A}$ must satisfy

    * $\Omega = \emptyset^c\in\mathcal{A}$
    * $E,F\in\mathcal{A}$ implies $E\cap F\in\mathcal{A}$

* Given events $E$ and $F$ we can say &#8220;not $E$&#8221;, &#8220;$E$ or $F$&#8221;,
and &#8220;$E$ and $F$&#8221;.

* Mathematicians have a smaller vocabulary than pirates.

---

## Partitions

An _atom_ of an algebra is a set $A\in\mathcal{A}$ with the property
$B\subseteq A$ and $B\in\mathcal{A}$ implies $B = A$ or $B = \emptyset$.

A _partition_ of a set is a collection of disjiont subsets whos union is equal to the set.

If $\mathcal{A}$ is finite the atoms form a partition.

For $\omega\in\Omega$ let $A_\omega = \cap\{A\in\mathcal{A} : \omega\in A\}$.

The set $\{A_\omega : \omega\in\Omega\}$ is a partition.

---

## Partial Information

A partition is partial information.

Complete information is knowing exactly $\omega\in\Omega$.

No information is knowing only $\omega\in\Omega$.

Partial information is know what atom $\omega\in\Omega$ belongs to.

---

## Example (Random Walk)

$\Omega = [0,1)$.

$\Omega = C[0,\infty)$ $A_\omega$ is ...

---
