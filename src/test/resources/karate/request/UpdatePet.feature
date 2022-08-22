Feature: Service client PUT
  As AQ Automation
  I want to UPDATE a pet
  To validate the status code and response

  Background: consume service
    * url "https://petstore.swagger.io/v2/"

  Scenario: Check the service PUT method
    * def requestCreate = read('classpath:karate/request/requestPost.json')
    * def responseError = read('classpath:karate/request/responsePost.json')

    Given path 'pet', '1'
    And request requestCreate
    When method PUT
    Then status 200


  Scenario Outline: PUT a pet with invalid values an id in the url
    * def idPet = '<id>'
    * def responseError = read('classpath:karate/request/responseError.json')
    * def requestCreate = read('classpath:karate/request/requestPost.json')

    Given path 'pet', idPet
    And request requestCreate
    When method PUT
    Then status 400
    And match response == responseError

    Examples:
      | id |
      |8787878|
      |Uno|