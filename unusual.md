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
he wrote to illustrate this and shows how to correctly calculate returns.

Consider an _intraday_ strategy of buying on market open, selling on market close,
then reinvesting all capital at the next open. $V_0$ invested at
the first open $t^<_0$ accrues to $V_1 = S_{t^>_o}/S_{t^<_0}$ at
the first close $t^>_0$, where $S_t$ is the stock price at time $t$.
We elide $t$ and write $V_1 = V_0 S^>_0/S^<_0$.
Denote the realized return over the $j$-th period by $R_j = S^>_j/S^<_j$.
No trading occurs between market close and the next market open
and we reinvest all capital at each open so $V_{j+1} = V_j R_j$ for all $j\ge0$.
The return of an intraday strategy from the first buy at $t^<_0$ to
the last sell at $t^>_j$ is $R_0\cdots R_j$.

If a fixed dividend $d_j$ is paid during the $j$-th interval $(t^<_j, t^>_j]$
the price at close incorporates this cash flow and $S^-_j = S^>_j - d_j$
is the _dividend adjusted_ share price at close for that period.

There is nothing special about market open and market close. The same argument
holds for any times $t^<_j$, $t^>_j$ if $t^<_j < t^>_j$ and $t^>_j < t^<_{j+1}$.
An _overnight_ strategy replaces open $t^<_j$ with close $t^>_j$ and close $t^>_j$
with the next day open $t^<_{j + 1}$.

## Code

Knuteson uses data from [Yahoo! Finance](https://finance.yahoo.com/).
Trading days where open, high, low, close, and adjusted close are all equal are discarded
Certain dates for `ISFU.L`, `^AEX` `OBXEDNB.OL`, and `^TA125.TA` with bad data are also excluded.

He works with _intraday_ returns $i_j = R_j - 1$ where $R_j = S^>_j/S^<_j$
is the realized return over period $j$.
The _close-to-close_ return is $c_j = S^a_{j + 1}/S^a_j - 1$
where $S^a_j$ is the adjusted close at $t^>_j$.
_Overnight_ return is $o_j = (1 + c_j)/(1 + i_j) - 1$
so the overnight realized return is $O_j = C_j/R_j$.

The function `make_one_intraday_overnight_return_plot` at line 337 plots
`cumprod(returns_intraday + 1) - 1` and `cumprod(returns_overnight + 1) - 1`.

This is a complete description of how the intraday and overnight plots are calculated.

## Remarks

The first cumulative product evaluates to $V_j - 1$ where $V_j = R_0\cdots R_j$ 
since $i_j + 1 = R_j$ and $V_j = R_0\cdots R_j$.
This number is financially meaningless. The average daily return $\bar{i}_j$ from $t_0$ to $t_j$
satisfies $(\bar{i}_j + 1)^j = (i_0 + 1)\cdots(i_{j-1} + 1) = V_{j - 1}$ so $\bar{i}_j = V_{j-1}^{1/j} - 1$
is the meaningful value to plot.

Knuteson's overnight returns are not the same as the natural definition above.
It is not clear what trading strategy can be used to replicate his definition since it involves
adjusted closing prices that are not available for trading.

## Yahoo! Adjusted Close

Let $d_k$ be the dividend paid at $t_k$. The _Yahoo! adjusted close_ at time $t_j \le t_n$ is
$S^a_j = S^>_j \Pi_{j \le k \le n}(1 - d_k/S^>_k)$.  Note most $d_k$ are zero and
$S^a_n = S^>n (1 - d_n/S^>_n) = S^n - d_n$ for the most recent prices.

Since $S^a_{k+1}/S^a_k = S^>_{k+1}/S^>_k (1 - d_k/S^>_k) = (S^>_{k+1} - d_k)/S^>_k$
we have $d_k =  S^>_{k+1} - S^>_k S^a_{k+1}/S^a_k$.
