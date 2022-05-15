<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
     <%@ page import="com.demo.connection.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Jobs</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="assets/main.css">
<link rel="icon" type="image/png" sizes="32x32" href="assets/favicon/favicon-32x32.png">
</head>
<body>
<%@include file="nav2.jsp" %>
<%
String email=(String)session.getAttribute("email");
try
{
	




	String sql="SELECT * from jobs";
	String sql1="SELECT * from st_job s inner join jobs c on s.job_id = c.id where s.email=?";
	getConn gc=new getConn();

	gc.ps=getConn.getMysqlConn().prepareStatement(sql);
	gc.set=gc.ps.executeQuery();
	
	
	gc.ps1=getConn.getMysqlConn().prepareStatement(sql1);
	gc.ps1.setString(1,email);
	gc.set1=gc.ps1.executeQuery();
	
	
%>

<div class="container" style="margin-top: 6%">
    <div class="row">
        <div class="col-md-8">
        
        <div class="card">
  <h5 class="card-header">Jobs</h5>
  <div class="card-body">
  <%
  while(gc.set.next()){
  %>
    <h5 class="card-title"><%=gc.set.getString("title") %></h5>
    <small class="text-muted"><%=gc.set.getString("company") %></small>
    <p class="card-text"><%=gc.set.getString("content") %></p>
    <p><%=gc.set.getString("location") %></p>
    <form action="applyJob" method="post">
    <input type="hidden" value="<%=email %>" name="email">
    <input type="hidden" value="<%=gc.set.getString("id") %>" name="jid">
    <button type="submit" class="btn btn-primary">Apply Job</button>
    </form>
    
    <hr>
    
    
    
    <%
  }
    %>
    
  </div>
</div>
        </div>
        <div class="col-md-4" style="height:600px;">
        <div class="card">
  <h5 class="card-header">Hiring Request</h5>
  <div class="card-body">
   <%
  while(gc.set1.next()){
  %>
    <h5 class="card-title"><%=gc.set1.getString("title") %></h5>
    <p class="card-text"><%=gc.set1.getString("status") %>...</p>
    <small class="text-muted"><%=gc.set1.getString("date") %></small>
    <hr>
     <%
  }
    %>
  </div>
</div></div>
        
        
    </div>
</div>
<%
    
}
catch (Exception e) {
	
	e.printStackTrace();
}

       %> 

</body>
</html>