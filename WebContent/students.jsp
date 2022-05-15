<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
     <%@ page import="com.demo.connection.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Students</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="assets/main.css">
<link rel="icon" type="image/png" sizes="32x32" href="assets/favicon/favicon-32x32.png">
</head>
<body>
<%@include file="nav3.jsp" %>
<div style="margin-top: 4%">
<%

String sql="SELECT * from student";
String sql1="SELECT * from st_paid where confirm=?";



getConn gc=new getConn();

try
{

	gc.ps=getConn.getMysqlConn().prepareStatement(sql);
	gc.set=gc.ps.executeQuery();
	
	gc.ps1=getConn.getMysqlConn().prepareStatement(sql1);
	gc.ps1.setString(1,"");
	gc.set1=gc.ps1.executeQuery();
	
	gc.ps2=getConn.getMysqlConn().prepareStatement(sql1);
	gc.ps2.setString(1,"yes");
	gc.set2=gc.ps2.executeQuery();
	
	gc.ps3=getConn.getMysqlConn().prepareStatement(sql1);
	gc.ps3.setString(1,"no");
	gc.set3=gc.ps3.executeQuery();
	
%>

<div class="container">
<h2>students</h2>
<div class="accordion" id="accordionExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
        All Students
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        
        
        <div class="table-responsive">
        <table class="table">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Courses</th>
      <th scope="col">Contact no.</th>
      <th scope="col">Gender</th>
      <th scope="col">Update</th>
      <th scope="col">Delete</th>
      
      
    </tr>
  </thead>
  <tbody>
  <%
  while(gc.set.next()){
  %>
    <tr>
      <td><%=gc.set.getString("fname") %> <%=gc.set.getString("lname") %></td>
      <td><%=gc.set.getString("email") %></td>
      <td></td>
      <td><%=gc.set.getString("contact_no") %></td>
      <td><%=gc.set.getString("gender") %></td>
      <td><a class="btn btn-sm btn-primary" href="#">UPDATE</a></td>
      <td><a class="btn btn-sm btn-danger" onclick="return confirm('Are you sure ?')" href="deleteStudent?did=<%=gc.set.getString("id")%>">DELETE</a></td>
    </tr>
    <%
  }
    %>
  </tbody>
</table>
        </div>
        
        
        
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        Unconfirmed Students
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
      <div class="accordion-body">

<div class="table-responsive">
        <table class="table">
  <thead>
    <tr>
      <th scope="col">Email</th>
      <th scope="col">Course ID</th>
      <th scope="col">Transaction ID</th>
      <th scope="col">Amount</th>
      <th scope="col">Date</th>
      <th scope="col">Confirm</th>
      <th scope="col">Reject</th>
      <th scope="col">Delete</th>
      
      
    </tr>
  </thead>
  <tbody>
  <%
  while(gc.set1.next()){
  %>
    <tr>
      <td><%=gc.set1.getString("email") %></td>
      <td><%=gc.set1.getString("cid") %></td>
      <td><%=gc.set1.getString("tid") %></td>
      <td><%=gc.set1.getString("amount") %></td>
      <td><%=gc.set1.getString("pdate") %></td>
      <td><a class="btn btn-sm btn-primary" href="confirm?cid=<%=gc.set1.getString("id")%>">CONFIRM</a></td>
      <td><a class="btn btn-sm btn-danger" href="reject?cid=<%=gc.set1.getString("id")%>">REJECT</a></td>
      <td><a class="btn btn-sm btn-danger" onclick="return confirm('Are you sure ?')" href="deleteConfirm?did=<%=gc.set1.getString("id")%>">DELETE</a></td>
    </tr>
    <%
  }
    %>
  </tbody>
</table>
        </div>


      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        Confirmed Students
      </button>
    </h2>
    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
      <div class="accordion-body">


<div class="table-responsive">
        <table class="table">
  <thead>
    <tr>
      <th scope="col">Email</th>
      <th scope="col">Course ID</th>
      <th scope="col">Transaction ID</th>
      <th scope="col">Amount</th>
      <th scope="col">Date</th>
      <th scope="col">Unconfirm</th>
      <th scope="col">Reject</th>
      <th scope="col">Delete</th>
      
      
    </tr>
  </thead>
  <tbody>
  <%
  while(gc.set2.next()){
  %>
    <tr>
      <td><%=gc.set2.getString("email") %></td>
      <td><%=gc.set2.getString("cid") %></td>
      <td><%=gc.set2.getString("tid") %></td>
      <td><%=gc.set2.getString("amount") %></td>
      <td><%=gc.set2.getString("pdate") %></td>
      <td><a class="btn btn-sm btn-primary" href="unconfirm?cid=<%=gc.set2.getString("id")%>">UNCONFIRM</a></td>
      <td><a class="btn btn-sm btn-danger" href="reject?cid=<%=gc.set2.getString("id")%>">REJECT</a></td>
      <td><a class="btn btn-sm btn-danger" onclick="return confirm('Are you sure ?')" href="deleteConfirm?did=<%=gc.set2.getString("id")%>">DELETE</a></td>
    </tr>
    <%
  }
    %>
  </tbody>
</table>
        </div>
        

      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingfour">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapsefour" aria-expanded="false" aria-controls="collapsefour">
        Rejected Students
      </button>
    </h2>
    <div id="collapsefour" class="accordion-collapse collapse" aria-labelledby="headingfour" data-bs-parent="#accordionExample">
      <div class="accordion-body">



<div class="table-responsive">
        <table class="table">
  <thead>
    <tr>
      <th scope="col">Email</th>
      <th scope="col">Course ID</th>
      <th scope="col">Transaction ID</th>
      <th scope="col">Amount</th>
      <th scope="col">Date</th>
      <th scope="col">Unconfirm</th>
      <th scope="col">Confirm</th>
      <th scope="col">Delete</th>
      
      
    </tr>
  </thead>
  <tbody>
  <%
  while(gc.set3.next()){
  %>
    <tr>
      <td><%=gc.set3.getString("email") %></td>
      <td><%=gc.set3.getString("cid") %></td>
      <td><%=gc.set3.getString("tid") %></td>
      <td><%=gc.set3.getString("amount") %></td>
      <td><%=gc.set3.getString("pdate") %></td>
      <td><a class="btn btn-sm btn-primary" href="unconfirm?cid=<%=gc.set3.getString("id")%>">UNCONFIRM</a></td>
      <td><a class="btn btn-sm btn-primary" href="confirm?cid=<%=gc.set3.getString("id")%>">CONFIRM</a></td>
      <td><a class="btn btn-sm btn-danger" onclick="return confirm('Are you sure ?')" href="deleteConfirm?did=<%=gc.set3.getString("id")%>">DELETE</a></td>
    </tr>
    <%
  }
    %>
  </tbody>
  
</table>
        </div>
        
        

      </div>
    </div>
  </div>
</div>

</div>

 <%
    
}
catch (Exception e) {
	
	e.printStackTrace();
}

       %> 
</div>
</body>
</html>