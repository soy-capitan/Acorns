Given("I am a registered user") do
  # noop
end

When("I submit my username and password") do
  @homepage.login_with $username, $password
end

Then("I should be logged in") do
  expect(@homepage).to have_id "userMenu"
end