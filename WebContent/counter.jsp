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
	PreparedStatement ps =con.prepareStatement("SELECT * from counters");
	ResultSet set=ps.executeQuery();
    while(set.next()){
    	

%>


<div class="container " style="margin-bottom: 20px; margin-top: 20px;">
<center>
    <div class="row text-white">

    
        <div class="col-12 col-md-6 col-xl-3 mt-1">
        <div class="card bg-primary" style="width: 15rem;height:10rem">
  
  <div class="card-body">
  <i class="bi bi-easel fs-4"></i>
  <h2 class="counter"><%=set.getString("courses") %></h2>
    <p class="card-text fs-5">
    Courses
    </p>
  </div>
</div>
        </div>
        <div class="col-12 col-md-6 col-xl-3 mt-1 ">
        <div class="card bg-primary " style="width: 15rem;height:10rem">
  
  <div class="card-body">
  <i class="bi bi-people fs-4"></i>
  <h2 class="counter"><%=set.getString("members") %></h2>
    <p class="card-text fs-5">
    Registered Members
    </p>
  </div>
</div>
        </div>
        <div class="col-12 col-md-6 col-xl-3 mt-1">
        <div class="card bg-primary" style="width: 15rem;height:10rem">
  
  <div class="card-body">
  <i class="bi bi-mortarboard fs-4"></i>
  <h2 class="counter"><%=set.getString("trained") %></h2>
    <p class="card-text fs-5">
    Students Trained
    </p>
  </div>
</div>
        </div>
        <div class="col-12 col-md-6 col-xl-3 mt-1">
        <div class="card bg-primary" style="width: 15rem;height:10rem">
  
  <div class="card-body">
  <i class="bi bi-person fs-4"></i>
  <h2 class="counter"><%=set.getString("clients") %></h2>
    <p class="card-text fs-5">
    Clients
    </p>
  </div>
</div>
        </div>
    </div>
    </center>
</div>
<%
    }
}
catch (Exception e) {
	
	e.printStackTrace();
}

       %> 
<script>
$(document).ready(function() {

    $('.counter').each(function () {
$(this).prop('Counter',0).animate({
    Counter: $(this).text()
}, {
    duration: 4000,
    easing: 'swing',
    step: function (now) {
        $(this).text(Math.ceil(now));
    }
});
});

});
</script>
</body>
</html>

