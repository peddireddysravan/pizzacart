package LoginCheck;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.api.jdbc.Statement;

import LoginCheck.UserInfo;
import bean.ConnectionProvider;

public class Check {

	public static int checking(UserInfo u){
		String dbumail=u.getUemail();
		String dbPassword= u.getUpass();
		String Usermail;
		String password;
		int status=0;  
		try{
			Connection con=ConnectionProvider.getCon();  
			Statement stmt = (Statement) con.createStatement();
			String query = "SELECT Uemail, Upass FROM logintable;";
			stmt.executeQuery(query);
			ResultSet rs = stmt.getResultSet();

			while(rs.next()){
				Usermail = rs.getString("Uemail");
				password = rs.getString("Upass");

				if(dbumail.equals(Usermail) && dbPassword.equals(password)){
					System.out.println("OK");
					status = 1;
				}
				System.out.println(Usermail + password + " " + dbumail + dbPassword);
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
}


