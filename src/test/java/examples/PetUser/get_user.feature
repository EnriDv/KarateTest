Feature: Obtener usuario por nombre de usuario
  Background:
    * url baseUrl
    * def user = 'user1'
  Scenario: encontrar usuario
    Given path 'user', user
    When method GET
    Then status 200
