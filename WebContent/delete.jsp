<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="ccrud.Connect" %>

<%
String Id = request.getParameter("id");
int id = Integer.parseInt(Id);
System.out.println(Id);
	Connect c = new Connect();
	Connection con = c.conmet();

	PreparedStatement ps = con.prepareStatement("delete from book where id=?");
	ps.setInt(1, id);
	ps.executeUpdate();
	System.out.println("deleted");
	response.sendRedirect("view.jsp");
%>