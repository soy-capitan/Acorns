require "capybara/cucumber"

# Configure username and password globally for test purposes
$username = ENV["TEST_USERNAME"] || "codechallengethrowaway@gmail.com"
$password = ENV["TEST_PASSWORD"] || "Fakepassword123"