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
 * Servlet implementation class applyJob
 */
@WebServlet("/applyJob")
public class applyJob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public applyJob() {
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
		String jid=request.getParameter("jid");
		String email=request.getParameter("email");
		PrintWriter out=response.getWriter();
		getConn gc=new getConn();
		
		try {
			gc.ps1=getConn.getMysqlConn().prepareStatement("select * from st_job where email=? and job_id=?");
        	gc.ps1.setString(1, email);
			gc.ps1.setString(2, jid);
			gc.set=gc.ps1.executeQuery();
			
			if(gc.set.next()==false){
			
        	
        	gc.ps=getConn.getMysqlConn().prepareStatement("insert into st_job(email,job_id,date)values(?,?,LOCALTIMESTAMP())");
        	gc.ps.setString(1, email);
			gc.ps.setString(2, jid);
			
			
			gc.ps.executeUpdate();
			response.sendRedirect("s_Jobs.jsp");
			}
			else{
				out.print("<div style='margin-top: 6%'><div class='alert alert-danger alert-dismissible fade show' role='alert'> <strong>Something's wrong </strong>,you have already applied this job.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div></div>");
				RequestDispatcher rd = request.getRequestDispatcher("s_Jobs.jsp");
				rd.include(request, response);
			}
		
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
