Feature: Service client GET
  As AQ Automation
  I want to list for a pet by id
  To validate the status code and response

  Background: consume service
    * url "https://petstore.swagger.io/v2/"

  Scenario: Check the service GET method

    Given path 'pet', '13'
    When method GET
    Then status 200

  Scenario Outline: GET a pet with invalid values an id in the url
    * def idPet = '<id>'
    * def responseError = read('classpath:karate/request/responseErrorGet.json')

    Given path 'pet', idPet
    When method GET
    Then status 404
    And match response == responseError

    Examples:
      | id |
      |***|