# sb-auction
## Big lines
* Auction has three states: PLANNED, OPEN, ENDED, CLOSED
* User can register to a PLANNED Auction.
* Auction notifies the registered Users that it has started (Auction.state is OPEN)
* User can bid and see bids as long as the Action is OPEN.
* Once an Auction is CLOSE every registered User gets notified and the winner is known.
With this, I think we can illustrate event based design, highly concurrent processing, smooth exception handling (
  - ex1.: because of high concurrency, what if a bid received at T1 is less than another received at T0 
  - ex2: what if a bid is received right after the Auction has been closed
)

## Actors :
* auction moderator / back-office
* lot owner
* auction user (at least registered user-> participant )