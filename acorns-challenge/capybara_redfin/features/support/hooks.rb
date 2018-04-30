Capybara.app_host       = "https://redfin.com"
Capybara.default_driver = :selenium

Before do
  @homepage = Homepage.new
end