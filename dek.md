---
title: Double Exponential Kernel
author: Keith A. Lewis
institution: KALX, LLC
email: kal@kalx.net
classoption: fleqn
...

Consider the operator $Tf(x) = \int_{-\infty}^\infty \exp(-|y - x|) f(y)\,dy$.
It is a positive, symmetric, compact linear operator on $L^2$.

We have

\begin{align*}
(Tf)'(x) &= \int_{-\infty}^\infty (d/dx)\exp(-|y - x|) f(y)\,dy \\
         &= \int_{-\infty}^\infty \exp(-|y - x|)\sgn(x<y) f(y)\,dy \\
\end{align*}

and

\begin{align*}
(Tf)''(x) &= \int_{-\infty}^\infty (d/dx)\exp(-|y - x|)\sgn(y<x) f(y)\,dy \\
          &= \int_{-\infty}^\infty \exp(-|y - x|){\sgn}^2(y<x) - 2\delta_x(y) f(y)\,dy \\
          &= Tf(x) - 2 f(x) \\
\end{align*}

If $f$ is an eigenvector corresponding to the eigenvalue $\lambda^2$, then
$\lambda^2 f'' = \lambda^2 f - 2 f$ so $f'' - (2/\lambda^2 - 1) f = 0$.
The eigenvectors are linear combinations of $\cos\alpha x$ and $\sin\alpha x$
where $\alpha = \sqrt{2/\lambda^2 - 1}$. Since $T$ is compact the eigenvalues
tend to 0 and the frequencies of $\cos$ and $\sin$ increase.
