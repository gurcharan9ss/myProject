<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="assets/main.css">
<link rel="icon" type="image/png" sizes="32x32" href="assets/favicon/favicon-32x32.png">
</head>
<body>
<%@include file="nav1.jsp" %>

<div style="background-image:url('assets/contact.jpg'); background-size:cover; min-height: 710px;">
<div class="container" style="padding-top: 4%">
<center>


<div class="card" style="margin-top: 4%;background-color: rgba(3, 3, 3, 0.5);">

<h2 class="hedr shd1 text-white">Contact Us</h2>
<div class="card-body">
    <div class="row">
        <div class="col-md-6" style="padding:30px">
        <div class="map-responsive">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3432.645821477358!2d76.39813921512936!3d30.643937781668228!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39101c300f42c193%3A0xd019938480d0863a!2sBaba%20Banda%20Singh%20Bahadur%20Engineering%20College!5e0!3m2!1sen!2sin!4v1652376348232!5m2!1sen!2sin" style="border:0;width:100%;min-height: 400px; " loading="lazy" ></iframe>
       
        </div>
        </div>
        <div class="col-md-6" style="padding:60px">
        <form action="contact" method="post" >
        
        <input type="text" class="form-control" id="name" name="name" placeholder="Name">
        <br>
        
        <input type="email" class="form-control" id="email" name="email" placeholder="Email">
        
        <br>
        <textarea class="form-control" rows="3" cols="3" name="message" placeholder="Message"></textarea>
        <hr>
        <button type="submit" class="btn btn-primary w-100">Submit</button>
        </form>
        
        </div>
        </div>
        </div>
    </div>
    
    
</center>    
</div>
</div>

<script>
function myMap() {
var mapProp= {
  center:new google.maps.LatLng(51.508742,-0.120850),
  zoom:5,
};
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY&callback=myMap"></script>

</body>
</html>