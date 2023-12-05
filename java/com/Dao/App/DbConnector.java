package com.Dao.App;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnector {

	Connection con = null;
	public Connection dbConnector()
	{
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camp","root","");
	}
	catch (Exception e) {
		System.out.println(e);
	}
	return con;
}
}
