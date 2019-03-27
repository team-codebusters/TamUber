# Given("I am on Home Page") do
#   visit root_path
# end

# When("I click the 'Sign up now") do
#   # touch("view marked:'Sign up now!'")
#   pending
# end

When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see the welcome message$/) do
  expect(page).to have_content("Welcome to TamUber Driver Safety Interface")
end

When(/^I click the 'sign up now'$/) do 
  visit signup_path
end
  
Then(/^I should see the Signup page$/) do
  expect(page).to have_content("Sign up")
end

When(/^I am a new, authenticated user$/) do
  lastname = "zhang"
  firstname = "wenjie"
  email = 'testing@man.net'
  password = 'secretpass'
  password_confirmation = 'secretpass'
  User.new(:firstname => firstname, :lastname => lastname, :email => email, :password => password, :password_confirmation => password).save!
end

When(/^I enter the username and password$/) do 
end 




  # visit '/users/sign_in'
  # fill_in "user_email", :with => email
  # fill_in "user_password", :with => password
  # click_button "Sign in"
# And I fill in "lastname" with "zhang"
# And I fill in "email" with "test@test.com"
# And I fill in "password" with "test123pass"
# And I fill in "password_confirmation" with "test123pass"
# And I press "Create my account"
# Then I should see the welcome message

