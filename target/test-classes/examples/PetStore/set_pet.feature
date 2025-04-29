Feature: Actualizar datos de una mascota en PetStore
  Background:
    * url baseUrl
  Scenario: Actualizar mascota
    Given path 'pet'
    And request
      """
      {
        "id": #(PetId),
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
    And match response.id == 1212121
    And match response.name == 'Lia'