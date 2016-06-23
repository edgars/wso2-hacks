<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
    <link href="../bootstrap/css/bootstrap-responsive.css" rel="stylesheet" media="screen">
   	
   	
   	<!--Modifications to Some Class--><!--Insert After Main CSS-->
   	<link href="../css/basic.css" rel="stylesheet" media="screen">
   	<link rel="shortcut icon" href="../favicon.ico">
  </head>
  <body>
   <jsp:include page="header.html"/>
   <section>
		<div class="container">
		
        
			<div class="row-fluid">
			<s:if test="#session.user != 'emp'">
         <%  response.sendRedirect("login.jsp"); %>
        </s:if>
		<s:set var="user" value="#session.user.toString()" />
		<s:set var="user0" value="#session.user0.toString()" />
		<s:set var="user1" value="#session.user1.toString()" />
		<s:set var="user2" value="#session.user2.toString()" />
			
	 	<ul class="nav nav-pills pull-right">
  <li class="active">
    <s:url id="logout" action="logout" /><s:a href="%{logout}">Logout</s:a>
  </li>
  
  
</ul>
<ul class="nav nav-pills pull-right">
  <li class="active">
   <s:a href="changepw.jsp">Change Password</s:a>
  </li>
  
  
</ul>
<div class="container" style="margin-top: 50px;">
		<div class="span1"></div>
		<div class="span10">
	
	
		
	<div class="alert alert-error">
  <b>Do not Click on any External Links Or your session will be expired
  </b>
</div>
	<div class="alert alert-info">
 Your Last Login was at : <b><s:property value="user2" /> </b>
</div>
<div class="alert alert-success">
 Your Unique Bank ID is: <b><s:property value="user1" /> </b>
</div>
</div>
<div class="span1"></div>
</div>
<h4>Welcome,<s:property value="user0" /> ...!</h4>
				
				
<div class="container">
<div class="span1"></div>
<div class="span10">
<div class="well">
<strong>
<p class="text-center">General Information About Employee Actions</p>
</strong>

<dl class="dl-horizontal">
<p>&nbsp;</p>
  <dt>Deposit Amount</dt>
  <dd>Employee can deposit Amounts in client Account</dd>
  <dd>Employee will need Client Account Id</dd>
  <p>&nbsp;</p>
   <dt>Withdraw Amount</dt>
  <dd>Employee can withdraw Amount from client Account</dd>
   <dd>Employee will need Client Account Id</dd>
   <p>&nbsp;</p>
    <dt>View Transactions</dt>
  <dd>Employee can view Transactions of any client Account</dd>
   <dd>Employee will need Client Account Id</dd>
   <p>&nbsp;</p>
   <dt>Add Clients</dt>
  <dd>Employee can Add any new client Account</dd>
   <dd><b>Employee will need all details of Clients</b></dd>
   <dd><b>Employee will need New Client Account Id</b></dd>
   
   <p>&nbsp;</p>
   <dt>Change Password</dt>
  <dd>Employee can change password of own account  </dd>
   
   
</dl>
</div>
</div>				
<div class="span1"></div>				
</div>
<div class="container" style="margin-top: 30px;">
<div class="span1"></div>
<div class="span2">
    <a href="addtrans.jsp" class="btn btn-primary">
        <i class="icon-pencil icon-white"></i>
        <span><strong>Deposit Amount</strong></span>            
    </a>
</div>
<div class="span2">
	<a href="addwith.jsp" class="btn btn-primary">
        <i class="icon-tasks icon-white"></i>
        <span><strong>Withdrawn Amount</strong></span>        	
    </a>
</div>
<div class="span2">
	<a href="empview.jsp" class="btn btn-primary">
        <i class="icon-eye-open icon-white"></i>
        <span><strong>View Transactions</strong></span>        	
    </a>
</div>
<div class="span2">
    <a href="addclient.jsp" class="btn btn-primary">
        <i class="icon-edit icon-white"></i>
        <span><strong>Add New Clients</strong></span>       
    </a> 	
</div>
<div class="span2">
    <a href="edit_client.jsp" class="btn btn-primary">
    	<i class="icon-user icon-white"></i>
	    <span><strong>Edit Client Details</strong></span>        	
    </a>
</div>
</div>
			</div>



			<jsp:include page="footer.html"/>
		</div>
	</section>
   
   
   
   
   
   
    
    
    
    <script src="../bootstrap/js/jquery.js"></script>
    <script src="../bootstrap/js/bootstrap.js"></script>
    
  </body>
</html>