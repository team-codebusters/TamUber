Feature: see the welcome page, sign up and sign in
As a product manager
I want our users to be greeted when they visit our site
So that they have a better experience

Scenario: User sees the welcome message
When I go to the homepage
Then I should see the welcome message

Scenario: User can click help
When I go to the homepage
Then I click help
Then I should see the help page

Scenario: User can click about
When I go to the homepage
Then I click about
Then I should see the about page

  
Scenario: Signup with Valid Credentials
Given I go to the homepage
When I click the 'sign up now'
Then I should see the Signup page
When I am a new, authenticated user
