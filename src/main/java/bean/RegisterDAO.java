    package bean;  
      
    import java.sql.*;  
      
    public class RegisterDAO {  
      
    @SuppressWarnings("finally")
	public static int register(User u){  
    int status=0;  
    try{  
    Connection con=ConnectionProvider.getCon();  
    PreparedStatement ps=con.prepareStatement("insert into logintable values(?,?,?)");  
    ps.setString(1,u.getUname());  
    ps.setString(2,u.getUemail());  
    ps.setString(3,u.getUpass());  
                  
    status=ps.executeUpdate();  
    }catch(Exception e){
    	System.out.println("User already exists "+e);
    	status=0;
    }  
    finally { 
    return status;
         }
    }  
      
    }  