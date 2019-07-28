# Model Independence

Some facts hold for any arbitrage-free models.

## Cost of Carry

Consider a bond with realized return $R$, a stock, and an at-the-money forward on the stock.

The model is $x = (1, s, 0)$ and $X = (R, S, S - f)$ where $S$ is the stock price.
It is arbitrage-free if there is a positive measure with $x = \Pi X$.
Using $1 = \Pi R = R||\Pi||$ and $s = \Pi S$ we have
$0 = \Pi (S - f) = s - f||\Pi|| = s - f/R$. 

The spot times the realized return is the forward.

## Put-Call Parity

Consider a bond, stock, put, and call.

The model is $x = (1, s, p, c)$ and $X = (R, S, \max\{k - S, 0\}, \max\{S - k, 0\})$.
It is arbitrage-free if there is a positive measure with $x = \Pi X$.
Using $1 = \Pi R = R||\Pi||$ and $s = \Pi S$ we have
$p = \Pi\max\{k - S, 0\}$ and $c = \Pi\max\{S - k, 0\}$ so
$c - p = \Pi (S - k) = s - k/R$.
