Feature: Obtener usuario por nombre de usuario
  Background:
    * url baseUrl
    * def user = 'userer12'
  Scenario: encontrar usuario
    Given path 'user', user
    When method GET
    Then status 200
