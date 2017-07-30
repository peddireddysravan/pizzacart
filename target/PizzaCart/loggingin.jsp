<%@ page import="java.io.*,java.util.*" %>

<%@page import="LoginCheck.Check"%>  
<jsp:useBean id="obj" class="LoginCheck.UserInfo"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  


int status=Check.checking(obj);  
if(status>0)  {
out.print("Welcome, "+obj.getUemail());
session.setAttribute("usermail", obj.getUemail());
session.setAttribute("upass",  obj.getUpass());
request.getRequestDispatcher("shop.jsp").forward(request, response);


}
else{	
	out.print("Please enter correct credentials");

	request.getRequestDispatcher("login.jsp").include(request, response);

}

  
%> 