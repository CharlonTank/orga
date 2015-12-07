@wip
Feature: Profile
  In order to be more visible
  As a commentator and a competitor
  I want to manage all my skills in my profile
  And be hired in multiples projects

  Scenario: Put 3 skills in my profile, remove 1 then be hired
    Given I'm on the homepage
    And There is some titles
    And I register myself as "François Le Brun" and "fauster@gmail.com" and "password"
    And I click on "François Le Brun"
    And I add the title "Commentator"
    And I click on "François Le Brun"
    And I add the title "Tournament Organizer"
    And I click on "François Le Brun"
    And I add the title "Competitor"
    And I click on "François Le Brun"
    And I remove the title "Tournament Organizer"
    And I disconnect
    And I register myself as "Bseed SNCF" and "bseed.sncf@gmail.com" and "password"
    And I create a tournament "Epita Smash Arena"
    And I'm on the homepage
    And I create a tournament "Epita Smash Arena 2"
    And I click on "Commentator"
    And I click on "François Le Brun"
    And I click on "Hire as Commentator in Epita Smash Arena"
    And I click on "Competitor"
    And I click on "François Le Brun"
    And I click on "Hire as Competitor"
    And I'm on the homepage
    And I click on "Epita Smash Arena"
    And I click on "Commentator"
    And I click on "Hire as Commentator in Epita Smash Arena 2"
    And I click on "Tournament Organizer"
    Then I shouldn't be able to see "François Le Brun"