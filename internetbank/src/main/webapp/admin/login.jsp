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


				<div class="container" style="margin-top: 100px;">
<s:if test="!hasActionErrors()">
					<div class="container">
					<div class="span3"></div>
					<div class="span6">
					<div class="alert alert-info">
					Admin Login Page
					</div>
					</div>
					<div class="span3"></div>
					</div>
					</s:if>
					<s:if test="hasActionErrors()">
						<div class="container">
					<div class="span3"></div>
					<div class="span6">
					<div class="alert alert-error">
					<b><s:actionerror /></b>
					</div>
					</div>
					<div class="span3"></div>
					</div>
							
						<meta http-equiv="refresh" content="2; url=login.jsp" /> 
					</s:if>

					<s:form action="adminlogin" cssClass="form-signin" >
						<h3 class="form-signin-heading">Online Login</h3>

						<s:textfield name="userName" cssClass="input-block-level"
							placeholder="User Name" id="userName"/>
						<s:password name="password" cssClass="input-block-level"
							placeholder="Password" />
							<s:textfield name="bank_id" cssClass="input-block-level"
							placeholder="Bank_ID" />
						<s:submit cssClass="btn btn-large btn-primary" value="Login" />

					</s:form>


				</div>



			</div>



			<jsp:include page="footer.html"/>
		</div>
	</section>
   
   
   
   
   
   
    
    
    
    <script src="../bootstrap/js/jquery.js"></script>
    <script src="../bootstrap/js/bootstrap.js"></script>
    
  </body>
</html>