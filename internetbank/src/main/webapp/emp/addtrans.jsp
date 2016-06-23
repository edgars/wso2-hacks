<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="../bootstrap/css/bootstrap.css" rel="stylesheet"
	media="screen">
<link href="../bootstrap/css/bootstrap-responsive.css" rel="stylesheet"
	media="screen">


<!--Modifications to Some Class-->
<!--Insert After Main CSS-->
<link href="../css/basic.css" rel="stylesheet" media="screen">
<link rel="shortcut icon" href="../favicon.ico">
</head>
<body>
	<jsp:include page="../header.html" />
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
<div class="alert alert-info">
  <b>After Deposit Amount successfully,You will be redirected to Home page
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
	
					
					<s:if test="hasActionMessages()">
					<div class="alert alert-info">
					<s:actionmessage/>
					</div>
					<meta http-equiv="refresh" content="4; url=welcome.jsp" /> 
					</s:if>
					</div>
					<div class="span2"></div>
					</div>
<div class="span1"></div>
<div class="span10">
<div class="well">


<form class="form-horizontal" action="deposit" method="post" >
<fieldset>

<!-- Form Name -->
<h4>Deposit Amount To Client Account</h4>

<!-- Text input-->
<div class="control-group">
  <label class="control-label">Client Id</label>
  <div class="controls">
    <input id="clientID" name="depo.clid" type="text" placeholder="Bank_Client_ID" class="input-xlarge">
    <p class="help-block"></p>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label">Details</label>
  <div class="controls">
    <input id="" name="depo.details" type="text" placeholder="Cheque/Cash Details" class="input-xlarge">
    <p class="help-block"></p>
  </div>
</div>



<!-- Appended Input-->
<div class="control-group">
  <label class="control-label">Amount</label>
  <div class="controls">
    <div class="input-append">
      <input id="appendedtext" name="depo.amount" class="span2" placeholder="" type="text" size="100">
      <span class="add-on">Rs</span>
    </div>
    <p class="help-block"></p>
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

</div>
<div class="span1"></div>
</div>





			</div>



			<jsp:include page="../footer.html" />
		</div>
	</section>









	<script src="../bootstrap/js/jquery.js"></script>
	<script src="../bootstrap/js/bootstrap.js"></script>

</body>
</html>