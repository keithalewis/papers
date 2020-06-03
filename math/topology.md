# Topology

_Topology_ is the study of the word "near".

A _metric space_ is a set $X$ and a _distance_ function,
$d\colon X\times X\to\mathbf{R}$ with the properties

    i. $d(x, x) = 0$
    ii. $d(x, y) = d(y, x)$
    iii. $d(x, y) + d(y, z) \ge d(x, z)$

for $x,y,z\in X$. Note $d(x, y) + d(y, x) \ge d(x,x) = 0$ so $d(x,y)\ge 0$.

The distance is _non-degenerate_ if $d(x,y) = 0$ implies $x = y$.
