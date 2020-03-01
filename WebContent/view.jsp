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
 
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="ccrud.Connect" %>

<%
Connect c = new Connect();
Connection con=c.conmet();

PreparedStatement ps = con.prepareStatement("Select * from book");
ResultSet rs = ps.executeQuery();
%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View</title>
</head>
<body>

	<table width="45%" align="center">
	<tr>
		<td><a href="insert.jsp">Add book</a></td>
		<td align="right"><a href="logout.jsp">Logout</a></td>
	</tr>
	</table>
	
<h3>View Books</h3>
	<table border=1 width="80%">
		<tr>
			<th>ID</th>
			<th>Title</th>
			<th>ISBN</th>
			<th>Publisher</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Category</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>
		<% while(rs.next())
		{
		 %>
		<tr>
			<td> <%= rs.getInt("id")%> </td>
			<td> <%= rs.getString("name") %> </td>
			<td> <%= rs.getString("isbn")%> </td>
			<td> <%= rs.getString("publisher")%> </td>
			<td> <%= rs.getInt("price")%> </td>
			<td> <%= rs.getInt("quantity")%> </td>
			<td> <%= rs.getString("category")%> </td>
			<td> <a href="update.jsp?id=<%=rs.getInt("id")%>">Update </a> </td>
			<td> <a href="delete.jsp?id=<%=rs.getInt("id")%>"> Delete</a> </td>
		</tr>
		<% } %>
	</table>

</body>
</html>
<%}%>