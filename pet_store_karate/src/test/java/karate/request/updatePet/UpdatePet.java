package karate.request.updatePet;

import com.intuit.karate.junit5.Karate;

public class UpdatePet {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/UpdatePet.feature").relativeTo(getClass());
    }

}