# Discount, Forward, and Spot 

The _discount_ curve, $D(u)$, is the price of a zero coupon bond paying
1 unit at maturity $u$. The _forward rate_, $f(u)$, and _spot rate_ are
defined by $D(u) = \exp(-\int_0^u f(t)\,dt) = \exp(-u r(u))$.
Any one of discount, forward, or spot determine the other two.

Although discounts are easier to use in formulas and code, most
traders prefer to think in terms of rates.

Note the spot $r(u) = (1/u)\int_0^u f(t)\,dt$ is the average of the
forward and $f(u) = r(u) + u r'(u)$. [Geometric interpretation] Since
averaging smooths things out and taking derivatives can amplify small
variations it is numerically more stable to work with forwards.

A _fixed income instrument_ is specified by a set of cash flows, $c_j$,
at times, $u_j$. Since the instrument is a portfolio of zero coupon bonds,
the instrument _price_ should be $p = \sum_j c_j D(u_t)$.

## Fitting a Curve

Given a set of fixed income instruments and their prices, we would
like to find a discount curve that reprices all the instruments.
This problem is highly underdetermined: there are an infinite
number of curves that will do the job.

### Bootstrap

The _bootstrap_ algorithm is a method for fitting a curve. Suppose
we have a curve defined on the interval $[0,u]$ and a fixed income
instrument with price $p$ and cash flows $c_1,\ldots,c_m$ at times
$u_1,\ldots,u_m$ where $u_m > u$.
We can find a unique forward, $f$, on the interval
$[u, u_m]$ that prices the instrument by solving
$$
	p = \sum_{u_j <= u} c_j D(u_j)
		+ \sum_{u_j > u} c_j D(u)\exp(-f(u_j - u))
$$

#### Remarks

If the interval $[u,u_m]$ is small it may make the computation
unstable.

Interpolation. Just don't do it.
