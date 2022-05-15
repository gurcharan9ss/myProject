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
<%@include file="nav3.jsp" %>

<%
try
{
	




	String sql="SELECT * from jobs";
	String sql1="SELECT * from hiring ";
	
	getConn gc=new getConn();

	gc.ps=getConn.getMysqlConn().prepareStatement(sql);
	gc.set=gc.ps.executeQuery();
	
	gc.ps1=getConn.getMysqlConn().prepareStatement(sql1);
	gc.set1=gc.ps1.executeQuery();
		
%>
<div class="container" style="margin-top: 6%">
    <div class="row">
        <div class="col-md-8">
        <h2>Insert job</h2>
        <form action="insertJob" method="post">
      <div class="modal-body m-2">
  
    <label for="title" class="form-label">Title</label>
    <input type="text" class="form-control" id="title" name="title" required>

 	<label for="company" class="form-label">Company Name</label>
    <input type="text" class="form-control" id="company" name="company" required>

    <label for="content" class="form-label">Content</label>
    <input type="text" class="form-control" id="content" name="content" required>
    
    <label for="location" class="form-label">Location</label>
    <input type="text" class="form-control" id="location" name="location" required>
    
    
  
  	<hr>

    <button type="submit" class="btn btn-primary">Upload</button>
      </div>
      </form>
        
        </div>
        <div class="col-md-4" style="max-height:600px;">
        <div class="card">
  <h5 class="card-header">Hiring Request</h5>
  <div class="card-body">
   
   <%
  while(gc.set1.next()){
  %>
    <h5 class="card-title"><%=gc.set1.getString("company") %></h5>
    <p class="card-text"><a href="mailto: <%=gc.set1.getString("email") %>"><%=gc.set1.getString("email") %></a></p>
    <p><%=gc.set1.getString("mobile") %></p>
    <small class="text-muted">Position: <%=gc.set1.getString("position") %></small>
    <hr>
    <%
  }
    %>
    
    
  </div>
</div></div>
    </div>
</div>




<div class="container mt-2">
<h3>Jobs</h3>
<div class="table-responsive">
        <table class="table">
  <thead>
    <tr>
      
      <th scope="col">Job ID</th>
      <th scope="col">Company</th>
      <th scope="col">Location</th>
      <th scope="col">Job title</th>
      <th scope="col">Applied</th>
      
      
    </tr>
  </thead>
  <tbody>
  <%
  while(gc.set.next()){
  %>
    <tr>
      
      <td><%=gc.set.getString("id") %></td>
      
      <td><%=gc.set.getString("company") %></td>
      <td><%=gc.set.getString("location") %></td>
      <td><%=gc.set.getString("title") %></td>
      <td><a class="btn btn-sm btn-danger" href="jobStudents.jsp?id=<%=gc.set.getString("id")%>">Applicants</a></td>
      
    </tr>
    <%
  }
    %>
  </tbody>
  
</table>
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