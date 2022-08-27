package karate.request.findPetId;

import com.intuit.karate.junit5.Karate;
import cucumber.api.java.Before;
import org.junit.jupiter.api.AfterAll;

public class findPetId {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/findPetId/findPetId.feature").relativeTo(getClass());
    }
}
