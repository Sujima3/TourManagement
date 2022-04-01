<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.regex.*, java.sql.*,javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ONLINE SHOPPING REGISTRATION</title>
</head>
<body>
<% 	String nameerror=(String)request.getAttribute("nameerror");
	String phoneerror=(String)request.getAttribute("phoneerror");
	String emailerror=(String)request.getAttribute("emailerror");
	String password=(String)request.getAttribute("passworderror");
	String error=(String)request.getAttribute("fullerror");
	
%>
     <h1> SIGN UP</h1>
     
	<form  action="RegisterUserServlet" method="post">
  			<label>Name</label>
 		    <input type="text" name="userName" ><br><br>
 		    <%
			if(nameerror!=null){
				out.print(nameerror);
			}
			%>
  			<label>Email</label>
  			<input type="email" name="mailId" ><br><br>
  			<%
			if(emailerror!=null){
				out.print(emailerror);
			}
			%>
 		    <label>Phone Number</label>
 			<input type="tel" name="phoneNumber"   ><br><br>
 			<%
			if(phoneerror!=null){
				out.print(phoneerror);
			}
			%>
  		    <label>Create Password</label>
 		    <input type="password" name="password"><br><br>
            <label>Confirm Password</label>
            <input type="password" name="cpassword" ><br><br>
  			<%
			if(password!=null){
				out.print(password);
			}
			%>
  	   <input type="submit" value="Register" ><br><br>
 <a href="login.jsp">Login Page</a><br>
 			<%
			if(error!=null){
				out.print(error);
			}
			%>
 <!-- <a href="http://localhost:8080/Loginwebpage/admin_login.jsp">Admin LogIn</a>-->
</form>

<span style="color:red;">${registerUserErrorMessage}</span><br>
<span style="color:red;">${UserErrorMessage}</span><br>


</body>
</html>