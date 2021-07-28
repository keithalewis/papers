---
title: Unusual Returns
author: Keith A. Lewis
institution: KALX, LLC
email: kal@kalx.net
classoption: fleqn
...

[Bruce Knuteson](https://arxiv.org/pdf/2010.01727.pdf)
claims world stock markets have high overnight returns
and low, or even negative, intraday returns.
This short note explicates the
[Python code](https://bruceknuteson.github.io/spy-day-and-night/plot_suspicious_returns.py)
he wrote to illustrate this and suggest a more standard calculation of return.

Consider an _intraday_ strategy of buying on market open, selling on market close,
then reinvesting all capital at the next open. $V_0$ invested at
the first open $t^<_0$ accrues to $V_1 = S_{t^>_o}/S_{t^<_0}$ at
the first close $t^>_0$, where $S_t$ is the stock price at time $t$.
Read $<$ as 'open' and $>$ as 'close'.
We elide $t$ and write $V_1 = V_0 S^>_0/S^<_0$.
Denote the realized return over the $j$-th period by $R_j = S^>_j/S^<_j$.
No trading occurs between market close and the next market open
and we reinvest all capital at each open so $V_{j+1} = V_j R_j$ for all $j\ge0$.
The realized return of an intraday strategy from the first buy at $t^<_0$ to
the last sell at $t^>_j$ is $R_0\cdots R_j$. All realized returns are
associated with a time period, in this case interval $[t^<_0, t^>_n]$.

If a fixed dividend $d_j$ is paid during the $j$-th interval $(t^<_j, t^>_j]$
the price at close incorporates this cash flow and $S^-_j = S^>_j - d_j$
is the _dividend adjusted_ share price at close for that period.

The same argument holds for any times $u_j$, $v_j$ with $u_j < v_j$ and
$v_j < u_{j+1}$ where $R_j = S_{v_j}/S_{u_j}$.  An _overnight_ strategy
uses $u_j = t^>_j$, the close, and $v_j = t^<_{j + 1}$, the next day open.

## Code

Knuteson uses data from [Yahoo! Finance](https://finance.yahoo.com/).
Trading days where open, high, low, close, and adjusted close are all equal are discarded
Certain dates for `ISFU.L`, `^AEX` `OBXEDNB.OL`, and `^TA125.TA` with bad data are also excluded.

He works with _intraday_ returns $i_j = R_j - 1$ where $R_j = S^>_j/S^<_j$
is the realized return over period $[t^<_j, t^>_j]$.
The _close-to-close_ return is $c_j = S^a_{j + 1}/S^a_j - 1$ over $[t^>_j, t^>_{j+1}]$
where $S^a_j$ is the (Yahoo!) adjusted close at $t^>_j$.
_Overnight_ return is $o_j = (1 + c_j)/(1 + i_j) - 1$
so the overnight realized return is $O_j = C_j/R_j$.

The function `make_one_intraday_overnight_return_plot` at line 337 plots
`cumprod(returns_intraday + 1) - 1` and `cumprod(returns_overnight + 1) - 1`.

This is a complete description of how the intraday and overnight plots are calculated.

## Remarks

The first cumulative product evaluates to $V_j - 1$ where $V_j = R_0\cdots R_j$ 
since $i_j + 1 = R_j$ and $V_j = R_0\cdots R_j$.
If we define the _continuously compounded return_ $r$ over $[u,v]$
by $R = e^{r(v -u)}$, where $R$ is the realized return over the period, then
$r = (\log R)/(v - u)$. 
If we define the _annualized return_ $r$ over $[u,v]$
by $R = (1 + r)^{v - u}$ then $r = R^{1/(v - u)} - 1$.

Knuteson's overnight returns are not the same as the natural definition above.
His overnight return involves $i_j$ and $c_j$, which are returns over different periods.
Also, $c_j$ involves adjusted prices that are not available for trading.
It is not clear what trading strategy can be used to replicate replicate these returns.

See the [Unified Model](https://keithalewis.github.io/math/um.html) for details on how
to calculate returns for trading strategies involving dividends.

## Yahoo! Adjusted Close

Given dates $D_0 < D_n$ and a period $\Delta$ Yahoo! Finance returns the open, high,
low, close, adjusted close, and volume at date $D_j = D_0 + j\Delta$, $0\le j \le n$, for a
given instrument symbol. 
Let $t^<_j$ be the market open time and $t^>_j$ is the market closing time on date $D_j$ for the instrument.
The query returns the open $S_{t^<_j}$, high $\max_{t^<_j \le t \le t^>_j} S_t$,
low $\min_{t^<_j \le t \le t^>_j} S_t$, and close $S_{t^>_j}$.
Converting times to UTC requires particular information about the exchange on which
the instrument trades.

Let $d_k$ be the dividend on date $D_k$.
The _Yahoo! adjusted close_ on that date is
$S^a_j = S^>_j \Pi_{j \le k \le n}(1 - d_k/S^>_k)$.  Note most $d_k$ are zero and
$S^a_n = S^>_n (1 - d_n/S^>_n) = S^>_n - d_n$ for the most recent price.
Since $S^a_k/S^a_{k+1} = (S^>_k/S^>_{k+1})(1 - d_k/S^>_k)$
we have $d_k = S^>_k(1 - R^>_k/R^a_k) = S^>_k - S^>_{k+1}S^a_k/S^a_{k+1}$.


## Remarks

Futures data returned by Yahoo! Finance require a different interpretation.
The adjusted close is always equal to the close and the "prices" returned are
the futures _quotes_.
The price of futures is always zero. The difference in futures quotes is the
sum of the margin cash flows associated with the futures.
