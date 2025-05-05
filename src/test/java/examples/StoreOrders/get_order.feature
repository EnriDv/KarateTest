Feature: Obtener orden de compra con Id
  Background:
    * url baseUrl
  Scenario: obtener una orden de compra
    Given path 'store/order', 158
    When method GET
    Then status 200
