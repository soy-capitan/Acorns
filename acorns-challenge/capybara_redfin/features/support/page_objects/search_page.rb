class SearchPage
  include Capybara::DSL

  def search_for term
    within "#homepageTabContainer" do
      fill_in "searchInputBox", with: term
      click_button "Search"
    end
  end
end