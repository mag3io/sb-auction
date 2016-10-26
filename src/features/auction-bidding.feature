Feature: Auction participation
  As a bidder
  I want to bid on an auction
  In order to win the auction


  Scenario: Bid bigger than minimal price
      Given context
      When event
      Then outcome

  Scenario: Bid bigger than highest bid & status 
      Given context
      And auction status is OPEN
      When event
      Then outcome
  
  Scenario: Bid smaller the highest bid
      Given context
      When event
      Then outcome

   Scenario: Bid is equal to the highest bid
      Given context
      When event
      Then outcome   


   Scenario: Bid on auction with different statuses
      Given I try to bid on an auction with status <auction_status>
      Then Bid is <bid_status>
      And 
      Examples:
        | auction_status | bid_created |
        |  PLANNED       |  N  |
        |  OPEN          |  Y  |
        |  ENDED         |  
        |  CLOSED        |
      
  