<%@page import="bean.RegisterDAO"%>
<jsp:useBean id="obj" class="bean.User" />

<jsp:setProperty property="*" name="obj" />

<%  
int status=RegisterDAO.register(obj);  
if(status>0)  {
	session.setAttribute("usermail", obj.getUemail());
	session.setAttribute("upass",  obj.getUpass());

request.getRequestDispatcher("shop.jsp").include(request, response);

}
%>
