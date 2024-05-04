## Review 

Dear Adeyemi,

Below is my review of "Linking the performance of vanilla options to the volatility premium"
by Olivier Daviaud and Abhishek Mukhopadhyay.

I am very heartened to see research done in this area and wish to encourage the authors
to continue making advances in such fundamental results.
The elephant in the room is that option pricing depends on volatility,
but volatility depends on the price of an option.
Their work on disentangling gamma and vega is a step in the right direction.

2.1 Disentangling gamma and vega

Let $P(\sigma, r, q, t, T)$ be the Black-Scholes price

Should be

Let $P(S, \sigma, r, q, t, T)$ be the Black-Scholes price where $S$ is the price at time $t$, ...

In the case $r = q = 0$, the formula for P&L is 

$P\&L = dP - (dP/dS)S = P_t\,dt + P_s\,dS + (1/2) P_{ss}\,d\langle S\rangle - P_s\,dS$

If $P$ satisfies the Black-Scholes PDE then P&L = 0. The authors seem to assume
$d\langle S\rangle \not= \sigma^2S^2\,dt$.

This is a mathematical fact for Ito diffusions used in the Black-Scholes
theory, and even Ito processes, based on well-established literature.
The wonderful thing about mathematics is that each theory is based on
axioms and rules of inference.  If two mathematicians disagree they can
get to the truth or falseness of an assertion by using that theory to
either demonstrate a proof or exhibiting a counterexample. Many authors
have already provided generally accepted proofs.  I am asking the authors
of this paper for a counterexample.

After talking with Peter Carr about this, he reminded me of my duties as
a reviewer and your guidelines. I would like to encourage the authors
to continue their investigation incorporating volatility when
understanding how to manage trading risk.

It is true, using the authors notation, that $P_{t+\Delta t} - P_t \not= dP/dS(S_{t+\Delta t} - S_t)$.
This is the fundamental issue every trader using delta hedging faces every day.
They do not have the mathematical luxury of assuming $\Delta t$ is infinitesimal, but
they do have the option of choosing $\Delta t$. I am not aware of any results traders
would find useful in determining this increment and would be pleased to find out I'm wrong.
When markets move traders need to hedge right away and know their volatility estimate should probably get larger.

I read further into the paper and have some comments I hope the authors will find useful.
While it is perfectly fine to consider $dP/d\sigma$ in the classic Black-Scholes theory,
in order to discuss $d\sigma$ one must go beyond that.
The Black-Scholes theory posits a bond $R_t$ and a stock $S_t$ where
$dR/R = \rho\,dt$ and $dS/S = \mu\,dt + \sigma\,dB$.
It is valid to introduce a new stochastic process $d\Sigma = \alpha\,dt + \beta\,dB$.
The Black-Scholes theory can be modified to assume stock prices satisfy $dS/S = \mu\,dt + \Sigma\,dB$.
I think their results can be made rigorous using the standard theory of Ito processes.
Terms do not enter the fray

I understand you are under publication deadlines and are probably not concerned about mathematical
correctness. Maybe you can view this as an attempt to protect your brand and encourage
the authors to continue their future contributions.

