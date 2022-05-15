<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<div class="container mt-2">
<center>
<h2 class="hedr shd1">CORPORATE SECTION</h2>
    <div class="row">
    
        <div class="col-md-6" style="margin-top: 10px;padding:10px;">
        <img class="img-fluid" style="max-height:400px" alt="about us" src="assets/contactus.png">
        </div>
        <div class="col-md-6 " style="padding: 13%;background-image: url(assets/hire.png);background-size: cover;background-position: center">
        <button type="button" class="btn btn-outline-dark " data-bs-toggle="modal" data-bs-target="#Modal5">
          <h2>Hire From Us</h2>
        </button>
        </div>
    </div>
    </center>
</div>


<div class="modal fade " id="Modal5" tabindex="-1" aria-labelledby="ModalLabel5" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" >
  
    <div class="modal-content"  >
    <div class="modal-header bg-dark text-white">
         <h5 class="modal-title" id="ModalLabel5">Hire From Us</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
    <div class="container">
           
     
        
        <form action="insertHire" method="post" >
      <div class="modal-body m-2">
  
  <label for="company" class="form-label">Company Name</label>
    <input type="text" class="form-control" id="company" name="company">
  
    <label for="email" class="form-label">Email</label>
    <input type="email" class="form-control" id="email" name="email">

    <label for="mobile" class="form-label">Contact no.</label>
    <input type="text" class="form-control" id="mobile" name="mobile">
  
  <label for="position" class="form-label">Position(Hiring position) </label>
    <input type="text" class="form-control" id="position" name="position">
  	<hr>

    <button type="submit" class="btn btn-primary">Submit</button>
   
   
      </div>
      </form>
      
</div>
      
       
    </div>
  </div>
</div>
</body>
</html>