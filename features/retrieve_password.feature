Feature: Retrieve lost password
  As a user
  In order to reset my forgotten password
  I would like to receive reset password instructions

  Scenario: Person presses retrieve password button
    Given I visit the landing page
    And I press the "Login" button
    Then I should be on the "sign_in" page
    Given I press the "Forgot your password?" button
    Then I should be on the "password" page
    And I fill in the "Email" with "sophie.sjoberg@gmail.com"
    Then I press the "Send me reset password instructions" button
    And I should be on the "user_password" page
