Given("I visit the {string} page") do |page|
  visit page
end

When("I click {string} link") do |page|
  click_on page
end

When("I fill in {string} with {string}") do |field, input|
  fill_in('field', :with => 'input')
end

When("I click {string} button") do |button|
  click_on button
end

Then("I should be on {string} page") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
