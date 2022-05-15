<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
    <%@ page import="java.sql.*" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>

<div class="container mt-2">
<center><h2 class="hedr shd1">Courses</h2>
    <div class="row " style="overflow-y: scroll; max-height:1200px;">
    <%
try
{

	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","root");
	PreparedStatement ps =con.prepareStatement("SELECT * from courses");
	ResultSet set=ps.executeQuery();
    while(set.next()){
    	

%>
        <div class="col-12 col-md-6 col-lg-4 mt-2" >
        
        <div class="card " style="width: 18rem;">
      <img src="<%=set.getString("logo") %>" class="card-img-top " alt="<%=set.getString("title") %>">
      <div class="card-body">
        <h5 class="card-title"><%=set.getString("title") %></h5>
        <p class="card-text overflow-auto " style="height: 5rem; text-align: justify" ><%=set.getString("content") %></p>
      </div>
      <div class="card-footer d-flex justify-content-between">
        <small class="text-muted"><%=set.getString("duration") %> Months</small>
        <button class="btn btn-outline-success " data-bs-toggle="modal" data-bs-target="#Modal1">Rs <%=set.getString("price") %></button>
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
       
       
        </div>
        </center>
    </div>



</body>
</html>