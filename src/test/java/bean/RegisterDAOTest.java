package bean;

import org.junit.Test;

import junit.framework.Assert;

public class RegisterDAOTest {

  @Test
  public void register() {
	  
	  User u = new User();
	  u.setUemail("mnb");
	  u.setUname("mnb");
	  u.setUpass("mnb");
	  RegisterDAO reg = new RegisterDAO();
	 // int a = reg.register(u);
	  
	// Assert.assertEquals(a,0);
  }
}
