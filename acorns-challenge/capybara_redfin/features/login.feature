Feature: Login

Scenario: Successful login
  Given I am a registered user
  When I submit my username and password
  Then I should be logged in