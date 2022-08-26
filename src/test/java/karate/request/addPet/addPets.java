package karate.request.addPet;

import com.intuit.karate.junit5.Karate;

public class addPets {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/addPet/addPets.feature").relativeTo(getClass());
    }

}
