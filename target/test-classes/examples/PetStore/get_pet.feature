Feature: Obtener mascota creada en PetStore
  Background:
    * url baseUrl
  Scenario: Consultar mascota por ID
    Given path 'pet', petId
    When method GET
    Then status 200
    And match response.id == petId
    And match response.name == 'Nina'
    And match response.status == 'available'
