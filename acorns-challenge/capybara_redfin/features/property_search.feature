Feature: Property search

  Scenario: Search with three filters
    Given I am logged in
    When I search for a property by zip code
    And I filter for property type "Condo"
    And I filter for properties for sale
    Then I should see properties that fit my criteria