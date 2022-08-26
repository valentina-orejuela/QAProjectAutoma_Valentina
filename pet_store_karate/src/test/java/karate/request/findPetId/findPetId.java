package karate.request.findPetId;

import com.intuit.karate.junit5.Karate;

public class findPetId {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/findPetId.feature").relativeTo(getClass());
    }
}
