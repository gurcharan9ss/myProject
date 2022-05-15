<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
     <%@ page import="com.demo.connection.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="assets/main.css">
<link rel="icon" type="image/png" sizes="32x32" href="assets/favicon/favicon-32x32.png">
</head>

<body class="bg-light text-dark">
<%@include file="nav2.jsp" %>
<%
try
{
	String id= request.getParameter("id");



	String sql1="SELECT * from courses where id=?";

	getConn gc=new getConn();

	gc.ps=getConn.getMysqlConn().prepareStatement(sql1);
	gc.ps.setString(1,id);
	gc.set=gc.ps.executeQuery();
	
	 
    while(gc.set.next()){
    	

%>
<div class="container" style="margin-top: 15%">
    <div class="row" >
        <div class="col-md-7">
        <form>
        <h2><%=gc.set.getString("title") %></h2>
        <br>
        <p><%=gc.set.getString("content") %></p>
        <br>
        <p>Teacher : <%=gc.set.getString("teacher") %></p>
        <p>Course Start on : <%=gc.set.getString("startdate") %>  
        <br>
        Timing : <%=gc.set.getString("time") %></p>
        <a class="btn btn-primary" target="_blank" href="<%=gc.set.getString("jlink") %>">Join Class</a>
        
        </form>
        </div>
        <div class="col-md-5 mt-2">
        <h5>WorkSpace</h5>
        

<iframe src="https://drive.google.com/embeddedfolderview?id=<%=gc.set.getString("drive") %>#list" style="width:100%; height:600px; border:0;"></iframe>


</div>
    </div>
</div>
 <%
    }
}
catch (Exception e) {
	
	e.printStackTrace();
}

       %> 
</body>
</html>