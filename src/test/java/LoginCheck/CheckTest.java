package LoginCheck;

import org.junit.Assert;
import org.junit.Test;

public class CheckTest {

	@Test
	public void checking() {
		UserInfo u= new UserInfo();
		u.setUemail("mnb");
		u.setUpass("mnb");

		Check c = new Check();
		int a = c.checking(u);

		Assert.assertEquals(1,a);

	}
}
