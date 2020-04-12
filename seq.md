# Sequences

Let $(S,\le)$ be a totally ordered set. A _sequence_ is a partial
function
$s\colon\mathbf{N}\rightharpoonup S$ where $s(i) \le s(j)$ if $i\le j$.
Note $id\colon\mathbf{N}\to\mathbf{N}$ is a sequence.

A map $\sigma\colon\mathcal{S}\to\mathcal{S}$ is _monotonic_ if
$s_i \le s_j$ implies $\sigma(s_i) \le sigma(s_j)$.

## Ziggurat

Given $s_i\in S^{\subseteq T}$ for $i\in I$ define
$\zeta(s_i) T\rightharpoonup\to I\times T\times S$ by
$\zeta(s_i)(t_0) = s_0(t_0)$.
