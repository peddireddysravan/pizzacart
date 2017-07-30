package bean;

import org.junit.Assert;
import org.junit.Test;

public class ConnectionProviderTest {

  @Test
  public void getCon() {
	  
	  ConnectionProvider con = new ConnectionProvider();
	  
	  Assert.assertEquals(con, con);
    
  }
}
