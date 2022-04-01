package com.mvc.controller;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.mvc.bean.RegisterUserBean;
import com.mvc.dao.RegisterUserDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegisterUserServlet")

public class RegisterUserServlet extends HttpServlet{
	 private static final long serialVersionUID = 1L;
public RegisterUserServlet() {
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String userName = request.getParameter("userName");
	String emailId = request.getParameter("mailId");
	String phoneNumber= request.getParameter("phoneNumber");
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("cpassword");
    int validChecker = 0,validation=0;

    if (userName != null && phoneNumber != null && emailId != null && password!= null && confirmPassword != null){

            String regex = "^[a-zA-Z\\s]+";
            Pattern pattern = Pattern.compile(regex);

            Matcher matcher = pattern.matcher(userName);
            if (matcher.matches() == true) {
                    validChecker++;
                    validation++;
            }
            else {
                    request.setAttribute("nameerror", "<br>Name must contain only alphabet....<br>");
                   
            }

            int count = 0;

            if (phoneNumber.length() == 10) {
                    if(Character.getNumericValue(phoneNumber.charAt(0))<6 || Character.getNumericValue(phoneNumber.charAt(0))>9){
                            count++;
                    }
                    for (int i = 0; i < phoneNumber.length(); i++) {
                            if (Character.isDigit(phoneNumber.charAt(i)) == false) {
                                    count++;
                            }
                    }
                    if (count > 0) {
                            request.setAttribute("phoneerror", "<br>Your phone number is not valid...<br>");
                          
                    }
                    else {
                            validChecker++;
                            validation++;
                    }
            }
            else {
                    request.setAttribute("phoneerror", "<br>Enter Valid Phone number<br>");
                   
            }

            String emailid = "^[a-z0-9.]+@[a-z.]+$";
            Pattern patternmail = Pattern.compile(emailid);

            Matcher matchers = patternmail.matcher(emailId);
            if (matchers.matches() == true) {
                    validChecker++;
                    validation++;
            }
            else {
                    request.setAttribute("emailerror", "<br>Email address format is incorrect <br>");
            }

            int upper=0,lower=0,num=0,special=0;

            if (password.equals(confirmPassword)) {
                    if(password.length() >= 8){
                            for(int i=0;i<password.length();i++){
                                    if (password.charAt(i) >= 'A' && password.charAt(i) <= 'Z')
                                upper++;
                            else if (password.charAt(i) >= 'a' && password.charAt(i) <= 'z')
                                lower++;
                            else if (password.charAt(i)>= '0' && password.charAt(i)<= '9')
                                num++;
                            else
                                special++;
                            }

                            if (upper>0 && lower>0 && num>0 && special>0) {
                                    validChecker++;
                                    validation++;
                            }
                            else {
                                    String pwderror="";
                                    if(upper==0){
                                            pwderror += "<br>Add atlist one Uppercase letter in Passsword<br>";
                                    }
                                    if(lower==0){
                                            pwderror += "<br>Add atlist one Lowercase letter in Passsword<br>";
                                    }
                                    if(num==0){
                                            pwderror += "<br>Add atlist one Number in Passsword<br>";
                                    }
                                    if(special==0){
                                            pwderror += "<br>Add atlist one Special Character in Passsword<br>";
                                    }
                                    request.setAttribute("passworderror", pwderror);
                                    
                            }
                    }
                    else{
                            request.setAttribute("passworderror", "<br>Password Length must be atlist 8<br>");
                            
                    }
            }
            else {
                    request.setAttribute("passworderror", "<br>Password mismatch<br>");
                    
            }
    }else {
		request.setAttribute("fullerror", "<br>All Fields are mandatory<br>");
        
	}

            if(validChecker != 4){
                    request.setAttribute("fullerror", "<br>Please enter valid details in all Fields...!!!<br>");
                 
            }
    
    RegisterUserBean registerUserBean = new RegisterUserBean();
	//Using Java Beans - An easiest way to play with group of related data
    registerUserBean.setUserName(userName);
    registerUserBean.setMailId(emailId);
	registerUserBean.setPhoneNumber(phoneNumber);
	registerUserBean.setPassword(password);
	if(validation!=0 && validation !=1 && validation!=2 && validation!=3) {
	RegisterUserDao RegisterUserDao = new RegisterUserDao();

	//The core Logic of the Registration application is present here. We are going to insert user data in to the database.
	String registerUser = RegisterUserDao.registerUser(registerUserBean);

	if(registerUser.equals("Success")) //On success, you can display a message to user on Home page
	{
		request.setAttribute("registeredMessage", "*Successfully Registered");
        RequestDispatcher rd = request.getRequestDispatcher("./login.jsp");
        rd.include(request, response);
	}
	else
	{
        request.setAttribute("registerUserErrorMessage", "*Already exists");
        RequestDispatcher rd = request.getRequestDispatcher("./register.jsp");
        rd.include(request, response);
}
	}
	else {
		RequestDispatcher rd = request.getRequestDispatcher("./register.jsp");
        rd.include(request, response);
	}
}
}

