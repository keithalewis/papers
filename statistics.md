---
title: Statistics
author: Keith A. Lewis
institution: KALX, LLC
email: kal@kalx.net
classoption: fleqn
abstract: |
	This note collects salient facts about Statistics.
...

# Statistic/Estimator

Statistics are numbers associated with random variables, e.g., mean, standard deviation,
skew, kurtosis.

A _statistic_, or _estimator_, is a function of random variables.
They can be used to make probabilistic statements about statistics.

Let $s_n:\mathbf{R}^n\to\mathbf{R}$ be $s_n(x_1,\ldots,x_n) = (1/n)(x_1 + \cdots x_n)$.
If $(X_i)$ are _independent, identically distributed_ random variables
(i.e., $X_i$ and $X_j$ are independent if $i\not= j$ and all $X_i$ have the same law)
we can make probabilistic statements about the random variable $S_n = s_n(X_1,\ldots,X_n)$.

For example, if $(X_i)$ are iid with the same law as the random variable $X$ then
$E[S_n] = E[X]$ for all $n$.  We say $S_n$ is an _unbiased estimator_ of the statistic $E[X]$
since $S_n$ has the same mean as $X$.
Also, $\mathrm{Var}(S_n) = (1/n)\mathrm{Var(X)}$ so $E[S_n]$ converges
to the mean of $X$ as $n$ goes to infinity (assuming $\mathrm{Var}(X)$ is finite).

Since $\mathrm{Var}(X) = E[(X - E[X])^2] = E[X^2] - E[X]^2$ we might estimate the variance using
$v_n(x_1,\ldots,x_n) = (1/n)\sum_i x_i^2 - s_n(x_1,\ldots,x_n)^2$ since $S_n$ is an estimator of $E[X]$.
Note $\mathrm{Cov}(X_i, X_j) = E[X_i X_j] - E[X_i]E[X_j] = 0$ if $i\not= j$ because of independence
and is equal to $\mathrm{Var}(X_i)$ if $i = j$.
The expected value of $S_n^2$ is
$$
\begin{aligned}
	E[S_n^2] &= E[(\frac{1}{n} \sum_i X_i)^2]\\
		&= E[\frac{1}{n^2} \sum_{i,j} X_i X_j]\\
		&= \frac{1}{n}\mathrm{Var}(X)\\
\end{aligned}
$$
so the expected value of $V_n$ is
$$
\begin{aligned}
	E[V_n] &= E[\frac{1}{n} \sum_i X_i^2 - S_n^2]\\
		&= E[\frac{1}{n} \sum_i (X_i^2 - 2X_i\bar{X}_n + \bar{X_n}^2)]\\
\end{aligned}
$$

## Sample

This is where things get confusing. Somehow random variables get magically turned into numbers.
