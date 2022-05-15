package com.demo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.connection.getConn;

/**
 * Servlet implementation class contact
 */
@WebServlet("/contact")
public class contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contact() {
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
		response.setContentType("text/html"); 
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String message=request.getParameter("message");
		
		
		try {
			
			getConn gc=new getConn();
        	
        	gc.ps=getConn.getMysqlConn().prepareStatement("insert into contact(name,email,message)values(?,?,?)");
        	gc.ps.setString(1, name);
			gc.ps.setString(2, email);
			gc.ps.setString(3, message);
			
			
			gc.ps.executeUpdate();
			response.sendRedirect("contactUs.jsp");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
