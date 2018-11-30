# Scenario: Signin with Valid Credentials
# Given I go to the homepage
# When I click the 'sign in'
# Then I should see the sign in page
# When I fill in "Email" with "test@test.com"
# And I fill in "Password" with "test123pass"
# And I press "Login"
# Then I should be on the users home page
# And I should see "Login successful"


# When(/^I go to the homepage$/) do
#   visit root_path
# end

# Then(/^I click the 'sign in'$/) do
#   expect(page).to have_content("TamUber Driver Safety Interface Home Log in Help Welcome to TamUber Sign up now! Sign in! The TamUber Application by CodeBusters About")
# end