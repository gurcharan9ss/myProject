<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


</head>
<body>

<div class="modal fade " id="Modal3" tabindex="-1" aria-labelledby="ModalLabel3" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" >
  
    <div class="modal-content"  >
    <div class="modal-header bg-dark text-white">
         <h5 class="modal-title" id="ModalLabel3">Register</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
    <div class="container">
        
        <form action="userInsert" method="post" >
      <div class="modal-body m-2">
  <div class="row">
        <div class="col-md-6">
        <label for="fname" class="form-label">First Name</label>
        <input type="text" class="form-control" id="fname" name="fname">
        </div>
        <div class="col-md-6">
        <label for="lname" class="form-label">Last Name</label>
        <input type="text" class="form-control" id="lname" name="lname">
        </div>
        <div class="col-xs-12">
        <label for="email" class="form-label">Email</label>
        <input type="email" class="form-control" id="email" name="email">
        </div>
        
        <div class="col-md-6">
        <label class="form-label">Gender</label>
        <div class="form-check">
  <input class="form-check-input" type="radio" name="gender" id="gender1" value="Male">
  
  <label class="form-check-label" for="gender1">
    Male
  </label>
</div>
<div class="form-check">

  <input class="form-check-input" type="radio" name="gender" id="gender2" value="Female">
  <label class="form-check-label" for="gender2">
    Female
  </label>
</div>
        </div>
        <div class="col-md-6">
        <label for="contact_no" class="form-label">Contact No.</label>
        <input type="number" class="form-control" id="contact_no" name="contact_no">
        </div>
        <div class="col-md-6">
        <label for="pass" class="form-label">Create Password</label>
        <input type="password" class="form-control" id="pass" name="pass">
        </div>
        <div class="col-md-6">
        <label for="cpass" class="form-label">Confirm Password</label>
        <input type="text" class="form-control" id="cpass" name="cpass">
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



</body>
</html>