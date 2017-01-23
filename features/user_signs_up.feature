Feature: User signs up
  As a person
  I want to sign up
  So I can chat with people

  Scenario: User signs up
    Given I am on the landing page
    And I fill in "user_first_name" with "Julie"
    And I fill in "user_last_name" with "Kent"
    And I fill in "user_email" with "julie@gmail.com"
    And I fill in "user_password" with "password"
    And I fill in "user_password_confirmation" with "password"
    And I press "Sign up"
    Then there should be a user with first_name "Julie"