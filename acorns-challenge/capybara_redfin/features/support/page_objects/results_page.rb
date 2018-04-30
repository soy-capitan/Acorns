class ResultsPage
  include Capybara::DSL
  
  def show_filters
    first("#wideSidepaneFilterButtonContainer button.wideSidepaneFilterButton").click
  end

  def select_property_type type
    show_filters

    within "#propertyTypeFilter" do
      click_button "Condo"
    end

    click_button "Apply Filters"
  end

  def show_properties_for_sale
    show_filters

    fill_in "e.g. office, fireplace, or guest house", with: "fireplace"

    click_button "Apply Filters"
  end
end