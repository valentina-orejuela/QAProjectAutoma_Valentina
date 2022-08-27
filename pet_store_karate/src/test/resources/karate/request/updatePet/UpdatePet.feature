@updatePet
Feature: Service client PUT
  As AQ Automation
  I want to UPDATE a pet
  To validate the status code and response

  Background: consume service
    * url "https://petstore.swagger.io/v2/"

  Scenario: Check the service PUT method
    * def requestCreate = read('classpath:karate/request/updatePet/requestPUT.json')
    * def responseError = read('classpath:karate/request/updatePet/responsePUT.json')

    Given path 'pet'
    And request requestCreate
    When method PUT
    Then status 200

  @updatePetError
  Scenario Outline: PUT a pet with invalid values an id in the url
    * def idPet = '<id>'
    * def responseError = read('classpath:karate/request/updatePet/responseErrorPut.json')
    * def requestCreate = read('classpath:karate/request/updatePet/requestErrorPut.json')

    Given path 'pet', idPet
    And request requestCreate
    When method PUT
    Then status 405
    And match response == responseError

    Examples:
      | id |
      |8787878|
      |Uno|