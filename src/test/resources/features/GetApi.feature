Feature: Get API Demo

  Background:
    * url 'https://reqres.in/api'
    * headers Accept = 'application/json'

  Scenario: Get Demo 1
    Given path '/users?page=2'
    When method GET
    Then status  200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

    #Get with Path, Params
  Scenario: Get Demo 2
    Given path '/users?'
    And param page = 2
    When method GET
    Then status  200
    And print response

      #Get with Assertions
  Scenario: Get Demo 3
    Given path '/users?'
    And param page = 2
    When method GET
    Then status  200
    And print response
    And match response.data[0].name != null
    And assert response.data.length == 6
    And match response.data[3].id == 10
    And match $.data[5].color == "#D94F70"
