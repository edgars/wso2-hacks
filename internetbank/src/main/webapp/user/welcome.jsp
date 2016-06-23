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
			
		<s:if test="#session.user != 'client'">
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
<p class="text-center">General Information About Client Actions</p>
</strong>

<dl class="dl-horizontal">
  <dt>View Transactions</dt>
  <dd>Client can view own accounts Transactions</dd>
   <dt>Change Password</dt>
  <dd>Client can Change Own account Password</dd>
</dl>
</div>
</div>				
<div class="span1"></div>				
</div>

<div class="container" style="margin-top: 50px;">
<div class="span4"></div>
<div class="span2">

	<a href="viewcl" class="btn btn-primary">
        <i class="icon-eye-open icon-white"></i>
        <span><strong>View Transactions</strong></span>        	
    </a>

</div>
<div class="span2">

	<a href="changepw.jsp" class="btn btn-primary">
        <i class="icon-user icon-white"></i>
        <span><strong>Change Password</strong></span>        	
    </a>

</div>

<div class="span4"></div>
</div>


			</div>



			<jsp:include page="footer.html"/>
		</div>
	</section>
   
   
   
   
   
   
    
    
    
    <script src="../bootstrap/js/jquery.js"></script>
    <script src="../bootstrap/js/bootstrap.js"></script>
    
  </body>
</html>