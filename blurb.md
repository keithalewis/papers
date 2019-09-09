The most important unsolved problem in Mathematical Finance faced by
banks and large hedge funds is how to manage the risk of _all_ the trades
on their books.

This talk presents a unified approach to mathematical finance models. Every
arbitrage free model is parameterized by a vector valued martingale and
a positive adapted process: the deflator, or stochastic discount.

If the model includes repurchase agreements then there is a cannonical
deflator. It is the reciprocal of the money market account resulting
from rolling over an initial unit investement.

The Black-Scholes/Merton model is defined by the martingale
$M_t = [r, s\exp(s B_t - \sigma^2 t/2)]$ and the deflator
$D_t = \exp(-\rho t)$. No need for Ito's lemma, PDE's, or
the Hahn-Banach theorem.

One defect of the classical theory is that it is not possible
to hedge in continuous time. Traders have to decide when
and how much to trade.

There have been recent advances in this area.
