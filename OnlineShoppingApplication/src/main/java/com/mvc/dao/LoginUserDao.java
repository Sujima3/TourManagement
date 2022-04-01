package com.mvc.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mvc.bean.LoginUserBean;
import com.mvc.util.DatabaseConnection;

public class LoginUserDao {

public int findUser=0;
public String LoginUser(LoginUserBean LoginUser) throws IOException
{
	System.out.println("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxjhgsuhfirxxx");
	String email = LoginUser.getEmailId();
	String password = LoginUser.getPassword();
	Connection connection = null;
	String checkUserQuery = "select useremail,password from users";
	try {
		connection = DatabaseConnection.createConnection();
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery(checkUserQuery);
		while(resultSet.next()) {
			if(email.equals(resultSet.getString(1)) && password.equals(resultSet.getString(2))) {
				findUser++;
			}
		}
	}
	catch (Exception exception) {
		exception.printStackTrace();
	}
	if(findUser!=0) {
		return "Success";
	}
	else {
		return "NotExits";
	}
}
}
