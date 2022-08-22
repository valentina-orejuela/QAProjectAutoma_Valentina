package karate.request;

import com.intuit.karate.junit5.Karate;

public class addPets {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/addPets.feature").relativeTo(getClass());
    }

}
