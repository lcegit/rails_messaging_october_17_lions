Feature: Log in
  As a user
  In order to access my account
  I would like to use my email and password as credentials

  Background:
    Given I visit the landing page
    When I fill in my email and password
    And Click the "login" button

    Scenario: Successfully log in
      When I fill in the "Email" with "sophie.sjoberg@gmail.com"
      And I fill in the "Password" with my "olivolja"
      And I click "Login" button
      Then I should be on the "welcome/index" page
      And I should see "Craft Academy Mailboxer"
