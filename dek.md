# Double Exponential Kernel

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
          &= \int_{-\infty}^\infty \exp(-|y - x|)\sgn^2(y<x) - 2\delta_x(y) f(y)\,dy \\
          &= Tf(x) - 2 f(x) \\
\end{align*}

If $\lambda^2$ is an eigenvalue of $T$ then $Tf = \lambda^2 f$
so $Tf - 2f =\lambda^2 f''$ and $\lambda^2 f + (2-\lambda^2)f = 0$.
