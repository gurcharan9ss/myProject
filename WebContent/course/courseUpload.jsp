<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>

<div class="modal fade " id="addCourse" tabindex="-1" aria-labelledby="ModalLabel4" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" >
  
    <div class="modal-content"  >
    <div class="modal-header bg-dark text-white">
         <h5 class="modal-title" id="ModalLabel4">Add Course</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
    <div class="container">
        
        <form action="uploadCourse" method="post" enctype="multipart/form-data" >
      <div class="modal-body m-2">
  <div class="row">
        <div class="col-md-6">
         <label for="title" class="form-label">title</label>
         <input type="text" class="form-control" id="title" name="title">
        </div>
        <div class="col-md-6">
        <label for="duration" class="form-label">duration</label>
        <input type="number" class="form-control" id="duration" name="duration">
        </div>
        <div class="col-xs-12">
        <label for="content" class="form-label">content</label>
  	    <input type="textarea" class="form-control" id="content" name="content">
        </div>
        
        <div class="col-md-6">
        <label for="ufile" class="form-label">file</label>
    	<input type="file" class="form-control" id="ufile" name="ufile">
        </div>
        <div class="col-md-6">
        <label for="teacher" class="form-label">Teacher Name</label>
    	<input type="text" class="form-control" id="teacher" name="teacher">
        </div>
        <div class="col-md-6">
        <label for="jlink" class="form-label">Meet Link</label>
    	<input type="text" class="form-control" id="jlink" name="jlink">
        </div>
        <div class="col-md-6">
        <label for="price" class="form-label">Price(Rs)</label>
    	<input type="text" class="form-control" id="price" name="price">
        </div>
        <div class="col-md-6">
        <label for="date" class="form-label">Starting Date</label>
    	<input type="date" class="form-control" id="date" name="date">
        </div>
        <div class="col-md-6">
        <label for="time" class="form-label">Time</label>
    	<input type="text" class="form-control" id="time" name="time">
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