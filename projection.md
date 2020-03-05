---
title: A Certain Projection
author: Keith A. Lewis
institution: KALX, LLC
...

Let $\mathcal{K} = \oplus_j \mathcal{H}$ be the direct sum
of $n$ copies of $\mathcal{H}$.

Let $\mathcal{M} = \{\oplus_j h_j : \sum_j h_j = 0\}$.

Define $M\colon\mathcal{K}\to\mathcal{H}$ by
$\oplus_j h_j \mapsto (1/n)\sum_j h_j$.
Note $\mathcal{M} = \mathop{\mathrm{ker}} M$.

We have $M^*\colon\mathcal{H}\to\mathcal{K}$ by
$h\mapsto (1/n)\oplus_j h$. Note
$\mathcal{M}^\perp
= (\mathop{\mathrm{ker}} M)^\perp
= \mathop{\mathrm{ran}} M^*$.

Let $\mathcal{H}_j$ be increasing subspaces of $\mathcal{H}$
and define $\hat{\mathcal{K}} = \oplus_j \mathcal{H}_j$.

Let $Q_j$ be the projection from $\mathcal{H}$ to $\mathcal{H}_j$
so $Q = \oplus_j Q_j$ is the projection from $\mathcal{K}$
to $\hat{\mathcal{K}}$.

The projection from
$\mathcal{K}$ to $\hat{\mathcal{K}}\cap\mathcal{M}^\perp$
is $P\oplus_j h_j = \oplus_j Q_1 (1/n)\sum_k h_k$.

This clearly belongs to the intersection.

If $\oplus_j h_j$ is in the intersection then $h_j = h_1$ for all $i$
so 
$$
P\oplus_j h_j = \oplus_j Q_1 (1/n)\sum_k h_k
= \oplus_j Q_1 (1/n)\sum_k h_1 = \oplus_j h_1 = \oplus_j h_j.
$$

If $\oplus_j h_j$ is in the orthogonal complement of the intersection then $\sum_j h_j = 0$
and $P\oplus_j h_j = 0$.
