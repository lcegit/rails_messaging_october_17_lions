Given("The following user doesn't exist") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

When("I enter the {string} with {string}") do |field_name, value|
  fill_in field_name, with: value
end

When("I enter {string} confirmation with {string}") do |field_name, value|
  fill_in field_name, with: value
end

Then("I should be on the welcome page") do
  binding.pry
  expect(current_path).to eq welcome_index_path
end
