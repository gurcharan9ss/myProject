package com.demo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.connection.getConn;

/**
 * Servlet implementation class deleteCourse
 */
@WebServlet("/deleteCourse")
public class deleteCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteCourse() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
String id = request.getParameter("did");
		
		try
		{
			
			getConn gc=new getConn();
        	
        	gc.ps=getConn.getMysqlConn().prepareStatement("delete from courses where id=?");
            
			gc.ps.setString(1, id);
			
			
			
			gc.ps.executeUpdate();
			response.sendRedirect("aDashboard.jsp");
		}
		catch (Exception e) {
			// TODO: handle exception
			
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
        
		
		
	}

}
