<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
          <a class="nav-link " aria-current="page" href="sDashboard.jsp">Dashboard</a>
        </li>
     
        
       
       
       <li class="nav-item">
          <a class="nav-link " aria-current="page" href="s_Jobs.jsp">Jobs</a>
        </li> 
        
        <li class="nav-item">
          <a class="nav-link " aria-current="page" href="profile.jsp">Profile</a>
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
</body>
</html>