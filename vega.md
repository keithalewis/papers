Let $Z$ be a standard normal random variable. Completing the square
shows

$$Ee^{sZ - s^2/2} f(Z) = E f(Z + s)$$

Taking a derivative with respect to $s$ yields

$$Ee^{sZ - s^2/2} (Z - s) f(Z) = E f'(Z + s)$$

Using the first formula

$$E Z f(Z + s) = E f'(Z + s)$$

Let $F = fe^{sZ - s^2/2}$. The forward value of an option paying
$\phi(F)$ at expiration has value $v = E\phi(F)$.

For an invertable function $g$, $g^{-1}(g(x)) = x$,
$(g^{-1})'(g(x)) g'(x) = 1$,
so
$(g^{-1})'(y) = 1/g'(g^{-1}(y))$.
