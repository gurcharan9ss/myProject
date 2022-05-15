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
<div class="container mt-2">
<center><h2 class="hedr shd1" style="margin-top: 4%">Courses</h2>
    <div class="row " style="overflow-y: scroll; max-height:1200px;">
    <%
try
{
	String email=(String)session.getAttribute("email");



	String sql1="SELECT * from courses";

	getConn gc=new getConn();

	gc.ps=getConn.getMysqlConn().prepareStatement(sql1);
	gc.set=gc.ps.executeQuery();
	
	 
    while(gc.set.next()){
    	

%>
        <div class="col-12 col-md-6 col-lg-4 mt-2">
        
        <div class="card " style="width: 18rem;">
      <img src="<%=gc.set.getString("logo") %>" class="card-img-top " alt="<%=gc.set.getString("title") %>">
      <div class="card-body">
        <h5 class="card-title"><%=gc.set.getString("title") %></h5>
        <p class="card-text overflow-auto " style="height: 5rem; text-align: justify" ><%=gc.set.getString("content") %></p>
      </div>
      <div class="card-footer d-flex justify-content-between">
        <small class="text-muted"><%=gc.set.getString("duration") %> Months</small>
        <button class="btn btn-outline-success " data-bs-toggle="modal" data-bs-target="#course<%=gc.set.getString("id") %>">Rs <%=gc.set.getString("price") %></button>
      </div>
    </div>
        
        </div>
        
        <div class="modal fade " id="course<%=gc.set.getString("id") %>" tabindex="-1" aria-labelledby="Modal<%=gc.set.getString("id") %>" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" >
  
    <div class="modal-content"  >
    <div class="modal-header bg-dark text-white">
         <h5 class="modal-title" id="Modal<%=gc.set.getString("id") %>"><%=gc.set.getString("title") %></h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
    <div class="container">
        
        
      <div class="modal-body m-2">
  <div class="row">
        <div class="col-xs-12">
         <p style=" text-align: justify" ><%=gc.set.getString("content") %>
         <br>
         start from: <%=gc.set.getString("startdate") %> 
        ( <%=gc.set.getString("time") %>)
         </p>
         
         <p class="text-muted"><%=gc.set.getString("duration") %> Months</p>
         
         
         <p>Price(Rs): <%=gc.set.getString("price") %></p>
         
                 </div>
    </div>
  <br>
    <button class="btn btn-primary" data-bs-dismiss="modal" data-bs-toggle="modal"  data-bs-target="#pay<%=gc.set.getString("id") %> " >Enroll</button>
  
    
      </div>
      
     
    </div>
</div>
      
       
    </div>
  </div>
  
  
  
  
  <!--  payment modal   -->
    
    <div class="modal fade " id="pay<%=gc.set.getString("id") %>" tabindex="-1" aria-labelledby="payl<%=gc.set.getString("id") %>" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" >
  
    <div class="modal-content"  >
    <div class="modal-header bg-dark text-white">
         <h5 class="modal-title" id="payl<%=gc.set.getString("id") %>">Payment</h5>
         
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
    <div class="container">
    <div class="row">
        <div class="col-sm-6">
        <br>
        <h6>Scan and Pay UPI>></h6>
                        <figure><img class="img-fluid" src="assets/payment.png" alt="QR code"></figure>
                        
                    
        </div>
        
        
        <div class="col-sm-6 ">
        
        <form action="userPay" method="post">
      <div class="modal-body m-2">
  
    <input type="hidden"  name="email" value="<%=email%>">
    
    <input type="hidden"  name="cid" value="<%=gc.set.getString("id") %>">

    <label for="tid" class="form-label">Transaction ID</label>
    <input type="text" class="form-control" id="tid" name="tid" required>
    
    <label for="amount" class="form-label">Amount(Rs)</label>
    <input type="text" class="form-control" id="amount" name="amount" value="<%=gc.set.getString("price") %>" readonly>
  
    <label for="pdate" class="form-label">Payment Date</label>
    <input type="date" class="form-control" id="pdate" name="pdate" required>
  	<hr>

    <button type="submit" class="btn btn-primary">Done</button>
    <br>

      </div>
      </form>
      </div>
    </div>
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
       
       
        </div>
        </center>
    </div>
    

</body>
</html>