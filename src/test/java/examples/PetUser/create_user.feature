Feature: Crear nuevo usuario en PetStore
  Background:
    * url baseUrl
  Scenario: Crear un nuevo usuario
    Given path 'user'
    And request
      """
      {
        "id": 51651,
        "username": "userer12",
        "firstName": "test",
        "lastName": "user",
        "email": "user@test1",
        "password": "pass1",
        "phone": "string",
        "userStatus": 0
      }
      """
    When method Post
    Then status 200