<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>

<%
try
{

	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","root");
	PreparedStatement ps =con.prepareStatement("SELECT * from courses");
	ResultSet set=ps.executeQuery();
    while(set.next()){
    	

%>
<div class="modal fade " id="update<%=set.getString("id") %>" tabindex="-1" aria-labelledby="Modalu<%=set.getString("id") %>" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" >
  
    <div class="modal-content"  >
    <div class="modal-header bg-dark text-white">
         <h5 class="modal-title" id="Modalu<%=set.getString("id") %>">Update Course</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
    <div class="container">
        
        <form action="updateCourse" method="post" >
      <div class="modal-body m-2">
  <div class="row">
  <input type="hidden"  name="idd" value="<%=set.getString("id") %>">
        <div class="col-md-6">
        
         <label for="title" class="form-label">title</label>
         <input type="text" class="form-control" id="title" name="title" value="<%=set.getString("title") %>">
        </div>
        <div class="col-md-6">
        <label for="duration" class="form-label">duration</label>
        <input type="number" class="form-control" id="duration" name="duration" value="<%=set.getString("duration") %>">
        </div>
        <div class="col-xs-12">
        <label for="content" class="form-label">content</label>
  	    <input type="textarea" class="form-control" id="content" name="content" value="<%=set.getString("content") %>">
        </div>
        <div class="col-md-6">
        <label for="teacher" class="form-label">Teacher Name</label>
    	<input type="text" class="form-control" id="teacher" name="teacher" value="<%=set.getString("teacher") %>">
        </div>
        
        
        <div class="col-md-6">
        <label for="jlink" class="form-label">Meet Link</label>
    	<input type="text" class="form-control" id="jlink" name="jlink" value="<%=set.getString("jlink") %>">
        </div>
        
        <div class="col-md-6">
        <label for="price" class="form-label">Price(Rs)</label>
    	<input type="text" class="form-control" id="price" name="price" value="<%=set.getString("price") %>">
        </div>
        
        <div class="col-md-6">
        <label for="date" class="form-label">Starting Date</label>
    	<input type="date" class="form-control" id="date" name="date" value="<%=set.getString("startdate") %>">
        </div>
        
        <div class="col-md-6">
        <label for="time" class="form-label">Time</label>
    	<input type="text" class="form-control" id="time" name="time" value="<%=set.getString("time") %>">
        </div>
        
        <div class="col-md-6">
        <label for="drive" class="form-label">Drive</label>
    	<input type="text" class="form-control" id="drive" name="drive" value="<%=set.getString("drive") %>">
        </div>
    </div>
  <br>
    <button type="submit" class="btn btn-primary">Submit</button>
  
    
      </div>
      </form>
     
    </div>
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