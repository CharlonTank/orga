Feature: organize a tournament
  In order to make a team for a tournament
  As a TO
  I want to be able to hire 1 person

  Scenario: Hire 1 people
    Given I'm on the homepage
    And There is some titles
    And There is one "Commentator" registered as "François Le Brun" and "fauster@gmail.com" and "password"
    And I register myself as "Bseed SNCF" and "bseed.sncf@gmail.com" and "password"
    And I create a tournament "Epita Smash Arena"
    And I click on "Commentator"
    And I click on "François Le Brun"
    And I click on "Hire as Commentator"
    And I disconnect
    And I connect as "fauster@gmail.com" and "password"
    And I click on "Epita Smash Arena"
    When I click on "Accept"
    Then I should be able to see "Commentator François Le Brun"