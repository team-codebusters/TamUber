Given /^a user visits the signin page$/ do
  visit login_path
end

When /^they submit invalid signin information$/ do
  visit login_path
end

Then /^they should see an error message$/ do
  expect(response).to have_content('')
end

Given /^the user has an account$/ do
  @user = User.create(firstname: "firstname", lastname: "lastname", email: "user@example.com",
                      password: "foobar", password_confirmation: "foobar")
end

When /^the user submits valid signin information$/ do
  fill_in "Email",    with: @user.email
  fill_in "Password", with: @user.password
  visit login_path
end

Then /^they should see their checklist page$/ do
  expect(page).to have_title('Log in | TamUber')
end
