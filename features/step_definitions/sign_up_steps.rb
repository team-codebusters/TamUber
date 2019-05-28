# Given("I am on Home Page") do
#   visit root_path
# end

# When("I click the 'Sign up now") do
#   # touch("view marked:'Sign up now!'")
#   pending
# end

Given /^the account is set up$/ do
  # Blog.default.update_attributes!({:blog_name => 'Teh Blag',
  #                                 :base_url => 'http://localhost:3000'});
  # Blog.default.save!
  User.create!({:firstname => 'ricky',
                :lastname => 'deng',
                :email => 'deng@gg.com',
                :password => '123456'})
end

When(/^I go to the homepage$/) do
  visit root_path
end

When(/^I am on the login page$/) do
  visit login_path
end

When(/^I am on the user page$/) do
  visit current_user
end

When(/^I am on the checklist page$/) do
  visit checklist_path
end


When(/^I should be on the checklist page$/) do
  visit checklist_path
end

When(/^I should see the checklist page$/) do
  expect(page).to have_title("Checklist | TamUber")
end

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end


When /^(?:|I )follow "([^"]*)"$/ do |link|
  click_link(link)
end

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end

Then /^(?:|I )should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

Then /^(?:|I )should not see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_no_content(text)
  else
    assert page.has_no_content?(text)
  end
end


Then(/^I should see the welcome message$/) do
  expect(page).to have_content("Welcome to TamUber")
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

