When("I enter the {string} with {string}") do |field_name, value|
  fill_in field_name, with: value
end

When("I enter {string} confirmation with {string}") do |field_name, value|
  fill_in field_name, with: value
end

Then("I should be on the users page") do
  expect(page.current_path).to eq page_path(path)
end
