When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see the welcome message$/) do
  expect(page).to have_content("TamUber Driver Safety Interface Home Log in Help Welcome to TamUber Sign up now! Sign in! The TamUber Application by CodeBusters About")
end

When(/^I click help$/) do
  visit help_path
end

Then(/^I should see the help page$/) do
  expect(page).to have_title("Help | TamUber")
  expect(page).to have_content("TamUber Driver Safety Interface Home Log in Help Help Please contact us on sachinpuranik99@gmail.com The TamUber Application by CodeBusters About")
end

When(/^I click about$/) do
  visit about_path
end

Then(/^I should see the about page$/) do
  #expect(page).to have_content("TamUber Driver Safety Interface Home Log in Help Help Please contact us on sachinpuranik99@gmail.com The TamUber Application by CodeBusters About")
  expect(page).to have_title("About | TamUber")
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

