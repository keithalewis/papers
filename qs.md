1.  If a family has two children and there is a boy in the family,
what is the probability that there is a girl?

Assuming the sample space is $\Omega = \{BB,BG,GB,GG\}$ with a uniform distribution,
the probability there is at least one girl given there is at least one boy is
$P(\{BG,GB,GG\}|\{BB,BG,GB\})
= $P(A|B) = P(A\cap B)/P(B)
= P(\{BG,GB\})/P(\{BB,BG,GB\}) = 2/3$.

[Cox theorem.]

2. If you have two stocks and they both have the same expected return,
but one has volatility of 20% and the other has volatility of 30%, and
they have a 50% correlation, how should I allocate a fixed sum of money
between the two stocks so as to minimize my risk?

More generally, let $X$ be a vector of stock returns. 
Assuming volatility is the measure of risk, we want to find a vector $\gamma$ that
minimizes $\Var(\gamma\cdot X)$ given $\gamma\cdot e = 1$, the fixed sum of money is 1,
where $e$ is a vector with
each component 1. Using Lagrangian multipliers, let
$\Phi = \Var(\gamma\cdot X) - \lambda(\gamma\cdot e - 1)$ and solve
$0 = d\Phi/d\gamma = 

Denote the two stock returns by $A$, and $B$.
Assuming
volatility is the measure of risk, we want to find $t$ that minimizes
$V = \Var (tA + (1 - t)B) = t^2 \Var(A) + 2t(1-t)\Cov(A,B) + (1-t)^2\Var(B)$.
We have $dV/td = 2t \Var(A) + (2(1 - t) - 2t)\Cov(A,B) = 2(1-t)\Var(B)$.

3. Suppose there is an infinite straight beach and there is a lighthouse
1 mile offshore.  The light rotates at 1 revolution per minute.  How fast
is the image of the beam on the beach, i.e. the "white dot", moving along
the beach when that white dot is exactly 3 miles from the lighthouse?

Let $\theta$ be the angle of the lighthouse beam with $\theta = 0$
corresponding to the closest point on the beach to the lighthouse.
The distance down the beach, $d(\theta) = \tan\theta$ miles.

4. Suppose that $X$ is a normal random variable with mean 0 and variance $v$,
what is the expected value of $e^X$?

Let $Z$ be standard normal, then $X = vZ$. We have
$Ee^X = \int_{-\infty}^\infty e^{vz} e^{-z^2/2}\,dz/\sqrt{2\pi}
= e^{v^2/2}\int_{-\infty}^\infty e^{-v^2/2} e^{vz} e^{-z^2/2}\,dz/\sqrt{2\pi}
= e^{v^2/2}\int_{-\infty}^\infty e^{-(z-v)^2/2}\,dz/\sqrt{2\pi}
= e^{v^2/2}\int_{-\infty}^\infty e^{-z^2/2}\,dz/\sqrt{2\pi} = 1$

5. What is the integral of sec(x) from x = 0 to x = pi/6?

$\int_0^{\pi/6} \sec(x)\,dx
= \int_0^{\pi/6} 1/\cos(x)\,dx

6.  If you are solving a parabolic partial differential equation by
using the explicit finite difference method, is it worse to have too
many time steps or too fine a grid in the space dimension?

Assuming there is no drift, 

If there is drift it gets more interesing.

7.  Suppose 2 teams play a series of up to 7 games in which the first
team to win 4 games wins the series and then no more games are played.
Suppose that you want to bet on each individual game in such a way that
when the series ends you will be ahead by exactly $100 if your team wins
the series, or behind by exactly $100 if your team loses the series, no
matter how many games it takes.  How much would you bet on the first game?


