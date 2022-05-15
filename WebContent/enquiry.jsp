<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
     <%@ page import="com.demo.connection.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enquiry</title>
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
	




	String sql="SELECT * from contact ";

	
	getConn gc=new getConn();

	gc.ps=getConn.getMysqlConn().prepareStatement(sql);
	gc.set=gc.ps.executeQuery();
	
		
%>

<div class="container">
<center><h2>Enquiry</h2></center>
<br>
<div class="card">
<div class="card-body">
<%
  while(gc.set.next()){
  %>
<p>Name : <%=gc.set.getString("name") %></p>
<p>Email : <a href="mailto: <%=gc.set.getString("email") %>"><%=gc.set.getString("email") %></a></p>
<p>Message : <%=gc.set.getString("message") %></p>
<hr>
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