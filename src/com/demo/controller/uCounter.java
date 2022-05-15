package com.demo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.connection.getConn;

/**
 * Servlet implementation class uCounter
 */
@WebServlet("/uCounter")
public class uCounter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public uCounter() {
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
		String courses = request.getParameter("courses");
		String members = request.getParameter("members");
		String trained = request.getParameter("trained");
		String clients = request.getParameter("clients");
		
		try
		{
			
			getConn gc=new getConn();
        	
        	gc.ps=getConn.getMysqlConn().prepareStatement("update counters set courses=?,members=?,trained=?,clients=? where id=1");
            
			gc.ps.setString(1, courses);
			gc.ps.setString(2, members);
			gc.ps.setString(3, trained);
			gc.ps.setString(4, clients);
			gc.ps.executeUpdate();
			response.sendRedirect("aDashboard.jsp");
		}
		catch (Exception e) {
			// TODO: handle exception
			
			e.printStackTrace();
		}
		
	}

}
