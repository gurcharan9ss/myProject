package com.demo.connection;
import java.sql.*;
public class getConn {
	
private static Connection con;

public PreparedStatement ps,ps1,ps2,ps3;

public ResultSet rs,set,set1,set2,set3;

public static Connection getMysqlConn()
{
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","root");
		return con;
		
		
	} catch (Exception e) {
		// TODO: handle exception
	}
	return null;
}

}
