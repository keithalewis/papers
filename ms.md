# Monotonic Series

A _monotonic series_ is a sequence of times, \((t_j)\), from a totally
ordered set \(T\) such that \(t_j < t_k\) in the total order
whenever \(j < k\).

A _time series_ is a sequence of pairs, \((t_j,X_j)\), where \((t_j)\) is a
monotonic series and \(X_j\) are values in some vector space.

There are two natural ways to turn a time series into a function
on \(T\) assuming you can only act on past data.
Let \(X_j(t_j]\) be the function
\(t\mapsto X_j\) if \(t_{j-1}<t\le t_j\)
and let \(X_j[t_j)\) be the function
\(t\mapsto X_j\) if \(t_{j-1}\le t< t_j\).
The first is what risk managers are interested in, the second is
what traders deal with.

Given a vector valued function \(X\colon T\to V\) and a monotonic
series \((t_j)\), there are two natural ways to turn the
function into a time series.

Given time series \(t^0, t^1,\dots\) define the _ziggurat_,
\(t = t^0\lciel t^1 \dots\) by \(t = t^0\) until \(t^1\),


