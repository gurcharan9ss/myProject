<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
     <%@ page import="com.demo.connection.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

<%
try
{
	

	String email=(String)session.getAttribute("email");


	String sql="SELECT * from admin where email=?";
	
	getConn gc=new getConn();

	gc.ps=getConn.getMysqlConn().prepareStatement(sql);
	gc.ps.setString(1, email);
	gc.set=gc.ps.executeQuery();
	

	while(gc.set.next()){
		
%>
<div class="modal fade " id="ch6" tabindex="-1" aria-labelledby="ModalLabel6" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" >
  
    <div class="modal-content"  >
    <div class="modal-header bg-dark text-white">
         <h5 class="modal-title" id="ModalLabel6">Hire From Us</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
    <div class="container">
           
     
        
        <form action="updateAdmin" method="post" >
      <div class="modal-body m-2">
  
  
    <label for="email" class="form-label">Email</label>
    <input type="email" class="form-control" id="email" name="email" value="<%=gc.set.getString("email")%>" required>
<input type="hidden" class="form-control"  name="id" value="<%=gc.set.getString("id")%>" >
    <label for="pass" class="form-label">old Password</label>
    <input type="password" class="form-control" id="pass" name="pass" required>
  
  <label for="npass" class="form-label">New Password</label>
    <input type="password" class="form-control" id="npass" name="npass" required>
  	<hr>

    <button type="submit" class="btn btn-primary">Submit</button>
   
   
      </div>
      </form>
      
</div>
      
       
    </div>
  </div>
</div>
<%
	}   
}
catch (Exception e) {
	
	e.printStackTrace();
}

       %>

</body>
</html>