package com.demo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.connection.getConn;

/**
 * Servlet implementation class insertJob
 */
@WebServlet("/insertJob")
public class insertJob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertJob() {
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
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		String location=request.getParameter("location");
		String company=request.getParameter("company");
		
		try {
			
			getConn gc=new getConn();
        	
        	gc.ps=getConn.getMysqlConn().prepareStatement("insert into jobs(title,content,location,company)values(?,?,?,?)");
        	gc.ps.setString(1, title);
			gc.ps.setString(2, content);
			gc.ps.setString(3, location);
			gc.ps.setString(4, company);
			
			gc.ps.executeUpdate();
			response.sendRedirect("a_jobs.jsp");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

}
