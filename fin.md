# Fixed Income Notation

The price of all fixed income instruments is determined by the short
rate process as defined in the [standard model](model.html). $E_t X =
E[X\mid\mathcal{A}_t]$ denotes conditional expectation at time $t$.

A _repurchase agreement_ over time $t$ to $t + dt$ has price $X_t = 1$
and a single cash flow $C_{t+dt} = \exp(f_t\,dt) \approx 1 + f_t\,dt$
where $f_t$ is the _repo rate_.
Since $D_t = E_t \exp(f_t\,dt)D_{t + dt}$ we have $D_{t + dt}/D_t =
\exp(-f_t\,dt)$ if $D_t$ is predictable.  
Assuming $D_0 = 1$ then $D_t = \exp(-\int_0^t f_s\,ds)$.  Call this
the _canonical stochastic discount_ and refer to the repo rate as the
_(continuously compounded) instantaneous forward rate_.

A _zero coupon bond_ maturing at time $u$, denoted $D(u)$, has a single cash flow $C_u = 1$.
Its value at time $t$, $D_t(u)$, satisfies $D_t(u)D_t = E_t D_u$ so $D_t(u) = E_t D_u/D_t$.
Its value at time $0$ is $D_0(u) = E D_u$ which we also denote by $D(u)$.

Define the _forward_ at time $t$ by, $f_t(u)$, by $D_t(u) = \exp(-\int_t^u f_t(s)\,ds)$.
Write $f(u) = f_0(u)$ for the forward at time 0, or simply the _foward_.

<!--
Note that $\lim_{t\nearrow u}f_t(u) = f_u$. ???
-->

A _cash deposit_ maturing at time $u$ having coupon $c$ and day count fraction $\delta$
has a single cash flow $C_u = 1 + \delta c$. Its price at time $t$
is $(1 + \delta c)D_t(u)$. If its price at time 0 is 1 then $c = (1/D(u) - 1)/delta$.

A _forward rate agreement_ with coupon $f$ over the interval from $u$
to $v$ with day count basis $\delta$, denoted $F^\delta(u,v)$, has two cash flows,
$C_u = -1$ and $C_v = 1 + \delta(u,v) f$.
The coupon value making the price at time $t$ equal to 0, $F_t^\delta(u,v)$,
is called the _forward rate_ at time $t$. 
It satisfies $0 = E_t -D_u + (1 + \delta(u,v)F_t^\delta(u,v))D_v$
so $F_t^\delta(u,v) = (D_t(u)/D_t(v) - 1)/\delta(u,v)$.

<!--
$\lim_{u\nearrow v} F_t(u,v) = f_t(v)$. ??? if $\delta(u,v) = v - u$.
-->

A _caplet_ $C_v = \delta(u,v)\max\{F^\delta_u(u,v) - k, 0\}$.

A _floorlet_ $C_v = \delta(u,v)\max\{k - F^\delta_u(u,v), 0\}$.

An _interest rate swap_ $F^\delta(t_0,\dots,t_n)$.
$C_{t_0} = -1$,
$C_{t_j} = \delta(t_{j-1},t_j)c$ for $0 < j < n$,
$C_{t_n} = 1 + \delta(t_{n-1},t_n)$.

A _cap_ is a sequence of caplets.

A _floor_ is a sequence of floorlets.

A _swaption_ is an option on a swap.
