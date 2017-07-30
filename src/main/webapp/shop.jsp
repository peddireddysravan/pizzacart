<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Hello,
	<% out.print(session.getAttribute("usermail"));
	out.print(". You are successfully registered");  %>

 

	<form action="logout.jsp">
		<input type="submit" value="Logout" />
	</form>

	<h2>Add the type of pizza to cart</h2>

	<form method="get" action="cart.jsp">

		<table>
			<tr>
				<td><input type="checkbox"
					<% if (session.getAttribute("Neapolitan") != null) 
out.print("checked"); %>
					name="pizzas" value="The Original: Neapolitan"></td>
				<td>The Original: Neapolitan $12.99</td>
			</tr>
			<tr>
				<td><input type="checkbox"
					<% if (session.getAttribute("California") != null)
 out.print("checked"); %>
					name="pizzas" value="California Style"></td>
				<td>California Style $10.99</td>
			</tr>
			<tr>
				<td><input type="checkbox"
					<% if (session.getAttribute("Chicago") != null)
 out.print("checked"); %>
					name="pizzas" value="Chicago Deep Dish (and Stuffed)"></td>
				<td>Chicago Deep Dish (and Stuffed) $11.99</td>
			</tr>
			<tr>
				<td><input type="checkbox"
					<% if (session.getAttribute("Detroit") != null)
 out.print("checked"); %>
					name="pizzas" value="Detroit Style"></td>
				<td>Detroit Style $12.99</td>
			</tr>
			<tr>
				<td><input type="checkbox"
					<% if (session.getAttribute("New_York") != null)
out.print("checked"); %>
					name="pizzas" value="New York Thin Crust"></td>
				<td>New York Thin Crust $15.99</td>
			</tr>
		</table>
		<br>
		<br> <input type="submit" value="add to cart">
	</form>

</body>
</html>