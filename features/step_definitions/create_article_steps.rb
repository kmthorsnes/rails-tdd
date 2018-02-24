Given("I visit the {string} page") do |page|
  visit page
end

When("I click {string} link") do |link|
  click_on link
end

When("I fill in {string} with {string}") do |field, input|
  fill_in(field, :with => input)
end

When("I click {string} button") do |button|
  click_on button
end

Then("I should be on {string} page") do |article_title|
  article = Article.find_by(title: article_title)
  expect(page.current_path).to eq article_path(article)
end
