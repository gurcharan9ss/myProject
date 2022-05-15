<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<nav id="scroll1" class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark shadow" >
  <div class="container-fluid">
    <a class="navbar-brand shd" href="#"><i class="bi bi-explicit"></i> Edulab</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link " aria-current="page" href="index.jsp#home">Home</a>
        </li>
        
      
        <li class="nav-item">
          <a class="nav-link " aria-current="page" href="index.jsp#courses">Courses</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link " aria-current="page" href="index.jsp#aboutus">About us</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link " aria-current="page" href="index.jsp#placement">Placement</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link " aria-current="page" href="#">Events</a>
        </li>
        <li class="nav-item">
          <a class="nav-link " aria-current="page" href="contactUs.jsp">Contact us</a>
        </li>
       
       
      </ul>
      <div class="d-flex">
        <button type="button" class="btn text-white" data-bs-toggle="modal" data-bs-target="#Modal1">
        <i class="bi bi-box-arrow-in-right"></i> LogIn
        </button>
        <button type="button" class="btn text-white" data-bs-toggle="modal" data-bs-target="#Modal2">
          Admin
        </button>
        
        
      </div>
    </div>
  </div>
</nav>

<%@include file="login.jsp" %>
<%@include file="register.jsp" %>

<div class="modal fade " id="Modal2" tabindex="-1" aria-labelledby="ModalLabel2" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" >
  
    <div class="modal-content"  >
    <div class="modal-header bg-dark text-white">
         <h5 class="modal-title" id="ModalLabel2">Admin Login</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
    <div class="container">
    <div class="row">
        <div class="col-sm-6">
        
                        <figure><img class="img-fluid" src="assets/login.jpg" alt="Login image"></figure>
                        
                    
        </div>
        
        
        <div class="col-sm-6">
        
        <form action="adminVal" method="post" >
      <div class="modal-body m-2">
  
    <label for="email" class="form-label">Email</label>
    <input type="email" class="form-control" id="email" name="email">

    <label for="pass" class="form-label">Password</label>
    <input type="password" class="form-control" id="pass" name="pass">
  
  	<hr>

    <button type="submit" class="btn btn-primary">Login</button>
   
    <br>
    <a href="Forgot.html" style="color:red;">Forgot Password</a>

      </div>
      </form>
      </div>
    </div>
</div>
      
       
    </div>
  </div>
</div>

</body>
</html>