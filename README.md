# Pero
## P2P exchange (BTC:FIAT) over lightning network

1. Peer discovery not in POC
2. **Order matching in POC**
3. Automatic creation of a ledger verificator not in POC
4. **Lightning resolution of the trade in POC**

## Order book:

### Limit orders
When a peer recive an order it try to match the order, if there is no match it send the order to the other peers and it keep the order in memory for t, after that it wont accept anymore the order with the same id. If a node recive an order too distant from the actual price it will ignore the order.

## Execution:

When a node discover 2 matching order it send a message at the 2 party willing to exchange. The node that is selling FIAT will ask a ledger to provide the right hash for his bank account. Than will comunicate his lightning address and the hash to the node selling BTC. The node selling BTC will initiate a lightning tx with the hash provided. When the node selling FIAT do the wire transfer the ledger will publish the secret and the exchange is done.
