package karate.request.AddPets;

import com.intuit.karate.junit5.Karate;
import cucumber.api.CucumberOptions;


public class addPets {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/addPets/addPets.feature").relativeTo(getClass());
    }

}
