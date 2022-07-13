Feature: Config demo

  Background:
    * url baseURL
    * headers Accept = 'application/json'

  Scenario: Config demo 1
    Given print name

  Scenario: Config demo 2
    Given path '/users?page=2'
    When method GET
    Then status  200
    And print response