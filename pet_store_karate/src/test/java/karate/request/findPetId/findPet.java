package karate.request.findPetId;

import com.intuit.karate.junit5.Karate;

public class findPet {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/findPetId/findPetId.feature").relativeTo(getClass());
    }

}
