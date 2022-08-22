Feature: Service client DELETE
  As AQ Automation
  I want to delete for a pet by id
  To validate the status code and response

  Background: consume service
    * url "https://petstore.swagger.io/v2/"

  Scenario: Check the service DELETE method

    Given path 'pet', '1'
    When method DELETE
    Then status 200

  Scenario Outline: DELETE a pet with invalid values an id in the url
    * def idPet = '<id>'
    * def responseError = read('classpath:karate/request/responseDelete.json')

    Given path 'pet', idPet
    When method DELETE
    Then status 404
    And match response == responseError

    Examples:
      | id |
      |9876543211|
      | numeroUno |