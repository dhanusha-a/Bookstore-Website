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

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="ccrud.Connect" %>

<%

String Id = request.getParameter("id");
int id = Integer.parseInt(Id);

Connect c = new Connect();
Connection con=c.conmet();

PreparedStatement ps = con.prepareStatement("Select * from book where id = '"+id+"'");
ResultSet rs = ps.executeQuery();
rs.next();
%> 

<html>
<head>
<meta charset="ISO-8859-1">
<title>Update book</title>
</head>
<body>
<form name="insert" method="post" action="updatecon.jsp?id=<%=rs.getInt("id")%>">
	<h2>Add Book</h2>
	<table>
		<tr>
			<td>Title:	</td>
			<td><input type="text" name="name" value="<%= rs.getString("name")%>"></td>
		</tr>
		<tr>
			<td>ISBN:	</td>
			<td><input type="text" name="isbn" value="<%= rs.getString("isbn")%>"></td>
		</tr>
		<tr>
			<td>Publisher:	</td>
			<td><input type="text" name="publisher" value="<%= rs.getString("publisher")%>"></td>
		</tr>
		<tr>
			<td>Price:	</td>
			<td><input type="text" name="price" value="<%= rs.getInt("price")%>"></td>
		</tr>
		<tr>
			<td>Quantity:	</td>
			<td><input type="number" name="quantity" value="<%= rs.getInt("quantity")%>"></td>
		</tr>
		<tr>
			<td>Category:	</td>
			<td><input type="text" name="category" value="<%= rs.getString("category")%>"></td>
		</tr>
		<tr>
			<td rowspan=2> <input type="submit" name="submit" value="submit">	</td>
		</tr>
		
	</table>
</form>

</body>
</html>
<%}%>