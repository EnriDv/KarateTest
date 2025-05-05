Feature: eliminar orden de compra con Id
  Background:
    * url baseUrl
  Scenario: borrar una orden de compra
    Given path 'store/order', 156
    When method DELETE
    Then status 200
