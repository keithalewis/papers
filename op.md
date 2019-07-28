# Option Portfolios

Any portfolio of stocks and options can be reduced to a portfolio
of calls.

$$
\begin{aligned}
E[(k - S_t)^+ (k' - S'_{t'})^+]
&= E[(k - S_t) (k' - S'_{t'}) 1(S_t \le k) 1(S'_{t'} \le k')] \\
&= kk'E[1(S_t \le k) 1(S'_{t'} \le k')] \\
&\quad - kE[S'_{t'} 1(S_t \le k) 1(S'_{t'} \le k')] \\
&\quad - k'E[S_t 1(S_t \le k) 1(S'_{t'} \le k')] \\
&\quad + E[S_t S'_{t'} 1(S_t \le k) 1(S'_{t'} \le k')] \\
&= kk'E[1(S_t \le k) 1(S'_{t'} \le k')] \\
&\quad - kE[S'_{t'} 1(S_t \le k) 1(S'_{t'} \le k')] \\
&\quad - k'E[S_t 1(S_t \le k) 1(S'_{t'} \le k')] \\
&\quad + E[S_t S'_{t'} 1(S_t \le k) 1(S'_{t'} \le k')] \\
\end{aligned}
$$

$\Var\sum_i C_i D_i = sum_{j,k} \Cov(C_j D_j, C_k D_k)$.
