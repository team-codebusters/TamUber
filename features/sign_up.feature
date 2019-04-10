Feature: see the welcome page, sign up and sign in
As a product manager
I want our users to be greeted when they visit our site
So that they have a better experience

Scenario: User sees the welcome message
When I go to the homepage
Then I should see the welcome message

  
Scenario: Signup with Valid Credentials
Given I go to the homepage
When I click the 'sign up now'
Then I should see the Signup page
When I fill in "Firstname" with "wenjie"
And I fill in "Lastname" with "zhang"
And I fill in "Email" with "test@test.com"
And I fill in "Password" with "test123pass"
And I fill in "Confirmation" with "test123pass"
And I press "Create my account"
Then I should be on the checklist page
# Then I should see "Checklist"


Scenario: Signin with Valid Credentials
Given I go to the homepage
When I enter the username and password


Scenario: login with valid credentials
  Given I am on the login page
  When I fill in "Email" with "test@test.com"
  And I fill in "Password" with "test123pass"
  And I press "Log in"
  Then I should be on the checklist page

#   And I should see "Login successful"



Scenario: login with invalid credentials
  Given I am on the login page
  When I fill in "Email" with "test@test.com"
  And I fill in "Password" with "test123s"
  And I press "Log in"
  And I should see "Invalid email/password combination"

Scenario: Forgot Password Email
  Given I am on the login page
  When I follow "Forgot Password"
  Then I should be on password reset page
  When I fill in "Email" with "test@test.com"
  And I press "Submit"
  Then I go to the homepage





Scenario: Forgot Password and Put Wrong Email
  Given I am on the login page
  When I follow "Forgot Password"
  Then I should be on password reset page
  When I fill in "Email" with "invalide@doesnotexist.com"
  And I press "Submit"
  Then I should see "Email address not found"
  
Scenario: Forgot Password and no Email
  Given I am on the login page
  When I follow "Forgot Password"
  Then I should be on password reset page
  And I press "Submit"
  Then I should see "Email address not found"
 
# Scenario: Checklist to Dashboard
#   Given I am on the checklist page
#   Then I should see "This is a Checklist for the Car"
#   And I follow "Continue"
#   And I should see "Dashboard"




