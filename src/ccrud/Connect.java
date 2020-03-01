package ccrud;
import java.sql.*;
import javax.sql.*;

public class Connect {
	public Connection conmet() {
		Connection con=null;  
		try{  
			System.out.println("going to connect");
		    Class.forName("com.mysql.jdbc.Driver");  
		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bkst","root",""); 	
		    System.out.println("connected");
		  
		}catch(Exception e){System.out.println(e);}
		return con; 
	}
}
