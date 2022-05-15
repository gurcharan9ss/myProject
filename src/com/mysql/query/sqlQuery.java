package com.mysql.query;

import java.sql.ResultSet;

import com.demo.connection.getConn;

public class sqlQuery {
	public boolean login(String email,String pass)
	{
		String sql=" select * from student where email=? and password=?";
		getConn gc=new getConn();
		
		try {
			gc.ps=getConn.getMysqlConn().prepareStatement(sql);
			gc.ps.setString(1, email);
			gc.ps.setString(2, pass);
			gc.rs=gc.ps.executeQuery();
			
			return gc.rs.next();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}
	
	
	public boolean alogin(String email,String pass)
	{
		String sql=" select * from admin where email=? and password=?";
		getConn gc=new getConn();
		
		try {
			gc.ps=getConn.getMysqlConn().prepareStatement(sql);
			gc.ps.setString(1, email);
			gc.ps.setString(2, pass);
			gc.rs=gc.ps.executeQuery();
			
			return gc.rs.next();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}
	
}
