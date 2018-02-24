Given("the following articles exist") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.hashes.each do |article|
    FactoryBot.create(:article, article)
  end
end
