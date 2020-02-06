---
title: A Certain Projection
author: Keith A. Lewis
institution: KALX, LLC
...

Let $\mathcal{K} = \oplus_j \mathcal{H}$ be the direct sum
of $n$ copies of $\mathcal{H}$.

Let $\mathcal{M} = \{\oplus_j h_j : \sum_j h_j = 0\}$.

Define $M\colon\mathcal{K}\to\mathcal{H}$ by
$\oplus_j h_j \mapsto \sum_j h_j$.
Note $\mathcal{M} = \mathop{\mathrm{ker}} M$.

We have $M^*\colon\mathcal{H}\to\mathcal{K}$ by
$h\mapsto\oplus_j h$. Note
$\mathcal{M}^\perp
= (\mathop{\mathrm{ker}} M)^\perp
= \mathop{\mathrm{ran}} M^*$.

We have $M^*M\colon\mathcal{K}\to\mathcal{K}$ by
$\oplus_j h_j \mapsto \oplus_j \sum_{j'} h_{j'}$.

The orthogonal projection from $\mathcal{K}$ to
$\mathcal{M}^\perp$ is $P = (1/n)M^*M$.

Define $N = (1/\sqrt{n})M$ so $P = N^*N$.

Let $\mathcal{H}_j$ be increasing subspaces of $\mathcal{H}$
and define $\hat{\mathcal{K}} = \oplus_j \mathcal{H}_j$.

Let $Q_j$ be the projection from $\mathcal{H}$ to $\mathcal{H}_j$
so $Q = \oplus_j Q_j$ is the projection from $\mathcal{K}$
to $\hat{\mathcal{K}}$.

Note $Q_iQ_j = Q_{\min{i,j}} = Q_{i\wedge j}$

By von Neumann's alternating projection theorem
$(QP)^n$ and $(PQ)^n$ converge in the weak operator
topology to the projection from
$\mathcal{K}$ to $\hat{\mathcal{K}}\cap\mathcal{M}^\perp$.

$QPk = Q(1/n)\oplus_j\sum_{j'}k_{j'}
     = (1/n)\oplus_j\sum_{j'} Q_j k_{j'}$.

$PQk = P(\oplus_j Q_j k_j)
     = (1/n)\oplus_j\sum_{j'} Q_{j'} k_{j'})$.


