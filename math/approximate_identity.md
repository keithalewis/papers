# Approximate Identity

An _approximate identity_ is a sequence of functions,
$(k_n)_{n\in\mathbf{N}}$ such that $\lim_{n\to\infty}\int_\mathbf{R}
f(x)k_n(x)\,dx = f(0)$ for any integrable function $f$ that is
continuous at $0$. They provide a rigorous approach to [delta
functions](delta_function.md).

Note $\lim_n \int f(x)k_n(x - a) = f(a)$ if $f$ is continuous at $a$.

Let $(k_n)_{n\in\mathbf{N}}$, where $k_n\colon\mathbf{R}\to\mathbf{R}$, satisfy

  i. $k_n\ge0$ for all $n$
  ii. $\int_{\mathbf{R}} k_n(x)\,dx = 1$
  iii. For every $\delta > 0$ and $\epsilon > 0$ there exists $n_{\delta,\epsilon}\in\mathbf{N}$
     such that $\int_{|x|>\delta} k_n(x)\,dx < \epsilon$ for $n > n_{\delta,\epsilon}$.

If $k\colon\mathbf{R}\to\mathbf{R}$ is non-negativs and $\int_{\mathbf{R}} k(x)\,dx = 1$ then
$k_n(x) = n k(nx)$ is an approximate identity. Given $\epsilon > 0$ there exists
$N$ such that $\int_{|x| > N} k(x)\,dx < \epsilon$.

## Remarks

The condition $k_n\ge0$ can be replaces with $\sup_n ||k_n||_1 < \infty$ where
$||f||_1 = \int_{\mathbf{R}} |f(x)|\,dx$.

The sequence $n\in\mathbf{N}$ can be replaced by a [_net_](net.md).
