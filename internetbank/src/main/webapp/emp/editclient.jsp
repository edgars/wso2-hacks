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
  <b>After adding general info of Clients, Employee need to add new Client Username Password  
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

<s:iterator value="detail" var="edit">
<form class="form-horizontal" action="eclient" method="post">
<fieldset>

<!-- Form Name -->
<h4>Edit Clients Details</h4>
<h5>*All Fields are Mandatory </h5>
<p>&nbsp;</p>
<!-- Text input-->
<div class="control-group">
  <label class="control-label">Bank_Client_ID</label>
  <div class="controls">
    <input id="disabledInput" name="addb.bank_id" type="text" placeholder="" value="<s:property value="bank_id" />" class="input-xlarge" disabled>
    <p class="help-block"></p>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label">Branch Name</label>
  <div class="controls">
    <input id="textinput" name="addb.branch" type="text" placeholder="" class="input-xlarge" value="<s:property value="branch" />">
    <p class="help-block"></p>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label">First Name</label>
  <div class="controls">
    <input id="textinput" name="addb.firstName" type="text" placeholder=""  value="<s:property value="firstName" />" class="input-xlarge">
    <p class="help-block"></p>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label">Middle Name</label>
  <div class="controls">
    <input id="textinput" name="addb.middleName" type="text" placeholder=""  value="<s:property value="middleName" />" class="input-xlarge">
    <p class="help-block"></p>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label">Last Name</label>
  <div class="controls">
    <input id="textinput" name="addb.lastName" type="text" placeholder=""  value="<s:property value="lastName" />" class="input-xlarge">
    <p class="help-block"></p>
  </div>
</div>

<!-- Multiple Radios -->
<div class="control-group">
  <label class="control-label">Gender</label>
  <div class="controls">
    <label class="radio">
      <input type="radio" name="addb.gender" value="Male" checked="checked">
      Male
    </label>
    <label class="radio">
      <input type="radio" name="addb.gender" value="Female">
      Female
    </label>
  </div>
</div>
<!-- Text input-->
<div class="control-group">
  <label class="control-label">Birth Date</label>
  <div class="controls">
    <input id="textinput" name="addb.dob" type="text" placeholder=""  value="<s:property value="dob" />"  class="input-xlarge">
    <p class="help-block"></p>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label">Phone No.</label>
  <div class="controls">
    <input id="textinput" name="addb.landLine" type="text" placeholder=""  value="<s:property value="landLine" />"  class="input-xlarge">
    <p class="help-block"></p>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label">Mobile No.</label>
  <div class="controls">
    <input id="textinput" name="addb.mobile" type="text" placeholder=""  value="<s:property value="mobile" />" class="input-xlarge">
    <p class="help-block"></p>
  </div>
</div>


<!-- Text input-->
<div class="control-group">
  <label class="control-label">Email</label>
  <div class="controls">
    <input id="textinput" name="addb.email" type="text" placeholder=""  value="<s:property value="email" />" class="input-xlarge">
    <p class="help-block"></p>
  </div>
</div>

 <!-- address-line1 input-->
        <div class="control-group">
            <label class="control-label">Address Line 1</label>
            <div class="controls">
                <input id="address-line1" name="addb.address" type="text" placeholder=""  value="<s:property value="address" />" 
                class="input-xlarge">
                <p class="help-block">Street address, P.O. box, company name, c/o</p>
            </div>
        </div>
<!-- city input-->
        <div class="control-group">
            <label class="control-label">City / Town</label>
            <div class="controls">
                <input id="city" name="addb.city" type="text" placeholder=""  value="<s:property value="city" />"  class="input-xlarge">
                <p class="help-block"></p>
            </div>
        </div>
        <!-- region input-->
        <div class="control-group">
            <label class="control-label">State / Province / Region</label>
            <div class="controls">
                <input id="region" name="addb.state" type="text" placeholder=""  value="<s:property value="state" />" 
                class="input-xlarge">
                <p class="help-block"></p>
            </div>
        </div>
<!-- Button -->
<div class="control-group">
  <label class="control-label"></label>
  <div class="controls">
    <button id="singlebutton" name="singlebutton" class="btn btn-info">Submit</button>
  </div>
</div>

</fieldset>
</form>
</s:iterator>
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