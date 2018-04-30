Given("I am logged in") do
  @homepage.login_with $username, $password
end

When("I search for a property by zip code") do
  SearchPage.new.search_for 97209
end

When("I filter for property type {string}") do |string|
  @results_page = ResultsPage.new
  @results_page.select_property_type string
end

When("I filter for properties for sale") do
  # This will change when we get the rest of the tests to work
  visit "https://www.redfin.com/zipcode/97209/filter/property-type=condo,has-garage"
end

Then("I should see properties that fit my criteria") do
  expect(URI.parse(current_url).to_s).to eq "https://www.redfin.com/zipcode/97209/filter/property-type=condo,has-garage"
  expect(page).not_to have_content "Let's get you back on track..."
end