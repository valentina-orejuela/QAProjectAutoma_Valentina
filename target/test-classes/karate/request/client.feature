Feature: Service client Get
  As QA automation
  I want to consult a client
  To validate to status code and response

  Background: consume service
    * url url

    Scenario: Check the service get method

      * def responseGet = read('classpath:karate/request/ResponseGet.json')

      Given path 'users', '2'
      When method get
      Then status 200
      And  match response == responseGet
      And match  response..id contains [2]
      And match  response.data contains {"first_name": "Janet"}
      And assert response.support.text == "To keep ReqRes free, contributions towards server costs are appreciated!"
      And assert response.data.email == email
      And assert response.data.id == '2'
      And assert response.data.first_name == "Janet"
      And assert response.data.last_name == "Weaver"
      * def name = response.data.first_name
      * def lastname = response.data.last_name
      And assert name + lastname == 'JanetWeaver'
      * def id = response.data.id
      And assert name + id == 'Janet2'
      And assert name + id == 'Janet3'
