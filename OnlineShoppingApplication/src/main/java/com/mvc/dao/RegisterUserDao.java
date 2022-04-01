package com.mvc.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mvc.bean.RegisterUserBean;
import com.mvc.util.DatabaseConnection;

public class RegisterUserDao {
	public int findUser=0;
	public String registerUser(RegisterUserBean RegisterUser) throws IOException
	{
		System.out.println("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxjhgsuhfirxxx");
		String userName = RegisterUser.getUserName();
		String emailId = RegisterUser.getMailId();
		String phoneNumber = RegisterUser.getPhoneNumber();
		String password = RegisterUser.getPassword();
		Connection connection = null;
		String checkUserQuery = "select useremail from users";
		try {
			connection = DatabaseConnection.createConnection();
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(checkUserQuery);
			while(resultSet.next()) {
				if( emailId.equals(resultSet.getString(1))) {
					findUser++;
				}
			}
		}
		catch (Exception exception) {
			exception.printStackTrace();
		}
		if(findUser!=0)
		{
			return "AlreadyExists";
		}
		else
		{
			 try {
                 String insertUserQuery="insert into users(username,useremail,userphone,password) values(?,?,?,?)";
                 PreparedStatement statement=connection.prepareStatement(insertUserQuery);
                 statement.setString(1,userName);
                 statement.setString(2,emailId);
                 statement.setString(3,phoneNumber);
                 statement.setString(4,password);
                 statement.executeUpdate();
                 return "Success"; 
         }catch(Exception exception){
        	 	exception.printStackTrace();
         }
		}
		return "";
}
}