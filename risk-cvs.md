# Knock-out Corridor Variance Swap

This is a review of "Knock-out Corridor Variance Swap - a PDE Approach" by
Colin Chen and Richard Ma submitted to Risk.

The paper proposes an approach to pricing using a dimension reduction
technique in a finite-difference method for solving a partial differential
equations.  They generalize the results of Ahallal and Torn\'e who cite
Carr and Lewis which introduced the idea of using barrier options for
hedging corridor variance swaps with discrete sampling.

They define _knock out_ as the underlying traversing the upper and
lower barrier during one sample period. Unless the corridor range is
narrow or the sample period is short, this rarely happens.  A single
lower barrier is more common and useful for hedging volatility

without ...???

## Specific Comments

Equation (1) seems to be missing a factor in the second term on the right-hand side.

It is not true that "PDE with more than two spatial dimenions"...

Greeks for MC can be accurate when using the same samples for bumps.

## Conclusion

Their results might be an advance in dimension reduction for certain
PDE's but not necessarily specific to knock-out corridor variance swaps.
It my be more appropriate for a mathematics journal.

Edit non native speakers...

NOTES

Processes with jumps? Closed form for L\'evy?

Greeks for MC can be accurate when using same samples for bumps.
