Feature: Post API Demo

  Background:
    * url 'https://reqres.in/api'
    * headers Accept = 'application/json'
    * def expectedOutput = read("response1.json")

# Simple post request
  Scenario: Post Demo 1
    Given url 'https://reqres.in/api/users'
    And request { "name": "Jay",  "job": "Automation Engineer" }
    When method POST
    Then status 201
    And print response

# Post with Background
  Scenario: Post Demo 2
    Given path '/users'
    And request { "name": "Prime",  "job": "Automation" }
    When method POST
    Then status 201
    And print response

    # Post with Assertions
  Scenario: Post Demo 3
    Given path '/users'
    And request { "name": "Prime",  "job": "Automation" }
    When method POST
    Then status 201
    And match response == { "name": "Prime", "job": "Automation", "id": "#string", "createdAt": "#ignore" }

     # Post with Read response from file
  Scenario: Post Demo 4
    Given path '/users'
    And request { "name": "Prime",  "job": "Automation" }
    When method POST
    Then status 201
    And match response == expectedOutput

        # Post with Read request and response from file
  Scenario: Post Demo 5
    Given path '/users'
    And def projectPath = karate.properties['user.dir']
    And print projectPath
    And def filePath = projectPath + "/src/test/resources/data/request1.json"
    And print filePath
    And def requestBody = filePath
    And request requestBody
    When method POST
    Then status 201
    And match response == expectedOutput