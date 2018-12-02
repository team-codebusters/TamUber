Given /^a user visits the checklist page$/ do
  visit checklist_path
end

When /^they check everything of the checklist$/ do
  expect(page).to have_title('Checklist | TamUber')
  #expect(page.find('div.col-md-6.col-md-offset-3 li.al')).to have_selector(:css, 'i.fas.fa-check')
  first(:css, 'i.fas.fa-check').click


end

Then /^they cleck continue$/ do
  find(:css, 'a.btn.btn-primary.disable').click
end

Then /^they should see their profile page$/ do
  #visit users_path
  expect(page).to have_title('Checklist | TamUber')
end