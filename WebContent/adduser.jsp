<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="ccrud.Connect" %>

<%String name=request.getParameter("name"); 
String bday=request.getParameter("bday"); 
String gen=request.getParameter("gen"); 
String city=request.getParameter("city"); 
String email=request.getParameter("email"); 
String contact=request.getParameter("contact"); 
String username=request.getParameter("username"); 
String pass=request.getParameter("password");

Connect c = new Connect();
Connection con=c.conmet();

PreparedStatement ps=con.prepareStatement("insert into register(name,gender,email,contact,dob,city,username,password) values(?,?,?,?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,gen);  
ps.setString(3,email);  
ps.setString(4,contact);  
ps.setString(5,bday);  
ps.setString(6,city);  
ps.setString(7,username); 
ps.setString(8,pass); 
ps.executeUpdate();  
System.out.println("Insertion Successful");

con.close();
%>