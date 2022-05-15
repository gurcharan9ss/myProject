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
 * Servlet implementation class updateAdmin
 */
@WebServlet("/updateAdmin")
public class updateAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateAdmin() {
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
		String email = request.getParameter("email");
		String npass = request.getParameter("npass");
		String pass = request.getParameter("pass");
		String id = request.getParameter("id");
		PrintWriter out=response.getWriter();
		
		try
		{
			
			getConn gc=new getConn();
        	
			if(npass.equals(pass)){
        	gc.ps=getConn.getMysqlConn().prepareStatement("update admin set password=?, email=? where id=?");
            
			gc.ps.setString(1, pass);
			gc.ps.setString(2, email);
			gc.ps.setString(3, id);
			
			
			gc.ps.executeUpdate();
			
			out.print("<div style='margin-top: 4%'><div class='alert alert-success alert-dismissible fade show' role='alert'> <strong>Successfully </strong> Password changed...<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div></div>");
			RequestDispatcher rd = request.getRequestDispatcher("aDashboard.jsp");
			rd.include(request, response);
			}
			else{
				out.print("<div style='margin-top: 4%'><div class='alert alert-danger alert-dismissible fade show' role='alert'> <strong>Something's Wrong</strong> please check your Password...<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div></div>");
				RequestDispatcher rd = request.getRequestDispatcher("aDashboard.jsp");
				rd.include(request, response);
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			
			e.printStackTrace();
		}
	}

}
