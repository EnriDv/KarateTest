package examples.PetStore;

import com.intuit.karate.junit5.Karate;

public class PetStoreRunner {
    @Karate.Test
    Karate testUsers() {
        return Karate.run("full_flow_pet").relativeTo(getClass());
    }
}
