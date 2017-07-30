<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="logout.jsp">
		<input type="submit" value="Logout" />
	</form>

	<%
		String[] pizza_selected = request.getParameterValues("pizzas");

		HashMap<String, String> hm= new HashMap<String, String>();
		hm.put("The Original: Neapolitan", "12.99");
		hm.put("California Style", "10.99");
		hm.put("Chicago Deep Dish (and Stuffed)", "11.99");
		hm.put("Detroit Style", "12.99");
		hm.put("New York Thin Crust", "15.99");
		
		double a=0;
		
		for (String pizza : pizza_selected) {
			out.print(pizza);
			 if (hm.containsKey(pizza)) {
		           
		            out.print(" -----> " + hm.get(pizza));
		        }
			 a+=Double.parseDouble(hm.get(pizza));
			out.println("<br>");
		}
		out.print("Total: $"+a);
		%>

	<form action="payment.jsp">
		<input type="submit" value="Pay" />
	</form>

</body>
</html>