<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark shadow" >
  <div class="container-fluid">
    <a class="navbar-brand shd" href="#"><i class="bi bi-explicit"></i> Edulab</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link " aria-current="page" href="aDashboard.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link " aria-current="page" href="students.jsp">Students</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link " aria-current="page" href="a_jobs.jsp">jobs</a>
        </li>
        <li class="nav-item">
          <a class="nav-link " data-bs-toggle="modal" data-bs-target="#ucounter" aria-current="page" >Edit counters</a>
          
        </li>
        <li class="nav-item">
          <a class="nav-link " aria-current="page" href="enquiry.jsp">Enquiry</a>
        </li>
        <li class="nav-item">
          <a class="nav-link " data-bs-toggle="modal" data-bs-target="#ch6" aria-current="page" >Change Password</a>
        </li>
        
       
       
      </ul>
      <div class="d-flex">
      <form action="logout" method="get">
        <button type="submit" class="btn text-white" >
        <i class="bi bi-box-arrow-in-left"></i> Logout
        </button>
        </form>
        </div>
         </div>
  </div>
</nav>



<div class="modal fade " id="ucounter" tabindex="-1" aria-labelledby="ModalLab" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" >
  
    <div class="modal-content"  >
    <div class="modal-header bg-dark text-white">
         <h5 class="modal-title" id="ModalLab">Counters</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
    <div class="container">
        
        <form action="uCounter" method="post" >
      <div class="modal-body m-2">
  
        <label for="courses" class="form-label">Courses</label>
        <input type="number" class="form-control" id="courses" name="courses">
        <label for="members" class="form-label">Registered Members</label>
        <input type="number" class="form-control" id="members" name="members">
        <label for="trained" class="form-label">Students Trained</label>
        <input type="number" class="form-control" id="trained" name="trained">
        <label for="clients" class="form-label">Clients</label>
        <input type="number" class="form-control" id="clients" name="clients">
  
  <br>
    <button type="submit" class="btn btn-primary">Submit</button>
  
    
      </div>
      </form>
     
    </div>
</div>
      
       
    </div>
  </div>
<%@include file="aprofile.jsp" %>
</body>
</html>