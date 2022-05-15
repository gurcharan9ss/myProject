<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
     <%@ page import="com.demo.connection.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Students</title>
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
	

	String id=request.getParameter("id");


	String sql="SELECT * from st_job s inner join student c on s.email = c.email where job_id=?";
	
	getConn gc=new getConn();

	gc.ps=getConn.getMysqlConn().prepareStatement(sql);
	gc.ps.setString(1, id);
	gc.set=gc.ps.executeQuery();
	

	
		
%>
<div class="container" style="margin-top: 6%">
<h3>Jobs Applied</h3>
<div class="table-responsive">
        <table class="table">
  <thead>
    <tr>
      <th scope="col">Email</th>
      <th scope="col">Job ID</th>
      <th scope="col">Date</th>
      <th scope="col">Status</th>
      <th scope="col">Mailed</th>
      <th scope="col">Delete</th>
      <th scope="col">Resume</th> 
      
    </tr>
  </thead>
  <tbody>
  <%
  while(gc.set.next()){
  %>
    <tr>
      <td><a href="mailto: <%=gc.set.getString("email") %>"><%=gc.set.getString("email") %></a></td>
      <td><%=gc.set.getString("job_id") %></td>
      
      <td><%=gc.set.getString("date") %></td>
      <td><%=gc.set.getString("status") %></td>
      <td><a class="btn btn-sm btn-primary" href="mail?id=<%=gc.set.getString("id")%>">Mailed</a></td>
      <td><a class="btn btn-sm btn-danger" onclick="return confirm('Are you sure ?')" href="deleteApply?did=<%=gc.set.getString("id")%>">DELETE</a></td>
      <td><a class="btn btn-sm btn-primary" href="<%=gc.set.getString("resume") %>">Resume</a></td>
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