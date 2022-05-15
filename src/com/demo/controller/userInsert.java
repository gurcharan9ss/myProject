package com.demo.controller;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.connection.getConn;

/**
 * Servlet implementation class userInsert
 */
@WebServlet("/userInsert")
public class userInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userInsert() {
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
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String contact_no=request.getParameter("contact_no");
		String gender=request.getParameter("gender");
		String pass=request.getParameter("pass");
		String cpass=request.getParameter("cpass");
		PrintWriter out=response.getWriter();
		
		
		
		if(pass.equals(cpass))
		{
		try
		{
			
			getConn gc=new getConn();
        	
        	gc.ps=getConn.getMysqlConn().prepareStatement("insert into student(email,fname,lname,contact_no,gender,password)values(?,?,?,?,?,?)");
            
			gc.ps.setString(1, email);
			gc.ps.setString(2, fname);
			gc.ps.setString(3, lname);
			gc.ps.setString(4, contact_no);
			gc.ps.setString(5, gender);
			gc.ps.setString(6, pass);
			gc.ps.executeUpdate();
			response.sendRedirect("index.jsp");
		}
		catch (Exception e) {
			// TODO: handle exception
			
			e.printStackTrace();
		}
		
		}
		else
		{
			out.print("<div style='margin-top: 4%'><div class='alert alert-danger alert-dismissible fade show' role='alert'> <strong>Something's wrong </strong>,Please check your password.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div></div>");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.include(request, response);
		}
		
		
	}

}
