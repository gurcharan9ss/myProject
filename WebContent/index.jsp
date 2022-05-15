<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edulab</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="assets/main.css">
<link rel="icon" type="image/png" sizes="32x32" href="assets/favicon/favicon-32x32.png">

</head>
<body class="bg-light text-dark" >

<%@include file="nav1.jsp" %>
<div data-bs-spy="scroll" data-bs-target="#scroll1" data-bs-offset="0" class="scrollspy-example" tabindex="0">

<section id="home">
<%@include file="carousel.jsp" %>
<%@include file="counter.jsp" %>
</section>
<section id="courses">
<%@include file="course/courses.jsp" %>
</section>
<section id="aboutus">
<%@include file="aboutus.jsp" %>
</section>
<section id="placement">
<%@include file="hire.jsp" %>

<%@include file="social.jsp" %>
</section>
</div>
</body>
</html>