@NavigationMenu
Feature: Navigation Menu

  @Developer
  Scenario: Navigation to Developers Menu
    Given The user is on the login page
    When The user enters teacher credentials
    Then The user should be able to sees welcome message
    And The user navigates to Developers menu
    Then The user able to sees developer text

    Scenario: Navigation to All Post menu
      Given The user is on the login page
      When The user enters student credentials
      Then The user should be able to sees welcome message
      And The user navigates to All Post menu
      Then The user able to sees Posts text

      Scenario: Navigation to My Account menu
        Given The user is on the login page
        When The user enters teacher credentials
        Then The user should be able to sees welcome message
        And The user navigates to My Account menu
        Then The user able to sees dashboard text

