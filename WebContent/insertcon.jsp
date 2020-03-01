<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="ccrud.Connect" %>

<%String name=request.getParameter("name"); 
String isbn=request.getParameter("isbn"); 
String publisher=request.getParameter("publisher"); 
String p=request.getParameter("price"); 
int price=Integer.parseInt(p);
String q=request.getParameter("quantity");
int quantity = Integer.parseInt(q);
String category=request.getParameter("category");

Connect c = new Connect();
Connection con=c.conmet();

PreparedStatement ps=con.prepareStatement("insert into book(name,isbn,publisher,price,quantity,category) values(?,?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,isbn);  
ps.setString(3,publisher);  
ps.setInt(4,price);  
ps.setInt(5,quantity);  
ps.setString(6,category);  
ps.executeUpdate();  
System.out.println("Insertion Successful");

con.close();

response.sendRedirect("view.jsp");
%>