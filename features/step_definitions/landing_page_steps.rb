When("I am on the landing page") do
  visit root_path
end

Then("I should see {string}") do |text|
  expect(page).to have_content text
end

When("I press the {string} button") do |link|
  click_link_or_button link
end

Then("I should be on the login page") do
  expect(page.current_path).to eq '/users/sign_in'
end

Then("I should be on the sign up page") do
  expect(page.current_path).to eq '/users/sign_up'
end

Then("I should be on the landing page") do
  expect(page.current_path).to eq root_path
end
