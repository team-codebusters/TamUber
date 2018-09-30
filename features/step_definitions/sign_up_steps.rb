Given("I am on Home Page") do
  visit root_path
end

When("I click the 'Sign up now!'") do
  touch("view marked:'Sign up now!'")
end

Then("I should see the Signup page") do
  pending # Write code here that turns the phrase above into concrete actions
end