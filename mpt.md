# Market Portfolio Theory

Consider a one period model of intruments $I$ with prices
$x\in\mathbf{R}^I$ at the beginning of the period and prices
$X\colon\Omega\to\mathbf{R}^I$ at the end of the period depending on
the outcome $\omega\in\Omega$. Let $P$ be a probability measure on $\Omega$.

Define the _(realized) return_ $R\colon\mathbf{R}^I\to\mathbf{R}$ by
$R(\xi) = \xi\cdot X/\xi\cdot x$. Note $R(\alpha\xi) = R(\xi)$ for
all non-zero $\alpha\in\mathbf{R}$.

To maximize $E[R(\xi)]$ we can use Lagrangian multipliers and maximize
$$
    \Phi(\xi,\lambda) = E[\xi\cdot X] - \lambda(\xi\cdot x - 1).
$$

We have
$$
    0 = E[X] - \lambda x.
$$
Since $\xi\cdot x = 1$ we have $\xi\cdot E[X] = \lambda$
so $E[X] = \xi\cdot E[X] x$. 
