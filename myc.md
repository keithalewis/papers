# Multiple Yield Curves

$X_t D_t = \sum_{t < s \le u} C_sD_s + X_uD_u$.

Zero coupon bond $D(u)$.

$C_u^{D(u)} = 1$.

$X_t^{D(u)}D_t = E_t D_u$.

$D_t(u) = E_t D_u/D_t$

Forward Rate Agreement $F^{\delta}(u,v)$.

$C_u^{F^\delta(u,v)} = -1$,
$C_v^{F^\delta(u,v)} = 1 + \delta(u,v)F_t^\delta(u,v)$.

$X_t^{F^\delta(u,v)} = 0$.

$0 = E_t[-D_u + (1 + \delta(u,v)F_t^\delta(u,v))D_v]$.

$\delta F_t E_t D_v = E_t[D_u - D_v]$.

$\delta F_t D_t(v) = D_t(u) - D_t(v)$.

$F^\delta(u,v)_t = (D_t(u)/D_t(v) - 1)/\delta(u,v)$.

Forward Rate Agreement $\tilde{F}^{\delta}(u,v)$.

$C_v^{\tilde{F}^\delta(u,v)}
= \delta(u,v)(\tilde{F}_t^\delta(u,v) - F^\delta_u(u,v))$.

$X_t^{\tilde{F}^\delta(u,v)} = 0$.

$0 = E_t[\delta(u,v)(\tilde{F}_t^\delta(u,v) - F^\delta_u(u,v))D_v]$.

$0 = E_t[\delta(u,v)\tilde{F}_t^\delta(u,v)D_v - E_u[D_u - D_v]]$.

$0 = E_t[-D_u + (1 + \delta(u,v)\tilde{F}_t^\delta(u,v)D_v]$.

Hence $\tilde{F}_t^\delta(u,v) = F_t^\delta(u,v)$.

Risky Zero Coupon Bond $D^{T,R}(u)$

Default at $T$ with recovery $R$

$C_u^{D^{T,R}(u)} = 1(T>u)$, $C_T^{D^{T,R}(u)} = RD_T(u) 1(T\le u)$

$X_0{D^{T,R}(u)}D_t = E[\int_0^u RD_s(u) D_s dP(T\le s) + 1(T > u)D_u]$.

$X_0{D^{T,R}(u)}D_t = E[\int_0^u R D_u dP(T\le s) + 1(T > u)D_u]$.

$X_0{D^{T,R}(u)}= (R P(T \le u) + P(T > u))D_t(u)$.

Risky Cash Flows

$C_t$ at $t_j$

$v = E[\sum_j C_j D_{t_j}]$

$v_tD_t = E_t[\sum_{t_j > t} C_j D_{t_j}]$

\begin{align}
v^{T,R} = &E[\sum_j C_j D_{t_j}] P(T > t_n)\\
          &+ \int_0^{t_n} E[\sum_{t_j < s} C_j D_{t_j}
           + RE_s[\sum_{t_j \ge s} C_jD_{t_j}]]\,dP(T\le s)
\end{align}

\begin{align}
v^{T,R} = &E[\sum_j C_j D_{t_j}] P(T > t_n)\\
          &+ \int_0^{t_n} E[\sum_{t_j < s} C_j D_{t_j}
           + R(\sum_{t_j \ge s} C_jD_{t_j})]\,dP(T\le s)
\end{align}

\begin{align}
v^{T,R} = &E[\sum_j C_j D_{t_j}] P(T > t_n)\\
          &+ \int_0^{t_n} E[\sum_{t_j < s} C_j D_{t_j}
           + (1-(1-R))(\sum_{t_j \ge s} C_jD_{t_j})]\,dP(T\le s)
\end{align}

\begin{align}
v^{T,R} = &v - (1 - R)\int_0^{t_n} E[\sum_{t_j < s} C_j D_{t_j}
           + (1-(1-R))(\sum_{t_j \ge s} C_jD_{t_j})]\,dP(T\le s)
\end{align}

$v^{T,R} = E[\sum_j C_j D_{t_j}] P(T > t_n)
+ \int_0^{t_n} E[\sum_{t_j < s} C_j D_{t_j}
+ R(\sum_{t_j \ge s} C_jD_{t_j})]\,dP(T\le s)$.

$v^{T,R} = E[\sum_j C_j D_{t_j}] P(T > t_n)
+ \int_0^{t_n} E[\sum_{t_j < s} C_j D_{t_j}
+ (1 - (1 - R))(\sum_{t_j \ge s} C_jD_{t_j})\,dP(T\le s)$.

$v^{T,R} = v -
(1 - R)\int_0^{t_n}E[\sum_{t_j \ge s} C_jD_{t_j}]\,dP(T\le s)$.
