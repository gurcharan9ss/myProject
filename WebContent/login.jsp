<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div class="modal fade " id="Modal1" tabindex="-1" aria-labelledby="ModalLabel1" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" >
  
    <div class="modal-content"  >
    <div class="modal-header bg-dark text-white">
         <h5 class="modal-title" id="ModalLabel1">Student Login</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
    <div class="container">
    <div class="row">
        <div class="col-sm-6">
        
                        <figure><img class="img-fluid" src="assets/login.jpg" alt="Login image"></figure>
                        
                    
        </div>
        
        
        <div class="col-sm-6 ">
        
        <form action="userVal" method="post">
      <div class="modal-body m-2">
  
    <label for="email" class="form-label">Email</label>
    <input type="email" class="form-control" id="email" name="email">

    <label for="pass" class="form-label">Password</label>
    <input type="password" class="form-control" id="pass" name="pass">
  
  	<hr>

    <button type="submit" class="btn btn-primary">Login</button>
    <br>
    <a style="color:blue;" data-bs-toggle="modal" data-bs-target="#Modal3">
        Create new Account
        </a>
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