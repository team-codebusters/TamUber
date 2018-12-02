# Feature: let user sign in
# As a product manager
# I want our users can sign in with valid credentials
  
  
# Scenario: Signin with Valid Credentials
# Given I go to the homepage
# When I click the 'sign in'
# Then I should see the sign in page
# When I fill in "Email" with "test@test.com"
# And I fill in "Password" with "test123pass"
# And I press "Login"
# Then I should be on the users home page
# And I should see "Login successful"
Feature: Signing in

  Scenario: Unsuccessful signin
    Given a user visits the signin page
    When they submit invalid signin information
    Then they should see an error message

  Scenario: Successful signin
    Given a user visits the signin page
    And the user has an account
    When the user submits valid signin information
    Then they should see their checklist page