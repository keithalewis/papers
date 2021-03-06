---
title: Finance - Math - Software
author: Keith A. Lewis
institute: KALX, LLC
classoption: fleqn
---

The financial world is a huge, complicated human endeavor.
No single person can even begin to comprehend its diversity,
yet it exists and has a huge impact on everyone's daily life.

Mathematics can be used to grapple with a small subset of that.
It can add value by providing rigourous definitions of terms used
by practicioners and provide a simplified model amenable to rational
treatment.

Implementing financial models in software is a way to turn mathematics
into numbers that make sense to the people paying for that.
Mathematicians and programmers are ill prepared to understand the
complexity of the financial world but they can add value if they are
willing to take a humble attitude and listen carefully to the people
with problems to solve.

Everyone in the Finance-Mathematics-Software loop can benefit from each
other to improve the quality of the modern, fast changing, world we
live in now. It can also be used to take advantage of people who don't
understand its workings.

What follows is my best understanding of what is involved and an attempt
to provide useful tools.

## Finance

The players in the financial world exchange instruments in markets.
We will discuss the participants and means of trading but ignore important
legal and tax matters.

Most transactions have a _buyer_ and a _seller_. Some transactions
involve an intermediate _broker_ or _exchange_.  Buyers belong to the
_buy side_ and sellers belong to the _sell side_.  Buyers are _price
takers_, sellers are _price makers_.  Don’t confuse buyer and seller
with the verbs buy and sell.

Buyers decides whether or not to buy or sell based on the _prices_ offered
by a seller. A buyer can decide to go _long_ or _short_. A buyer is long
if they own something that increases in value as the market goes up.
If a buyer is short, if they make money as the market goes down.

Sellers _make a market_ for buyers. They provide prices for buyers who
decide to buy at the _ask_, or sell at the _bid_. The ask price is also
called the _offer_, but the seller is not really offering anything other
than the opportunity for buyers to transact.  Sellers make their living
off of this asymmetry, among other things.

Prices are never _infinitely divisible_, all instruments trade in discrete
increments.  Markets are never _perfectly liquid_, the _spread_ is the
difference between the ask and the bid.  The price also depends on the
amount being transacted and who the buyer and seller are.  There is
also a limit on the amount participants can transact.

### Broker, Dealer

A _broker_ is an intermediary between buyers and sellers. They get
paid a _commission_ or _fee_ when a buyer and seller make a trade based
on the information they provide.  A _dealer_ provides an inventory of
instruments.  Often the broker and dealers are the same and are called
_broker-dealers_. 
They can also be buyers and sellers for their own account and often use
other broker-dealers for this. 
Market movements in the instruments they
hold allow them to make (or lose) money in addition to fees.


### Exchange

Exchanges have aggreements with _liquidity providers_ (sellers) and aggregate
quotes to provide customers (buyers) the best bid/ask spread currently
available. They take a fraction of the spread charged by their liquidity
providers so their profits are proportional to the volume of trades.
Some exhanges are also permitted to hold positions, just as dealers do,
but are then subject to stricter regulation.

Customers open an account on an exchange by posting _margin_. As trades
go aginst a customer the exchange withdraws money to offset possible
losses. If your margin goes to zero the exchange issues a _margin call_
requiring you add funds in order to maintain your _position_. If you
do not do that then all your trades are liquidated, usually at
a price favorable to the exchange, and keeps your margin.

Unlike broker-dealers, no exchange has every gone bankrupt.[1]

[1] Global Crossing?

### Mutual Fund

...

### Hedge Fund

...

### ETF

...

### Investor

In addition the buy-side for companies there is also a _retail_ market
for individual investors.

## Instrument

We use _instrument_ as a catch-all term for what can be traded in the
market. 
<!-- put in order of market size??? -->
Stocks,
bonds,
cash deposits,
forward rate agreements,
swaps,
currency,
commodities,
and derivatives
are just a few examples.

Owning an instrument involves _cash flows_. Stocks pay dividends. Bonds pay
coupons on a regular schedule and principal at maturity.
In the spot
foreign exchange market you get paid the difference between the rates
of interest in the currency pairs you hold each day.

### Security

A _security_ is an instrument backed by assets owned by the issuer.
Bond and stocks are securities. If the issuer goes bankrupt then the
assets can be used by security holders to recoup security holders.

Prices are determined by the market. The value of a transaction
is a judgement made by a buyer, but models can be used to
help quantify the value.


### Derivative

A derivative is a legal contract between two _counterparties_ for future
exchanges of cash flows and are used 
They typically have a finite lifetime until
they _expire_ and become worthless.

A _derivative securities_
is a bit misleading. A derivative is
quite different from a security like a stock, bond, or currency. If
you stuff a deriviative under your mattress it will eventually be
worthless. Derivatives don’t provide equity in a company that allows
you to influence decisions on how it is run. If a company goes bankrupt
there is no preferred treatment on the assets of the company that bond
holders receive. Currencies are a very different creature that big banks
control access to.


Derivatives use market traded securities to manufacture arbitrary cash
flow streams. There is a mathematical theory that can be used to determine
the trades required to do so. As with any theory, it has assumptions
that hold to greater or lesser degree.

It is important to distinguish the price of an instrument from the
cash flows associated with owning it. Market traded instruments have
prices. There is a mathematial theory that can provide a value for a
derivative instrument given the cash flows specified in a contract.

The value a model provides is not a price. It is used for pricing
derivatives, and people do transactions based on that, but one of the
serious shortcomings of the theory is that it does not provide a good
measure of how accuate the value is. Risk management of that uncertainty
is still in it’s early stages.

## Securities

There are many more securities than just currencies, bonds, and
stocks. Commodities are also securities and futures are derivatives
that allow speculators to reduce the risk producers faced. Convertible
bonds start out as bonds but contain a provision allowing the holder to
convert them into shares of stock. Mortgage backed securities have cash
flows determined by the interest and principal paid on a collection
of mortgages. Credit default swaps provide insurance in the event a
company defaults.

There are even securities that are based on the weather or future earnings
of celebrities like David Bowie. The mathematical theory behind valuing
these products is not up to the inventivness of those trying to make
a buck off of people who have money but don’t really understand what
they are buying.

## Markets

Exchanges provide nearly instantaneous access to transactions via market
orders. The price cannot be guaranteed by the exchange. You get filled
depending on the limit orders in the current order book.

A limit order is a way for buyers to act like sellers. You can offer
to buy or sell some quantity of an instrument at a price. If the market
moves to the level you offer, then you can get filled at the price you
set. But that might never happen.


OTC transaction are done between two counterparties and involve machinery
more complicated than setting up a margin account with an exchange. A
single trade can take weeks or months of negotiation and involve setting
collateral agreements in place of margin accounts. Exchanges provide a
fixed menu of trades, the value added by what used to be called investment
banks are custom tailored trades.

New ways of trading are continually invented. Dark pools are markets
with limited access to enable large trades to occur without the price
movements that would otherwise happen if traded on an exchange. Swap
Execution Facilities (SEF) are similar to exchanges for interest rate
swaps. They help standardize OTC trades and provide centralized clearing
to mitigate counterparty risk. There are many more examples.

The mathematical models and software implementations are always far
behind the inventiveness of the financial world. Even the simple models
currently used do not have a well developed theory for managing risk
and the implementations do not permit correlations between different
markets. These are difficult problems that this note will make a first
stab at addressing.

## Unfiled

What is an _issuer_?

Dell early ending barrier option.
