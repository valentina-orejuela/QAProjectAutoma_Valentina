@findPet
Feature: Service client GET
  As AQ Automation
  I want to UPDATE a pet
  To validate the status code and response

  Background: consume service
    * url "https://petstore.swagger.io/v2/"

  Scenario: Check the service PUT method
    * def response = read('classpath:karate/request/findPetId/responseGet.json')

    Given path 'pet', '2'
    When method GET
    Then status 200

  @findPetError
  Scenario Outline: PUT a pet with invalid values an id in the url
    * def idPet = '<id>'
    * def responseError = read('classpath:karate/request/findPetId/responseErrorGet.json')

    Given path 'pet', idPet
    When method GET
    Then status 404
    And match response == responseError

    Examples:
      | id |
      |0.2|