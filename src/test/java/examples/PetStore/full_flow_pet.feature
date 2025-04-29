
Feature: Flujo completo de prueba para mascota

Scenario: Crear, consultar, actualizar y eliminar mascota
* def createResult = call read('create_pet.feature')
* def petId = createResult.petId

* call read('get_pet.feature') { petId: '#(petId)' }
* call read('set_pet.feature') { petId: '#(petId)' }
* call read('delete_pet.feature') { petId: '#(petId)' }
