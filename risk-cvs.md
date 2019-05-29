# Knock-out Corridor Variance Swap

This is a review of "Knock-out Corridor Variance Swap - a PDE Approach" by
Colin Chen and Richard Ma submitted to Risk.

The paper proposes an approach to pricing using a dimension reduction technique
in a finite-difference method for solving a partial differential equation.

Exact definition of knock out? I_{j-1} I_j? How often is this true?

Single lower barrier more common and useful.

Equation (1) is not correct. Perhaps a factor of 252 K^2?

Ahallal and Torn\'e quote Carr and Lewis which had the idea of using barrier options.

Barriers not closed form, but can be priced using PDE's.

Dubious claims.
"PDE with more than two spacial dimenions"

Conclusion

Might be an advance in dimension reduction for certain PDE's but not necessarily
specific to knock-out corridor variance swaps.

NOTES

Processes with jumps? Closed form for L\'evy?

Greeks for MC can be accurate when using same samples for bumps.
