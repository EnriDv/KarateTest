package examples.PetUser;

import com.intuit.karate.junit5.Karate;

public class PetUserRunner {

    @Karate.Test
    Karate testPetUser() {
        return Karate.run("create_user","get_user","put_user","delete_user").relativeTo(getClass());
    }
}
