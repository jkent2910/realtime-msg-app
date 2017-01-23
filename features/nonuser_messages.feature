Feature: A User Must Be Signed In To Visit Messages

  Scenario:
    Given I am not signed in
    And I am on the messages page
    Then I should see "You need to sign in or sign up before continuing."
