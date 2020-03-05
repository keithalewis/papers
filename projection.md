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
Define $\mathcal{M} = \{\oplus_j h_j : \sum_j h_j = 0\}$
and $M\colon\mathcal{K}\to\mathcal{H}$ by
$\oplus_j h_j \mapsto \sum_j h_j$.
Note $\mathcal{M} = \mathop{\mathrm{ker}} M$.

We have $M^*\colon\mathcal{H}\to\mathcal{K}$ by
$h\mapsto (1/n)\oplus_j h$. Note
$\mathcal{M}^\perp
= (\mathop{\mathrm{ker}} M)^\perp
= \mathop{\mathrm{ran}} M^*$.

We have $M^*M\colon\mathcal{K}\to\mathcal{K}$ by
$\oplus_j h_j \mapsto \oplus_j \sum_{k} h_{k}$.

The orthogonal projection from $\mathcal{K}$ to
$\mathcal{M}^\perp$ is $P = (1/n)M^*M$ so
$$
	\oplus_j h_j \mapsto (1/n)\oplus_j (\sum_k h_k)
$$

Note $P\oplus_j h = (1/n)\oplus_j n h = \oplus_j h$
so $P$ is the identity on $\mathcal{M}^\perp$.

If $\sum_j h_j = 0$ then this is sent to 0 so
$P$ is 0 on $\mathcal{M}$.

## Graded Hilbert Space

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
Note $Q_iQ_j = Q_{\min{i,j}} = Q_{i\wedge j}$.
In particular $Q_i Q_i = Q_i$.

The projection from $\mathcal{K}$ to
$\hat{\mathcal{K}} \cap \mathcal{M}^\perp$ is
$\hat{P}(\oplus_j h_j) = \oplus_j (1/n)Q_1\sum_k h_k)$
or $\hat{P} h = (1/n)\oplus_j Q_1 Mh$.

Note $QP = (1/n)[Q_1 \ldots ][I \ldots ]^T$.

Note $(QP)^k = (1/n^k)(\sum_{j=1}^n Q_j)^{k-1}[Q_1 \ldots ][I \ldots ]^T$.

Note $(\sum_{j=1}^n Q_j)^k
= \sum_{j=1}^n \bigl((n - j + 1)^k - (n-j)^k\bigr) Q_j$.

The $i$-th row of $(QP)^{k+1}$ is constant and each entry is
$$
(1/n^k)\sum_{j=1}^n ((n - j + 1)^k - (n-j)^k) Q_{i\wedge j}.
$$

Note $\lim_{k\to\infty} (1/n^k) (n - j)^k
= \lim_{k\to\infty} (1 - j/n)^k = 0$ unless $j = 0$.

This shows $(QP)^k \to Q_1 P$.

We need to compute
\begin{align*}
(Q(I - P))^k &= (Q - QP)^k \\
	&= \sum_{j=0}^k (-1)^j \binom{k}{j} Q^{k-j} (QP)^j \\
	&= Q + \sum_{j=j}^k (-1)^j \binom{k}{j} (QP)^j \\
\end{align*}
since $Q^{k - j}(QP)^j = Q$ if $j = 0$ and $Q^{k - j}(QP)^j = (QP)^j$ if $j > 0$.

$(H_1 \cap H_2)^\perp = H_1^\perp + H_2^\perp$

If $\oplus_j h_j$ is in the orthogonal complement of the intersection then $\sum_j h_j = 0$
and $P\oplus_j h_j = 0$.

$\sum_{j=1}^k (-1)^j \binom{k}{j} (1/n^{j-1})
	[\sum_{i=1}^n [(n - i + 1)^{j-1} - (n - i)^{j-1}]Q_i]QP$
