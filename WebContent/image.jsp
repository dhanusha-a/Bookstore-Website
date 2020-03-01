<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.io.InputStream" %>
<%@ page import ="javax.servlet.http.Part" %>
<%@ page import ="javax.servlet.annotation.MultipartConfig" %>
<%@ page import = "javax.servlet.annotation.WebServlet" %>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="img" method="get" enctype="multipart/form-data">
<input type="file" name="kuch">
<input type="submit" name="Submit" value="submit">
</form>
 
</body>
</html>

<% 
Connection con=null;
InputStream is;
InputStream inputStream = null;
try
{

Part filePart = request.getPart("kuch");

if (filePart != null) {
    // prints out some information for debugging
    System.out.println(filePart.getName());
    System.out.println(filePart.getSize());
    System.out.println(filePart.getContentType());

    // obtains input stream of the upload file
    inputStream = filePart.getInputStream();
}
}
catch(Exception e)
{
System.out.println(e);	
}
//String location = request.getParameter("kuch");
//System.out.println("LOcation:"+location);

try{  
	System.out.println("going to connect");
    Class.forName("com.mysql.jdbc.Driver");  
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bkst","root",""); 
    System.out.println("connected");
    
    
    //File image = new File(location);
    //out.println(image);
    
    PreparedStatement ps=con.prepareStatement("insert into image(img) values(?)");
    System.out.println("In between");
    if (inputStream != null) {
        // fetches input stream of the upload file for the blob column
        ps.setBlob(1, inputStream);
    }

    /* fis = new FileInputStream(request.getParameter("kuch"));
    ps.setBlob(1,(Blob)image);
    fis = new FileInputStream(image);
     ps.setBinaryStream(1,fis);*/
    ps.executeUpdate();
    System.out.println("Image inserted");
    
}catch(Exception e){System.out.println(e);}   
%>