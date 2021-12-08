package inatel;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;

@KarateOptions(tags = "~@ignore")
class InatelTest {
    
    // this will run all *.feature files that exist in sub-directories
    // see https://github.com/intuit/karate#naming-conventions   
    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }
    
}
