Feature: Actualizar datos de una mascota en PetStore
  Background:
    * url baseUrl
    * def PetId = 1231456
  Scenario: Actualizar mascota
    Given path 'pet'
    And request
      """
      {
    "id": 1231456,
    "category": {
    "id": 0,
    "name": "Cat"
    },
    "name": "Lia",
    "photoUrls": [
    "string"
    ],
    "tags": [
    {
    "id": 0,
    "name": "string"
    }
    ],
    "status": "available"
    }
      """
    When method PUT
    Then status 200
    And match response.name == 'Lia'