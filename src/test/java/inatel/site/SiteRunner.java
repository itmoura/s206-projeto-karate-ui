package inatel.site;

import com.intuit.karate.junit5.Karate;

class SiteRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("site").relativeTo(getClass());
    }    

}
