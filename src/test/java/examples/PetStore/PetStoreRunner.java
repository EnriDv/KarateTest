package examples.PetStore;

import com.intuit.karate.junit5.Karate;

public class PetStoreRunner {
    @Karate.Test
    Karate testPetStore() {
        return Karate.run("create_pet","get_pet","set_pet","delete_pet").relativeTo(getClass());
    }
}
