package com.demo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.connection.getConn;

/**
 * Servlet implementation class userPay
 */
@WebServlet("/userPay")
public class userPay extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userPay() {
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
		String cid=request.getParameter("cid");
		String tid=request.getParameter("tid");
		String amount=request.getParameter("amount");
		String pdate=request.getParameter("pdate");
		PrintWriter out=response.getWriter();
		
		
		
		try
		{
			getConn gc=new getConn();
			gc.ps1=getConn.getMysqlConn().prepareStatement("select * from st_paid where email=? and confirm='yes' and cid=?");
			gc.ps1.setString(1, email);
			gc.ps1.setString(2, cid);
			
			ResultSet st=gc.ps1.executeQuery();
			
	    	
	    	
			if(st.next()==false){
			gc.ps=getConn.getMysqlConn().prepareStatement("insert into st_paid(email,cid,tid,amount,pdate)values(?,?,?,?,?)");
			gc.ps.setString(1, email);
			gc.ps.setString(2, cid);
			gc.ps.setString(3, tid);
			gc.ps.setString(4, amount);
			gc.ps.setString(5, pdate);
			
			gc.ps.executeUpdate();
			
			out.print("<div style='margin-top: 4%'><div class='alert alert-success alert-dismissible fade show' role='alert'> <strong>Thankyou </strong>,Course will be confirmed in coming 2-3 working days.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div></div>");
			RequestDispatcher rd = request.getRequestDispatcher("sDashboard.jsp");
			rd.include(request, response);
			}
			else{
				out.print("<div style='margin-top: 4%'><div class='alert alert-danger alert-dismissible fade show' role='alert'> <strong>Something's wrong </strong>,you have already enrolled this course.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div></div>");
				RequestDispatcher rd = request.getRequestDispatcher("sDashboard.jsp");
				rd.include(request, response);
				
			}
			
		}
		catch (Exception e) {
			// TODO: handle exception
			
			e.printStackTrace();
		}	
	}

}
