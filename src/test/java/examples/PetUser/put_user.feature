Feature: Actualizar usuario en PetStore
  Background:
    * url baseUrl
    * def user = 'userer12'
  Scenario: Actualizar usuario por id
    Given path 'user', user
    And request
      """
      {
        "id": 51651,
        "username": "userer12",
        "firstName": "testtest",
        "lastName": "user",
        "email": "user@test1",
        "password": "pass1",
        "phone": "string",
        "userStatus": 0
      }
      """
    When method PUT
    Then status 200