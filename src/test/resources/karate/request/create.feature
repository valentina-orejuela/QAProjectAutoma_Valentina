Feature:
  AS QA Automation
  I want to create a client
  To validate the status code and response

  Background: consume service
    * url url

    Scenario:check the service POST method
      * def requestCreate = {"name": "#(name)", "job": "#(job)"}
      * def responsePost = read('classpath:karate/request/ResponsePost.json')
      Given path 'users'
      And request  requestCreate
      When method POST
      Then status 201
      And  match response == responsePost
      And  assert response.name == "morpheus"
      And  assert response.job == "leader"
      And  assert response.id > "10"




