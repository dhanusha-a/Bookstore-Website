<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="ccrud.Connect" %>

<%
String Id = request.getParameter("id");
System.out.println(Id);
int id = Integer.parseInt(Id);

String name=request.getParameter("name"); 
String isbn=request.getParameter("isbn"); 
String publisher=request.getParameter("publisher"); 
String p=request.getParameter("price"); 
int price=Integer.parseInt(p);
String q=request.getParameter("quantity");
int quantity = Integer.parseInt(q);
String category=request.getParameter("category");

Connect c = new Connect();
Connection con=c.conmet();

PreparedStatement ps=con.prepareStatement("update book set name='"+name+"',isbn='"+isbn+"',publisher='"+publisher+"',price='"+price+"',quantity='"+quantity+"',category='"+category+"',isbn='"+isbn+"' where id='"+id+"' ");
ps.executeUpdate();
System.out.println("Execute update!!!");
response.sendRedirect("view.jsp");
%>