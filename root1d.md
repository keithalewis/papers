# One dimensional root finding

Given a function $f\colon\mathbf{R}\to\mathbf{R}$ the _one dimensional root finding_ problem is
to find $x\in\mathbf{R}$ with $f(x) = 0$. If we want to find $x$ such that $f(x) = a$ we can
reduce this to finding the root of $g(x) = f(x) - a$. In particular this can be used to
find the inverse of a function at a given value.

There is no general algoritm for finding roots. The first thing to do is plot a graph of
the function to see where the problematic roots might occur.

To find a root you need to have one or more initial guesses, a way to improve these,
and a criterion for when to stop.

## Initial Guess(s)

Knowing something about the function is crucial for deciding on where to start looking.
This is why you should plot the function as the first step.

If a function is continuous and $f(x_0)$ and $f(x_1)$ have different signs then the
Intermediate Value Theorem guarentees there is a root between $x_0$ and $x_1$.
These values _bracket_ the root.

## Improving Guesses

There are many algorithms for improving initial guesses of roots.

#### Bisection

Given $x_0 < x_1$ that bracket the root, the bisection method uses $x_2 = (x_0 + x_1)/2$
to get a tighter bracket. Either $x_0$ and $x_2$ or $x_2$ and $x_1$ bracket the root.
This method sure but slow. It improves the solution by only one binary digit with
each step.

#### Secant

Given $x_0$ and $x_1$, not necessarily bracketing the root, the secant method uses root
of the line through $(x_0, f(x_0))$ and $(x_1, f(x_1))$ as the next approximation.

The line is $y = m(x - x_0) + y_0$ where $m = (y_1 - y_0)/(x_1 - x_0)$
and $y_j = f(x_j)$, $j = 0,1$ so $y = 0$ when $x = x_0 - y_0/m$.
A simple calculation shows $x = (x_0 y_1 - x_1 y_0)/(y_1 - y_0)$.

It has faster convergence than the bisection method. If $\Delta x$ is the difference of
the previous guesses, the difference of the next guesses is approximately $(\Delta x)^{1.6}$.
This is called convergence of order 1.6. Of course this is only useful if
$\Delta x < 1$.

### False Position (Regula Falsi)

Given $x_0 < x_1$ that bracket the root, use the secant method but take the guesses that
keep the root bracketed. In some cases this can be slower than bisection.

### Newton-Raphson

This requires only one initial guess, $x_0$, and approximates the function by 
the line tangent to the function at $x_0$: $y = f(x_0) + f'(x_0)(x - x_0)$
so $y = 0$ when $x = x_0 - y_0/f'(x_0)$ where $y_0 = f(x_0)$.

Things can go seriously wrong with this method, but when the derivative is monotone
in a neighborhood of the root it has convergence of order 2.

This method requires computing the derivative of $f$. A modification of the method
is to compute the derivative once and use that in subsequenct approximations.

### Parabolic

Given three guesses, $x_j$, $j=0,1,2$, there is a unique parabola $x =
a + by + cy^2$ through the points $(x_j, f(x_j))$, $j=0,1,2$. The next
guess is the value $a$.  There is also a unique parabola $y = a + bx +
cx^2$ through the three points but there may be no solution for $y = 0$.

## Convergence Criteria

If the derivative at the root of $f$, $x$, is not 0 then the best criteria
is simple: are the next floating point numbers less than and greater
than $x$ a worse approximation?  This is the best possible floating
point approximation. It is also the best possible approximation if
$f'(x) = 0$ and $f(x) = 0$.

If this is too slow, then the algorithm can be stopped when the
number of iterations exceeds the computational budget.
