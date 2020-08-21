# Elliptic Curve

The set of points $(x,y)$ satisfying $y^2 = x^3 + ax + b$, $a,b\in\bm{R}$
is an _elliptic curve_.  If $P = (x,y)$ is on the curve then so is $-P =
(x, -y)$. Given $P$ and $Q\not=-P$ on the curve the line determined by $P$
and $Q$ (generally) intersects the curve at exactly one other point $-R$
since elliptic curves are cubic polynomials. Define $O$ (the
letter 'O') by $P + (-P) = O$.  This defines an  _addition_ on elliptic
curves with additive identity $O$. Addition is commutative
since the line determined by $P$ and $Q$
is the same as the line determined by $Q$ and $P$.
Addition is also (surprise!) associatative but this is not trivial.

If $P = (x_P,y_P)$ and $Q = (x_Q, y_Q)$ then $y = m(x - x_P) + y_P$ is the line
containing $P$ and $Q$ where $m = (y_Q - y_P)/(x_Q - x_P)$.
If $(x, y)$ is any point on both the line and the curve
then $(mx + d)^2 = x^3 + a x + b$ where $d = y_P - m x_P$ so $0 = x^3 - m^2x^2 + (a - 2md)x + b - d^2$.
Since
$(x - x_P)(x - x_Q)(x - x_R) = x^3 - (x_P + x_Q + x_R)x^2 + (x_Q x_R + x_R x_P + x_P x_Q)x - x_P x_Q x_R$
we have $m^2 &= x_P + x_Q + x_R$ and $x_R = m^2 - x_P - x_Q$ is $x_R$ is a root.
Since $R$ is on the line $y_R = m(x_R - x_P) + y_P$ gives us a point on the curve.

## Elliptic Integrals

One learns in freshman calculus that the indefinite integral of any rational function
has a closed form in terms of rational functions, trigonometric functions, and logarithms.
This is also true for integrals of the form $\int R(x)/\sqrt{P(x))}\,dx$ when $R$ is
a rational function and $P$ is a polynomial of degree 2.
For example if $\omega(u) = \int_0^u dx/\sqrt{1 - x^2}$ then we have $\omega(u) = sin^{-1}(u)$ using
the substitution $x = \sin u$.

Elliptic integrals have the from $\int R(x)/\sqrt{P(x))}\,dx$ where $R$ is
a rational function and $P$ is a polynomial of degree at most 4. Legendre showed
these integrals can be evaluated in terms of three integrals
$$
	\int \frac{dx}{\sqrt{1 - x^2}\sqrt{1 - k^2x^2}}, 
	\int \frac{x^2\,dx}{\sqrt{1 - x^2}\sqrt{1 - k^2x^2}},
	\int \frac{dx}{(x - a)\sqrt{1 - x^2}\sqrt{1 - k^2x^2}},
$$
called elliptic intergrals for the first, second, and third kinds.

Abel and Jacobi considered integrals of the form $\omega(u) = \int_0^u dt/sqrt{1 - k^2\sin^2 t}$

The _discriminant_ of the curve is $\Delta = -16(4a^3 + 27b^2)$. If $\Delta < 0$ the graph
has one component and if $\Delta > 0$ it has two components.
