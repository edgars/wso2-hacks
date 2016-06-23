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
   <jsp:include page="../header.html"/>
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
    <a href="welcome.jsp">Home</a>
  </li>
  
</ul>

<div class="container" style="margin-top: 50px;">

		<div class="span1"></div>
		<div class="span10">
	
	
		
<div class="alert alert-error">
  <b>Do not Click on any External Links Or your session will be expired
  </b>
</div>
	
<div class="alert alert-success">
 Your Unique Employee Bank ID is: <b><s:property value="user1" /> </b>
</div>
</div>
<div class="span1"></div>
</div>
<h4>Welcome,<s:property value="user0" /> ...!</h4>

<div class="container" style="margin-top: 50px;">
<div class="container">
				<div class="span2"></div>
				<div class="span8">
				
					<div class="alert alert-info">
					Bank Client Id is: <s:property value="views.getClid()"   />
					</div>
					<div class="alert alert-info">
					Client Current Balance is: <s:property value="views.getNamount()"   />
					</div>
					 
					
					</div>
					<div class="span2"></div>
					</div>
<div class="span1"></div>
<div class="span10">
<div class="well">
	
<h4  class ="text-center" style="color: red;"> All Transactions Details of Account:<s:property value="views.getClid()"   /></h4>
	
				<table class="table table-striped table-bordered">
					<tr>
						
						<th>M Details</th>
						<th>Balance</th>
						<th>Withdrawn</th>
						<th>Deposit</th>
						<th>Date</th>

					</tr>
					
					<s:iterator value="detailList" var="view">
						<tr>
							
							<td><s:property value="details" /></td>
							<td><s:property value="amount" /></td>
							<td><s:property value="withdrawn" /></td>
							<td><s:property value="deposit" /></td>
							<td><s:property value="created" /></td>


						</tr>
					</s:iterator>
				</table>

</div>

</div>
<div class="span1"></div>
</div>

			</div>



			<jsp:include page="../footer.html"/>
		</div>
	</section>
   
   
   
   
   
   
    
    
    
    <script src="../bootstrap/js/jquery.js"></script>
    <script src="../bootstrap/js/bootstrap.js"></script>
    
  </body>
</html>