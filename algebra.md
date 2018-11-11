# Algebras of Sets

An _algebra_ on a set $\Omega$ is a collection of subsets $\AA\subseteq
\mathscr{P}(\Omega) = \{E:E\subseteq\Omega\}$ such that (i) the emptyset
$\emptyset\in\AA$, (ii) if $E\in\AA$ then its complement, $\Omega\setminus
E$, belongs to $\AA$, and (iii) if $E$ and $F$ are in $\AA$ then so is
their union, $E\cup F$.

Note that $\Omega\in\AA$ and, by De Morgan's laws, algebras are also
closed under intersection.

A subset, $E\subseteq\Omega$ is called an _event_. An algebra is closed
under the words, 'not', 'or', and 'and' applied to events in the algebra.

An _atom_ is a set $A\in\AA$ such that $B\in\AA$ and $B\subseteq A$
implies $B = \emptyset$ or $B = A$.

**Lemma**. The atoms of an algebra are a partition.

For $\omega\in\Omega$ let $A_\omega = \cap\{A\in\AA:\omega\in A\}$.
$A_\omega$ is an atom since $B\subset A_\omega$ ...

The coursest partion of $\Omega$ is $\{\Omega\}$. This corresponds
to having no information about what event $\omega$ occured.

The finest partition of $\Omega$ is $\{\{\omega\}:\omega\in\Omega\}$.
This corresonds to knowing exactly what event $\omega$ occured.

An algebra specifies what atom an event occured in.
