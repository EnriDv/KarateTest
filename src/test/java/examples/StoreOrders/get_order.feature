Feature: Obtener orden de compra con Id
  Background:
    * url baseUrl
  Scenario: obtener una orden de compra
    Given path 'store/order', 156
    When method GET
    Then status 200
