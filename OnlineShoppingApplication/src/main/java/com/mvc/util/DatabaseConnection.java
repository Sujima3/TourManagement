package com.mvc.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {

	public static Connection createConnection()
	{
		Connection connection = null;
		String url = "jdbc:mysql://localhost:3306/onlineshopping";
		String username = "root";
		String password = "Aspire@123";
		System.out.println("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			}
			catch(ClassNotFoundException exception) {
				exception.printStackTrace();
			}
			connection = DriverManager.getConnection(url,username,password);
			
		}
		catch(Exception exception) {
			exception.printStackTrace();
		}
		return connection;
	}
}
