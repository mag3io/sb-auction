
Feature: Lot submission
  As a seller
  I want to submit an lot
  In order to request the create an auction.
  Valid lot should contain at least a minimal price.
  
    Scenario: Valid lot submission
        Given I'm logged-in as a seller
        When I submit a valid lot
        Then Auction request is submited
    
    Scenario: Invalid lot submission
        Given I'm logged-in as a seller
        When I submit an invalid lot
        Then Auction request isn't submited
        And A message is shown asking me to complete the lot 
    
    