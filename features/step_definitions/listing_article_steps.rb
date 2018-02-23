Given("the following articles exist") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.hashes.each do |article|
    FactoryBot.create(:article, article)
  end
end

When("I am on the landing page") do
  pending # Write code here that turns the phrase above into concrete actions
end
