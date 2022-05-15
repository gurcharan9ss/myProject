<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>

<div class="container mt-2" >
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

 
        <div class="col-12 col-md-6 col-lg-4 mt-2">
        
        <div class="card " style="width: 18rem;">
      <img src="<%=set.getString("logo") %>" class="card-img-top " alt="<%=set.getString("title") %>">
      <div class="card-body">
        <h5 class="card-title"><%=set.getString("title") %></h5>
        <p class="card-text " >Teacher: <%=set.getString("teacher") %>
        <br>
        meet Link: <%=set.getString("jlink") %>
        <br>
        start from: <%=set.getString("startdate") %> 
        <br>
        ( <%=set.getString("time") %>)
        </p>
        <small class="text-muted"><%=set.getString("duration") %> Months</small>
      </div>
      <div class="card-footer d-flex justify-content-between">
        
        <button class="btn btn-outline-success " data-bs-toggle="modal" data-bs-target="#Modal1">Rs <%=set.getString("price") %></button>
        <button class="btn btn-primary fs-4" data-bs-toggle="modal" data-bs-target="#update<%=set.getString("id") %>"><i class="bi bi-pencil-square"></i></button>
        <a class="btn btn-danger fs-4" onclick="return confirm('Are you sure ?')" href="deleteCourse?did=<%=set.getString("id")%>"><i class="bi bi-trash"></i></a>
        <a class="btn btn-dark fs-4" href="courseStudent.jsp?id=<%=set.getString("id")%>"><i class="bi bi-people"></i></a>
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
       
       <div class="col-12 col-md-6 col-lg-4 " Style="margin-top:100px;margin-bottom:100px;">
        
        <div class="card " style="width: 18rem;height: 15rem;">
    
    <div class="card-body">
    <h1 class="position-absolute top-50 start-50 translate-middle" data-bs-toggle="modal" data-bs-target="#addCourse" Style="font-size:100px;" >
    <i class="text-muted bi bi-plus-circle-dotted " ></i>
    <p class="text-muted" Style="font-size:20px;">Add Course</p></h1>
    </div>
    
    </div>
         </div>
       
        </div>
        </center>
    </div>

</body>
</html>