package com.demo.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.connection.getConn;

/**
 * Servlet implementation class insertHire
 */
@WebServlet("/insertHire")
public class insertHire extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertHire() {
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
		String email=request.getParameter("email");
		String company=request.getParameter("company");
		String mobile=request.getParameter("mobile");
		String position=request.getParameter("position");
	
		try
		{
			getConn gc=new getConn();
			
	    	gc.ps=getConn.getMysqlConn().prepareStatement("insert into hiring(email,company,mobile,position)values(?,?,?,?)");
	    	
			
            
			gc.ps.setString(1, email);
			gc.ps.setString(2, company);
			gc.ps.setString(3, mobile);
			gc.ps.setString(4, position);
		
			
			gc.ps.executeUpdate();
			response.sendRedirect("index.jsp");
			
			
			
		}
		catch (Exception e) {
			// TODO: handle exception
			
			e.printStackTrace();
		}
	
	
	}

}
