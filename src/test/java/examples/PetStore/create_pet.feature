Feature: Crear mascota en PetStore
  Background:
    * url baseUrl
  Scenario: Crear una nueva mascota
    Given path 'pet'
    And request
    """
    {
    "id": 1212121,
    "category": {
    "id": 0,
    "name": "Cat"
    },
    "name": "Nina",
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
    When method Post
    Then status 200
    And match response.name == 'Nina'
    And match response.category.name == 'Cat'