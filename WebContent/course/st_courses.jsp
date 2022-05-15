<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="com.demo.connection.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<%



try
{
	String email=(String)session.getAttribute("email");
	
	String sql="SELECT * from st_paid s inner join courses c on s.cid = c.id where s.email=? and s.confirm='yes';";
	String sql1="SELECT * from st_paid s inner join courses c on s.cid = c.id where s.email=? and s.confirm='';";
	String sql2="SELECT * from st_paid s inner join courses c on s.cid = c.id where s.email=? and s.confirm='no';";
	getConn gc=new getConn();
	
	gc.ps=getConn.getMysqlConn().prepareStatement(sql);
	gc.ps.setString(1, email);
	gc.set=gc.ps.executeQuery();
	
	gc.ps1=getConn.getMysqlConn().prepareStatement(sql1);
	gc.ps1.setString(1, email);
	gc.set1=gc.ps1.executeQuery();
	
	gc.ps2=getConn.getMysqlConn().prepareStatement(sql2);
	gc.ps2.setString(1, email);
	gc.set2=gc.ps2.executeQuery();
	
	
%>
<div class="container mt-2">
<h4>Courses Owned</h4>
    <div class="row">
    <%
  while(gc.set.next()){
  %>
        <div class="col-md-6" style="margin-top: 4%"> 
        <div class="card">
        
        <div class="card-body">
        
        <h5 class="card-title"><%=gc.set.getString("title") %></h5>
    <p class="card-text"><%=gc.set.getString("content") %></p>
        <div class="d-flex flex-row-reverse"><a class="btn btn-primary" href="st_course.jsp?id=<%=gc.set.getString("cid")%>">Go ></a>
        </div>
        </div>
        
        </div>
        </div>
         <%
  }
    %>
    <%
  while(gc.set1.next()){
  %>
        <div class="col-md-6" style="margin-top: 4%"> 
        <div class="card">
        
        <div class="card-body">
        
        <h5 class="card-title"><%=gc.set1.getString("title") %></h5>
    <p class="card-text text-primary">The request is pending...</p>
       </div>
        
        </div>
        </div>
         <%
  }
    %>
    <%
  while(gc.set2.next()){
  %>
        <div class="col-md-6" style="margin-top: 4%"> 
        <div class="card">
        
        <div class="card-body">
        
        <h5 class="card-title"><%=gc.set2.getString("title") %></h5>
    <p class="card-text text-danger">The request for this course is Rejected.</p>
        
        </div>
        
        </div>
        </div>
         <%
  }
    %>
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