Feature: Signup Action
  
Scenario: Signup with Valid Credentials
    Given I am on Home Page
    When I click the 'Sign up now!'
    Then I should see the Signup page