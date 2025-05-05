Feature: Borrar una mascota en PetStore
  Background:
    * url baseUrl
    * def PetId = 1231456
  Scenario: Eliminar una mascota por ID
    Given path 'pet', PetId
    When method DELETE
    Then status 200