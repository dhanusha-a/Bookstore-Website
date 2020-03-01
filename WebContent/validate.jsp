<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import = "ccrud.Connect" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<%
String uname = request.getParameter("user");
String pwd = request.getParameter("pwd");
System.out.print(uname+" "+pwd);
Connect c = new Connect();
Connection con=c.conmet();

PreparedStatement ps = con.prepareStatement("select * from admin where username='"+uname+"' and password='"+pwd+"' ");
ResultSet rs = ps.executeQuery();
if (rs.next()){
	session.setAttribute("username", uname);
	response.sendRedirect("view.jsp");
}
else{
	out.print("Not an admin");
}
	
%>