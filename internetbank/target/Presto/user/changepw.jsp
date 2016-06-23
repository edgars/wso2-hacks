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
   	<link href="../css/login.css" rel="stylesheet" media="screen">
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
		<s:set var="balance" value="abc.getNamount()" />
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
<div class="alert alert-info">
  <b>After changing the password successfully your account will be logout
  </b>
</div>

<div class="alert alert-success">
 Your Unique Bank ID is: <b><s:property value="user1" /> </b>
</div>
</div>
<div class="span1"></div>
</div>	

				<div class="container" style="margin-top: 75px;">
				<div class="container">
				<div class="span2"></div>
				<div class="span8">
	<s:if test="hasActionErrors()">
						<div class= "alert alert-error">
							<s:actionerror />
							 
						</div>
						<meta http-equiv="refresh" content="4; url=changepw.jsp" />
					</s:if>
					
					<s:if test="hasActionMessages()">
					<div class="alert alert-info">
					<s:actionmessage/>
					</div>
					<meta http-equiv="refresh" content="4; url=logout.action" />
					</s:if>
					</div>
					<div class="span2"></div>
					</div>
				<div class="span3"></div>
<div class=sapn8>

<form class="form-horizontal" action="changepw" method="post">
<fieldset>

<!-- Form Name -->
<h4>Client Change Password</h4>

<!-- Text input-->
<div class="control-group">
  <label class="control-label">Old Password</label>
  <div class="controls">
    <input id="textinput" name="chpw.oldpw" type="password" placeholder="Enter Old Password" class="input-xlarge">
   
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label">New Password</label>
  <div class="controls">
    <input id="textinput" name="chpw.newpw" type="password" placeholder="Enter New Password" class="input-xlarge">
   
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label">Confirm Password</label>
  <div class="controls">
    <input id="textinput" name="chpw.cnewpw" type="password" placeholder="Enter Again New Password" class="input-xlarge">
   
  </div>
</div>

<!-- Button -->
<div class="control-group">
  <label class="control-label"></label>
  <div class="controls">
    <button id="submit" name="submit" class="btn btn-primary">Submit</button>
  </div>
</div>

</fieldset>
</form>
</div>
<div class=span1></div>
				</div>



			</div>



			<jsp:include page="footer.html"/>
		</div>
	</section>
   
   
   
   
   
   
    
    
    
    <script src="../bootstrap/js/jquery.js"></script>
    <script src="../bootstrap/js/bootstrap.js"></script>
    
  </body>
</html>