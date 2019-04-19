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
Then I should see the checklist page
# Then I should see "Checklist"

Scenario: Signup when password not matched
Given I go to the homepage
When I click the 'sign up now'
Then I should see the Signup page
When I fill in "Firstname" with "wenjie"
And I fill in "Lastname" with "zhang"
And I fill in "Email" with "test@test.com"
And I fill in "Password" with "passtest123"
And I fill in "Confirmation" with "test123pass"
And I press "Create my account"
Then I should see "Password confirmation doesn't match Password"


Scenario: Signup with Existing Email
Given the account is set up
Given I go to the homepage
When I click the 'sign up now'
Then I should see the Signup page
When I fill in "Firstname" with "wenjie"
And I fill in "Lastname" with "zhang"
And I fill in "Email" with "deng@gg.com"
And I fill in "Password" with "test123pass"
And I fill in "Confirmation" with "test123pass"
And I press "Create my account"
Then I should see "Email has already been taken"



Scenario: Signin with Valid Credentials
Given I go to the homepage
When I enter the username and password


Scenario: login with valid credentials
  Given the account is set up
  Given I am on the login page
  When I fill in "Email" with "deng@gg.com"
  And I fill in "Password" with "123456"
  And I press "Log in"
  Then I should see the checklist page
  When they check everything of the checklist
  Then they cleck continue
  Then I should see "Dashboard"
  And I should see "Weather Data"
  And I should see "Emergency Call"
  And I should see "Ride Information"
  
  Then I follow "Help"
  Then I should see "Please contact us"
  
  Then I follow "About"
  Then I should see "The TAMUber Safety interface is a web project"
  
  Then I follow "TamUber Driver Safety Interface"
  Then I should see "Dashboard"
  
  Then I follow "Log out"
  Then I go to the homepage
  

#   And I should see "Login successful"


Scenario: login with invalid credentials
  Given the account is set up
  Given I am on the login page
  When I fill in "Email" with "rickydeng@gg.com"
  And I fill in "Password" with "test123s"
  And I press "Log in"
  And I should see "Invalid email/password combination"

Scenario: Forgot Password Email
  Given the account is set up
  Given I am on the login page
  When I follow "Forgot Password"
  Then I should be on password reset page
  When I fill in "Email" with "rickydeng@gg.com"
  And I press "Submit"
  Then I go to the homepage





Scenario: Forgot Password and Put Wrong Email
  Given the account is set up
  Given I am on the login page
  When I follow "Forgot Password"
  Then I should be on password reset page
  When I fill in "Email" with "invalide@doesnotexist.com"
  And I press "Submit"
  Then I should see "Email address not found"
  
Scenario: Forgot Password and no Email
  Given the account is set up
  Given I am on the login page
  When I follow "Forgot Password"
  Then I should be on password reset page
  And I press "Submit"
  Then I should see "Email address not found"




