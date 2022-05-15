package com.demo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.connection.getConn;

/**
 * Servlet implementation class userUpdate
 */
@WebServlet("/userUpdate")
public class userUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userUpdate() {
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
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String contact_no = request.getParameter("contact_no");
		String address = request.getParameter("address");
		String college = request.getParameter("college");
		
		
		try
		{
			
			getConn gc=new getConn();
        	
        	gc.ps=getConn.getMysqlConn().prepareStatement("update student set email=?,fname=?,lname=?,contact_no=?,address=?,college=? where id=?");
            
			gc.ps.setString(1, email);
			gc.ps.setString(2, fname);
			gc.ps.setString(3, lname);
			gc.ps.setString(4, contact_no);
			gc.ps.setString(5, address);
			gc.ps.setString(6, college);
			gc.ps.setString(7, id);
			gc.ps.executeUpdate();
			response.sendRedirect("profile.jsp");
		}
		catch (Exception e) {
			// TODO: handle exception
			
			e.printStackTrace();
		}
	}

}
