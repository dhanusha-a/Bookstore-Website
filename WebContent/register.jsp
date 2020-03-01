<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Register</title>
</head>
<body>
	<form name="frm" method="post" action="adduser.jsp">
		<table>
		<tr>
			<td>Name:</td>
			<td><input type="text"  placeholder="Name" name="name" required> 
		</tr>
		
		<tr>
			<td>Date of Birth:</td>
			<td><input type="text" name="bday" required></td>
		</tr>
		
		<tr>
			<td>Gender:</td>
			<td><input type="radio" name="gen" value="male">Male &nbsp;
			<input type="radio" name="gen" value="female">Female</td>
		</tr>
			
		
		<tr>
			<td> City:</td>
			<td><input type="text" name="city" required>
			</td>
		</tr>
			
		<tr>
			<td class="a">Email:</td>
			<td><input type="Email" name="email" required></td>
		</tr>
		
		<tr>
			<td class="a">Contact No:</td>
			<td><input type="tel" name="contact" required></td>
		</tr>
		
		<tr>
			<td class="a">Username:</td>
			<td><input type="text" name="username" required></td>
		
		</tr>
	 <tr>
			<td class="a">Password:</td>
			<td><input type="password" name="password" required></td>
		</tr>
			<tr>
			<td colspan="2" align="center">
				<button type="submit" name="Register">Register</button>
				<button type="reset" name="Clear">Clear</button>
				</td></tr>
	</table>
		
	</form>
</body>
</html>