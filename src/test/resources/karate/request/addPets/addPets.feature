@addPet
Feature: Service client POST
  As AQ Automation
  I want to add a pet
  To validate the status code and response

  Background: consume service
    * url "https://petstore.swagger.io/v2/"

  Scenario: Check the service POST method
    * def requestCreate = read('classpath:karate/request/addPets/requestPost.json')
    * def responseError = read('classpath:karate/request/addPets/responsePost.json')

    Given path 'pet'
    And request requestCreate
    When method POST
    Then status 200

  @addPetError
  Scenario Outline: POST a pet with invalid values an id in the url
    * def idPet = '<id>'
    * def responseError = read('classpath:karate/request/addPets/responseError.json')
    * def requestCreate = read('classpath:karate/request/addPets/requestError.json')

    Given path 'pet'
    And request requestCreate
    When method POST
    Then status 500
    And match response == responseError

    Examples:
      | id |
      |*** |