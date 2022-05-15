package com.demo.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.query.sqlQuery;

/**
 * Servlet implementation class userVal
 */
@WebServlet("/userVal")
public class userVal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userVal() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		PrintWriter out=response.getWriter();
		
		try {
			if(new sqlQuery().login(email, pass))
			{
				HttpSession session=request.getSession();
				session.setAttribute("email", email);
				
				out.print("<div style='margin-top: 5%'><div class='alert alert-success alert-dismissible fade show' role='alert'> <strong>Welcome </strong> "+email+"<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div></div>");
				RequestDispatcher rd = request.getRequestDispatcher("sDashboard.jsp");
				rd.include(request, response);
			}
			else
			{
				out.print("<div style='margin-top: 4%'><div class='alert alert-danger alert-dismissible fade show' role='alert'> <strong>Something's Wrong</strong> please check your Password...<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div></div>");
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.include(request, response);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

}
