Feature: Obtener todo el estado de inventario
  Background:
    * url baseUrl
  Scenario: Consultar el inventario
    Given path 'store', 'inventory'
    When method GET
    Then status 200
