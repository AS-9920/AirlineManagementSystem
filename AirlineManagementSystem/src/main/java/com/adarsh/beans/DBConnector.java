package com.adarsh.beans;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector 
{
	private Connection dbconnection;
	
	public DBConnector()
	{
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		dbconnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/airportdb?user=root&password=adarsh");
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
	}

	public Connection getDbconnection() {
		return dbconnection;
	}	
}
