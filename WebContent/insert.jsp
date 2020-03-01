<%
	String username = (String)session.getAttribute("username");
	if (username == null)
		{
		session.invalidate();
		response.sendRedirect("logout.jsp");
		}
	else
	{
	%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert book</title>
</head>
<body>
<form name="insert" method="post" action="insertcon.jsp">
	<h2>Add Book</h2>
	
	<table>
		<tr>
			<td>Title:	</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>ISBN:	</td>
			<td><input type="text" name="isbn"></td>
		</tr>
		<tr>
			<td>Publisher:	</td>
			<td><input type="text" name="publisher"></td>
		</tr>
		<tr>
			<td>Price:	</td>
			<td><input type="text" name="price"></td>
		</tr>
		<tr>
			<td>Quantity:	</td>
			<td><input type="number" name="quantity"></td>
		</tr>
		<tr>
			<td>Category:	</td>
			<td><input type="text" name="category"></td>
		</tr>
		<tr>
			<td rowspan=2> <br><input type="submit" name="submit" value="submit">	</td>
		</tr>
		
	</table>
</form>

</body>
</html>
<%}%>