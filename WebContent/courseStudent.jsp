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
<div style="margin-top: 6%">

<%
try
{
	String id=request.getParameter("id");

	String sql="SELECT * from st_paid where cid=? ";

	
	getConn gc=new getConn();

	gc.ps=getConn.getMysqlConn().prepareStatement(sql);
	gc.ps.setString(1, id);
	gc.set=gc.ps.executeQuery();
	
		
%>

<div class="container">
<center><h2>Students</h2></center>
<br>
<a class="btn btn-sm btn-danger" href="clearData?id=<%=id%>">Clear Data</a>
<br>
<br>
<div class="card">
<div class="card-body">
<%
  while(gc.set.next()){
  %>

<div class="table-responsive">
<table class="table">
  <thead>
    <tr>
      <th scope="col">Email</th>
      <th scope="col">Joining Date</th>
      <th scope="col">Profile</th>
    </tr>
  </thead>
  <tbody>
    <tr>
     
      <td><a href="mailto: <%=gc.set.getString("email") %>"><%=gc.set.getString("email") %></a></td>
      <td><%=gc.set.getString("pdate") %></td>
      <td><a class="btn btn-sm btn-primary" href="sprofile.jsp?email=<%=gc.set.getString("email")%>">Profile</a></td>
    </tr>
    </tbody>
    </table>
    </div>
    
<% 
}
%>
</div>
</div>
</div>

<%
    
}
catch (Exception e) {
	
	e.printStackTrace();
}

       %> 

</div>


</body>
</html>