---
title: Bootstrapping Curves
subtitle: Discount, Forward, and Spot 
author: Keith A. Lewis
copyright: © 2019 Keith A. Lewis
date: Apr 11 2019
abstract: |
  Given a collection of fixed income instruments and corresponding prices
  the bootstrap algorithm constructs a unique curve having piece-wise
  constant forward rates that reprices each instrument.
...

The _discount_ curve, $D(u)$, is the price of a zero coupon bond paying
1 unit at maturity $u$. The _forward rate_, $f(u)$, and _spot rate_,
$r(u)$, are defined by $D(u) = \exp(-\int_0^u f(t)\,dt) = \exp(-u r(u))$.
Any one of discount, forward, or spot determine the other two.

Although discounts are easier to use in formulas and software, 
traders prefer to think in terms of rates.

Note the spot $r(u) = (1/u)\int_0^u f(t)\,dt$ is the average of the
forward and $f(u) = r(u) + u r'(u)$. [Geometric interpretation] Since
averaging smooths things out and taking derivatives can amplify small
variations it is numerically more stable to work with forwards.

A _fixed income instrument_ is specified by a set of cash flows, $(c_j)$,
at times, $(u_j)$. Since the instrument is a portfolio of zero coupon bonds
the present value is $pv = \sum_j c_j D(u_j)$.
When the instrument _price_ equals its present value we say the
curve "(re)prices" the instrument.

## Fitting a Curve

Given a set of fixed income instruments and their prices, we would like
to find a discount curve that reprices all the instruments.  This problem
is highly under-determined: there are an infinite number of curves that
will do the job.

### Bootstrap

The _bootstrap_ algorithm is a method for fitting a curve. Suppose
we have a curve defined on the interval $[0,u]$ and a fixed income
instrument with price $p$ and cash flows $c_1,\ldots,c_m$ at times
$u_1,\ldots,u_m$ where $u_m > u$.
We can find a unique forward, $f$, on the interval
$[u, u_m]$ that prices the instrument by solving
$$
	p = \sum_{u_j \le u} c_j D(u_j)
		+ \sum_{u_j > u} c_j D(u)\exp(-f(u_j - u))
$$

If there is exactly one cash flow past the end of the curve then
there is an explicit solution. We have $p = pv + c_m D(u)\exp(-f(u_m - u))$ where
$pv$ is the first sum, so $f = [\log c_m D(u)/(p - pv)]/(u_m - u)$.

There is also an explicit solution when extending the curve using
an instrument having exactly two cash flows and a price of 0, i.e.,
an at-the-money forward rate agreement.  We have $0 = c_0 D(u_0) +
c_1 D(u_1)$. If $u_0 \le u$ then there is exactly one cash flow past
the end of the curve and the previous case holds.
If  $u_0 > u$ then $0 = c_0 D(u)\exp(-f(u_0 - u)) + c_1 D(u)\exp(-f(u_1 - u))$
so $f = \log(-c_1/c_0)/(u_1 - u_0)$.

The bootstrap method orders the collection of instruments used to build
the curve in order of increasing maturity. It then constructs the unique
piece-wise constant forward using the above method.

## Remarks

It is possible that there is no solution to the bootstrap algorithm, but this
never happens when using accurate market data.

If the interval from the end of the curve to the maturity of the instrument being
used to extend it is small then the computation may become unstable.

It is common to see implementations use various splining techniques
to smooth the forward curve. It is better to add synthetic instruments with
interpolated prices to do "smoothing".
