package com.mvc.controller;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.mvc.bean.LoginUserBean;
import com.mvc.dao.LoginUserDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/LoginUserServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)

public class LoginUserServlet extends HttpServlet{
	

	private static final long serialVersionUID = 1L;
	public LoginUserServlet() {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//Copying all the input parameters in to local variables
	    String emailId = request.getParameter("emailId");
	    String password = request.getParameter("password");
	    int validChecker = 0,validation=0;

        if ( emailId != null && password!= null ){

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
                                                pwderror += "<br>Add atlist one Uppercase letter in Passsword";
                                        }
                                        if(lower==0){
                                                pwderror += "<br>Add atlist one Lowercase letter in Passsword";
                                        }
                                        if(num==0){
                                                pwderror += "<br>Add atlist one Number in Passsword";
                                        }
                                        if(special==0){
                                                pwderror += "<br>Add atlist one Special Character in Passsword";
                                        }
                                        request.setAttribute("passworderror", pwderror);
                                        
                                }
                        }
                        else{
                                request.setAttribute("passworderror", "<br>Password Length must be atlist 8<br>");
                                
                        }
                }
        		else {
        			request.setAttribute("fullerror", "<br>All Fields are mandatory");
                    
        		}
              


                if(validChecker != 2){
                        request.setAttribute("fullerror", "<br>Please enter valid details in all Fields...!!!");
                        
                }
                
	LoginUserBean loginUserBean = new LoginUserBean();
	//Using Java Beans - An easiest way to play with group of related data
	loginUserBean.setEmailId(emailId);
	loginUserBean.setPassword(password);

	/* System.out.println(validation); */
	if(validation!=0 && validation !=1) {
	LoginUserDao loginUserDao = new LoginUserDao();
	//The core Logic of the Registration application is present here. We are going to insert user data in to the database.
	String loginUser = loginUserDao.LoginUser(loginUserBean);
	if(loginUser.equals("Success")) //On success, you can display a message to user on Home page
	{
	        response.sendRedirect("./home.jsp");       
	        /* response.sendRedirect("index.jsp"); */
	}
	else //On Failure, display a meaningful message to the User.
	{
	        request.setAttribute("loginerrormessage", "*Invalid Email Id And Password");
	        RequestDispatcher rd = request.getRequestDispatcher("./login.jsp");
	        rd.include(request, response);
	}
	}else {
		RequestDispatcher rd = request.getRequestDispatcher("./login.jsp");
        rd.include(request, response);
	}
	}
	}


