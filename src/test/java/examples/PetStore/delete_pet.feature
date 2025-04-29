Feature: Borrar una mascota en PetStore
  Background:
    * url baseUrl
  Scenario: Eliminar una mascota por ID
    Given path 'pet', petId
    When method DELETE
    Then status 200
    And match response.id == petId