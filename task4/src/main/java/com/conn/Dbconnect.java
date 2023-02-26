package com.conn;

import java.sql.Connection;
import java.sql.DriverManager;
public class Dbconnect {
	private static Connection conn;

	public static Connection getConn(){
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/task_4","root","");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return conn;

	}

}
