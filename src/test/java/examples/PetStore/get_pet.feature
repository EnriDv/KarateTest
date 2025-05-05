Feature: Obtener mascota creada en PetStore
  Background:
    * url baseUrl
    * def PetId = 1231456
  Scenario: Consultar mascota por ID
    Given path 'pet', PetId
    When method GET
    Then status 200
