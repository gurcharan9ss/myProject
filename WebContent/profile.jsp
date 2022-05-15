<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ page import="java.sql.*" %>
     <%@ page import="com.demo.connection.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
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
try
{
	

	String email=(String)session.getAttribute("email");


	String sql="SELECT * from student where email=? ";
	
	getConn gc=new getConn();

	gc.ps=getConn.getMysqlConn().prepareStatement(sql);
	gc.ps.setString(1, email);
	gc.set=gc.ps.executeQuery();
	

	while(gc.set.next()){
		
%>


<div class="container" style="margin-top: 6%">
    <div class="row">
        <div class="col-md-8">
        <form action="userUpdate" method="post" >
      <div class="modal-body m-2">
  <div class="row">
        <div class="col-md-6">
        <label for="fname" class="form-label">First Name</label>
        <input type="text" class="form-control" id="fname" name="fname" value="<%=gc.set.getString("fname")%>">
        </div>
        <div class="col-md-6">
        <label for="lname" class="form-label">Last Name</label>
        <input type="text" class="form-control" id="lname" name="lname" value="<%=gc.set.getString("lname")%>">
        </div>
        <div class="col-xs-12">
        <label for="email" class="form-label">Email</label>
        <input type="email" class="form-control" id="email" name="email" value="<%=gc.set.getString("email")%>">
        </div>
        
        <div class="col-md-6">
        <label class="form-label">Gender</label>
        <input type="text" class="form-control" id="gender" name="gender" value="<%=gc.set.getString("gender")%>" readonly>
        </div>
        <div class="col-md-6">
        <label for="contact_no" class="form-label">Contact No.</label>
        <input type="text" class="form-control" id="contact_no" name="contact_no" value="<%=gc.set.getString("contact_no")%>">
        </div>
        <div class="col-xs-12">
        <label for="address" class="form-label">Address</label>
        <input type="text" class="form-control" id="address" name="address" value="<%=gc.set.getString("address")%>">
        </div>
        <div class="col-xs-12">
        <label for="college" class="form-label">College</label>
        <input type="text" class="form-control" id="college" name="college" value="<%=gc.set.getString("college")%>">
        </div>
        
    </div>
    <input type="hidden" class="form-control"  name="id" value="<%=gc.set.getString("id")%>">
  <br>
    <button type="submit" class="btn btn-primary">Submit</button>
  
    
      </div>
      </form>
        </div>
        
        
        
        
        <div class="col-md-4">
        <form action="resumeUpdate" method="post" enctype="multipart/form-data">
        <label class="form-label">Resume</label>
        <br>
        
        <iframe src="<%=gc.set.getString("resume")%>" title="Resume" style="min-height: 400px;width:100%;"></iframe>
        
        <input type="hidden" class="form-control"  name="id" value="<%=gc.set.getString("id")%>">
        <br><br>
        <input type="file" class="form-control btn btn-primary" name="resume">
        <br> <br>
        <button type="submit" class="btn btn-primary">Submit</button>
        </form>
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