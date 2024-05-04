# The Unified Model

This talk presents a unified approach to mathematical finance models. It
models the prices and cash flows of all instruments using a consistent
framework.  Every arbitrage free model is parameterized by a vector
valued martingale and a positive adapted process: the deflator.

If the model includes repurchase agreements then there is a canonical
deflator: the reciprocal of the money market account resulting from
rolling over an initial unit investment.
aka stochastic discount.

The Black-Scholes/Merton model is defined by the martingale $M_t = [r,
s\exp(\sigma B_t - \sigma^2 t/2)]$ and the deflator $D_t = \exp(-\rho
t)$. No need for Ito's lemma, PDE's, or the Hahn-Banach theorem.

One defect of the classical theory is that it is not possible to hedge in
continuous time. Traders have to decide when and how much to trade. The
unified model incorporates this but leaves open the question of how good
the hedge is. We will review some current research that uses reinforcement
learning to handle this problem.

Keith A. Lewis [kal@kalx.net]
