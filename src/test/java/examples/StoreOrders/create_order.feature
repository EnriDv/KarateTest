Feature: Crear orden en PetStore
  Background:
    * url baseUrl
  Scenario: Crear una nueva orden
    Given path 'store/order'
    And request
      """
      {
        "id": 158,
        "petId": 458,
        "quantity": 25,
        "shipDate": "2025-05-05T22:24:55.109Z",
        "status": "placed",
        "complete": true
      }
      """
    When method Post
    Then status 200