# Unified Derivatives

Advances in large data and distributed computing have made it possible to
value, hedge, and manage the risk of large portfolios across all asset
classes. A unified theory provides a coherent foundation for real-time
analysis and monitoring of all instruments. As with any model, tuning
to market data is a challenging problem that is amenable to ML techniques.

The _market_ is modelled by vector-valued _price_, $(X_t)$, and 
_cash flow_, $(C_t)$ processes. The cash flow process represents
discrete payments associated with owning instruments: dividends
for stocks, coupons for bonds, margin adjustments for futures.

Every arbitrage-free model has the form
$X_t = (M_t - \sum{s\le t} C_s D_s)/D_t$ where $(M_t)$ is a vector-valued
martingale and $(D_t)$ is a positive scalar process.
