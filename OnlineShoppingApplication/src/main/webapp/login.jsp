<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.regex.*, java.sql.*,javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Shopping Login</title>

</head>
<body>
<%  
	String emailerror=(String)request.getAttribute("emailerror");
	String password=(String)request.getAttribute("passworderror");
	String error=(String)request.getAttribute("fullerror");
	
%>
<%-- <%  out.println(" --%><h1> SIGN IN </h1><!-- "); %> -->
    
  <div> 
  <form action="LoginUserServlet" method="post" >

	<label>EMAIL ID</label>
	<input type="email" name="emailId"  ><br><br>
	<%
	if(emailerror!=null){
		out.print(emailerror);
	}
	
	%>
	<label>PASSWORD</label>
	<input type="password" name="password"><br><br>
	<%
	if(password!=null){
		out.print(password);
	}
	
	%>
	<a href="forget.jsp">Forgot Password?</a><br>
	<%
	if(error!=null){
		out.print(error);
	}
	
	%>
	<span style="color:green;">${registeredMessage}</span><br>
	<span style="color:green;">${UserSuccessMessage}</span><br>
	<span style="color:red;">${loginerrormessage}</span><br>
	<input type="submit" value="Login">
</form>	
</div>

<p>Create account click register</p>
<a href="register.jsp">Register</a>
<br>

</body>
</html>