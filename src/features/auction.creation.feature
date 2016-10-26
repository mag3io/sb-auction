Feature: Auction creation
  As an auction admin
  I want to validate a lot
  In order to create an auction

  Background:
    Given I received an auction request
  
  # future date >= today
  Scenario: Planning an auction for future date
    When I planify an action for future date 
    Then Auction is created status 'OPEN'
    And Auction start date is equal to requested date

  Scenario: Planning an auction for today 
    When I planify an action for today
    Then Auction isn't created 
  
  Scenario: Planning an auction for past date 
    When I planify an action for past date 
    Then Auction isn't created 
  

