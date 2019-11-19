The price of a zero coupon bond maturing at $u$ is $D(u)$.

The _forward rate_, $f$, is  defined by $D(u) = \exp(-\int_0^u f(t)\,dt)$
so $f(u) = (d/du) -\log D(u)$.

Let $f_u$ be the (random) repo rate at time $u$. One unit invested at time $u$ will
grow to $\exp(f_u\,du)$ at time $u + du$.

The _stochastic discount_ is $D_u = \exp(-\int_0^u f_t\,dt)$.

The price at time $t$ of a zero coupon bond maturing at $u$ is
$Z_t(u) = E_t[D_u]/D_t = E_t[\exp(-\int_t^u f_s\,ds)]$.

$f_t = f(t)$ non-stochastic.

$Z_t(u) = \exp(-\int_t^u f(s)\,ds)$.

$f_t(s) = f(s)$.

$\phi_t(u) = E_t[f_u] = f_t + \sigma^2(u - t)^2/2$.

LMM: $\phi_t(u) = \phi_0(u) \exp(\sigma B_t - \sigma^2 t/2)$.
