package com.demo.controller;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.connection.getConn;

/**
 * Servlet implementation class updateCourse
 */
@WebServlet("/updateCourse")
public class updateCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateCourse() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String title = request.getParameter("title");
        String content = request.getParameter("content");
        String duration = request.getParameter("duration");
        String price = request.getParameter("price");
        String teacher = request.getParameter("teacher");
        String jlink = request.getParameter("jlink");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String drive = request.getParameter("drive");
        String id = request.getParameter("idd");
        
		
		
		
		
		
		try
		{
			
			getConn gc=new getConn();
        	
        	gc.ps=getConn.getMysqlConn().prepareStatement("update courses set title=?,content=?,duration=?,price=?,teacher=?,jlink=?,startdate=?,time=?,drive=? where id=?");
            
			gc.ps.setString(1, title);
			gc.ps.setString(2, content);
			gc.ps.setString(3, duration);
			gc.ps.setString(4, price);
			gc.ps.setString(5, teacher);
			gc.ps.setString(6, jlink);
			gc.ps.setString(7, date);
			gc.ps.setString(8, time);
			gc.ps.setString(9, drive);
			gc.ps.setString(10, id);
			
			
			gc.ps.executeUpdate();
			response.sendRedirect("aDashboard.jsp");
		}
		catch (Exception e) {
			// TODO: handle exception
			
			e.printStackTrace();
		}
		
		
		
		
	}

}
