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
# When I fill in "firstname" with "wenjie"
# And I fill in "lastname" with "zhang"
# And I fill in "email" with "test@test.com"
# And I fill in "password" with "test123pass"
# And I fill in "password_confirmation" with "test123pass"

# Scenario: Signin with Valid Credentials
# Given I go to the homepage
# When I enter the username and password





# Scenario: login with valid credentials
#   Given I am on the login page
#   When I fill in "Email" with "test@test.com"
#   And I fill in "Password" with "test123pass"
#   And I press "Login"
#   Then I should be on the users home page
#   And I should see "Login successful"
