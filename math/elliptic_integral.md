# Elliptic Integral

In high school you learned about _conic sections_. The intersection of a plane and a _cone_
is either an _ellipse_, _parabola_, or _hyperbola_.
Let $\bm{R}^3 = \{(x,y,z):x,y,z\in\bm{R}\}$ be points in 3-dimensional space with _origin_ $0 = (0,0,0)$.
The point $P = (x, y, z)$ has _coordinates_ $x = x(P)$, $y = y(P), and $z = z(P)$ where we use
$x$ for both the coordinate $x\in\bm{R}$ and the functon $x\colon\bm{R}^3\to\bm{R}$.
Likewise for $y$ and $z$.

The cone $z^2 = x^2 + y^2$ consist of circles in the plane $z(P) = z$ with radius $z$.
A _plane_ is a set of points satisfying $ax + by + cz = d$ given constants $a,b,c,d\in\bm{R}$>

One learns in freshman calculus that the indefinite integral of any rational function
can be expressed in closed form using _elementary functions_:
trigonometric functions, exponential functions, and their inverses.
This is also true for integrals of the form $\int R(x)/\sqrt{P(x))}\,dx$ when $R$ is
a rational function and $P$ is a polynomial of degree 2.
For example, if $\omega(u) = \int_0^u dx/\sqrt{1 - x^2}$ then we have $\omega(u) = sin^{-1}(u)$ using
the substitution $x = \sin u$.

Elliptic integrals have the from $\int R(x)/\sqrt{P(x))}\,dx$ where $R$ is
a rational function and $P$ is a polynomial of degree at most 4.

One of the earliest instances is due to ... when he was calculating the length
of _leminiscates_.


Legendre showed these integrals can be evaluated in terms of three integrals
$$
	\int \frac{dx}{\sqrt{1 - x^2}\sqrt{1 - k^2x^2}}, 
	\int \frac{x^2\,dx}{\sqrt{1 - x^2}\sqrt{1 - k^2x^2}},
	\int \frac{dx}{(x - a)\sqrt{1 - x^2}\sqrt{1 - k^2x^2}},
$$
called elliptic intergrals of the first, second, and third kinds.

Abel and Jacobi considered integrals of the form $\omega(u) = \int_0^u dt/sqrt{1 - k^2\sin^2 t}$

The _discriminant_ of the curve is $\Delta = -16(4a^3 + 27b^2)$. If $\Delta < 0$ the graph
has one component and if $\Delta > 0$ it has two components.
