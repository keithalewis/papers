# Vocabulary 

[Fischer Black](https://en.wikipedia.org/wiki/Fischer_Black)
emphasized the importance of vocabulary.
It is, after all, how human beings communicate.

Each entry provides a definition in plain English and assigns mathematical
terms for the concepts involved in the definition. These are immediately
followed by a brief exegesis of the limitations involved in using
mathematics to model the real world. Additional notes are sometimes
provided.

The real world is big, complicated, and messy.
[Mathematics](mathematics.md) can be used to bring some order
and rationality but will always remain a poor shadow.

## Fundamentals

[Transactions](transaction.md) are the atoms of finance. A
[buyer](buyer.md) and [seller](seller.md) exchange [amounts](amount.md)
of [instruments](instrument.md) at a given date and time. The ratio
of the buyer amount and the seller amount is the [price](price.md).
Instruments have [cash flows](cash_flow.md) that accrue to the owner
proportional to their number of [shares](share.md)
<!--
[stocks](stock.md) have
dividends, [bonds](bond.md) have coupons, [futures](futures.md) have
margin adjustments.
-->

A [model](model.md) specifies the
future prices and cash flows associated with instruments.

<!-- (who, what, when, where, why) -->

## The Real World

Parties in financial markets trade [instruments](instrument.md).
An instrument is either a [security](security.md) or [derivative](derivative.md).

[Exchanges](exchange.md) arrange for [liquidity
providers](liquidity_provider.md) to offer instruments to any customer
able to set up a margin account.  They provide a nearly instantaneous
mechanism for buyers and sellers to make transactions.

More complicated transactions are handled [over-the-counter](otd.md).
A buyer contacts a seller and negotiates a contract for the
exchange of cash flows. The buyer is usually a company and
the seller is usually an investment bank that they have an
established relationship with. Instead of a margin account
they have collateral agreements to mitigate the risk of
of multiple transactions.

Brokers and dealers are intermediaries used to facilitate
over-the-counter transactions. They are similar to exchanges
but less efficient.

Investors hope to generate better returns than the prevailing risk-less
interest rate by taking on some risk.  Speculators believe they have
information that might generate even higher returns. Hedgers can use
market instruments to reduce their risk.

Every participant is a legal entity, either an individual or a
corporation, that can be held accountable for their actions. They
are governed by regulations that restrict what they can do and the
consequences of their actions. Most mathematical models do not take
this into account. 

Participants trade _instruments_, stocks, bonds, futures, options, to
name only a small subset. Instruments have _prices_ at which they are
bought and sold, and ownership often entails _cash flows_.

Stocks have dividends, bonds have coupons and principal, futures always
have price zero and regular margin adjustment cash flows,
options are contracts specifying their cash flows.

Instruments can be traded on _exchanges_ or _over the counter_.

An exchange is a mechanism for _liquidity providers_ to advertise
the prices at which they are willing to buy or sell instruments.
The _customers_ of the exchange decide what trades they are willing
to make. The exchange incur very little risk since it can close
out customer accounts that use up their margin.

Over the counter trades occur between two parties. A buyer chooses
a seller and agrees on the terms of the trade. Unlike an exchange
where trades happen nearly instantaneously, the negotiation can
involve an extended period of time. They often involve _collateral
agreements_ between the two parties to mitigate risk.
