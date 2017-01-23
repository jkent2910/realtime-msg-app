Feature: User signs in
  As a person
  I want to sign in
  So I can use the application

  Scenario: user signs in
    Given I am Julie
    And I am not signed in
    When I sign in
    Then I should be on the landing page
    And I should see "Signed in successfully."

  Scenario: user signs in with wrong email
    Given I am Julie
    And I am not signed in
    When I sign in with the wrong email
    Then I should see "Invalid Email or password."

  Scenario: user signs in with wrong password
    Given I am Julie
    And I am not signed in
    When I sign in with the wrong password
    Then I should see "Invalid Email or password."