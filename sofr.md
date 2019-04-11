# SOFR

Let $F_j$ be the end-of-day, $t_j$, SOFR settlement rate
and $d^m_j$ the number of end-of-day quotes
in the $m$ months prior to $t_j$.
Define $\delta_j$ to be the number of days from $t_j$ to $t_{j+1}$
so $D^m_j = \sum_{k=1}^{d^m_j} \delta_{j - k}$ is the total
number of days in the $m$ months prior to $t_j$.

A one month SOFR futures final settlement quote is
$$\Phi^1_j
= \frac{1}{D^1_j} \sum_{k = 1}^{d^1_j} F_{j - k}\delta_{j - k}
$$
at time $t_j$, where $\delta_j$ is the number of days from $t_i$ to $t_{i+1}$.

A three month SOFR futures final settlement quote is
$$\Phi^3_j
= \frac{360}{D^3_j}\bigr([\Pi_{k=1}^{d^3_j}
(1 + F_{j - k}\delta_{j - k}/360)] - 1\bigr)
$$
