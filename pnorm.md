---
title: $D\|x\|^p = px\|x\|^{p - 2}$
author: Keith A. Lewis
...

Let $X$ be a normed linear space over the real numbers and $F\colon X\to\RR$ be a real-valued function.

The _dual_ of a normed vector space is $X^* = \mathcal{B}(X,\RR)$, the space of all
linear functionals from $X$ to the real numbers $\RR$. It is also a normed
vector space with $\|x^*\| = \sup_{\|x\| \le 1} |\langle x, x^*\rangle|$
where $\langle x, x^*\rangle = x^*(x)$ is the dual pairing.
If $X$ is a Banach space the supremum is achived for some $e\in X$ with $\|e\| = 1$.
Likewise, $\|x\| = \langle x, e^*\rangle$ for some $e^*\in X^*$ with $\|e^*\| = 1$.

If $X = \RR^n$ then $X^*$ can be identified with $X$ where the dual pairing is the dot product.
Note $\langle x, y^*\rangle = x\cdot y = (x,y)$ where we write $y^*$ for $y\in X$
considered as an element of the dual.
In this case $\|x\| = x\cdot e$ where and $e = x/\|x\|$ and $\|e\| = 1$.

The Frechet derivative $DF\colon X\to \mathcal{B}(X,R) = X^*$ satisfies
$F(x + h) = F(x) + \langle h, DF(x)\rangle + o(\|h\|)$.

If $F(x) = \|x\|$ then $DF(x) = x^*/\|x\|\in X^*$ when $x\not=0$.

The Frechet derivative satisfies the chain rule so if $F(x) = \log\|x\|$
then $DF(x) = 1/\|x\| x^*/\|x\| = x^*/\|x\|^2$.

Let $F(x) = \|x\|^p = \exp(p\log\|x\|)$ then
$DF(x) = \exp(p\log\|x\|) p x^*/\|x\|^2 = p x^* \|x\|^{p - 2}$.

## Appendix

We show $D\|x\| = x^*/\|x\|$. Note $\|x + h\| = (x + h)\cdot(x + h)/\|x + h\|
=(\|x\|^2 + 2h\cdot x + \|h\|^2)/\|x + h\|$ Since $\|x + h\| = \|x\| + O(\|h\|)$
we have $\|x + h\| - \|x\| = 2x\cdot x/\|x|\| + o(\|h\|)$.
