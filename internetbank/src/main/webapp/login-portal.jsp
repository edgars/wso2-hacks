<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Presto || Login-Portal</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet"
	media="screen">


<!--Modifications to Some Class-->
<!--Insert After Main CSS-->
<link href="css/basic.css" rel="stylesheet" media="screen">
<link rel="shortcut icon" href="favicon.ico">
<link href="css/login.css" rel="stylesheet" media="screen">

</head>
<body>
	<jsp:include page="header.html" />
	<section>
		<div class="container">

			<div class="row-fluid">
				<div class="container" style="margin-top: 50px;">
					<div class="span1"></div>
					<div class="span10">
						<div class="well">
							<h1>Welcome to Secure Login Portal</h1>

							<span class="label label-important">General Guidelines for Login</span> <br> <br>
							<div class="alert alert-error">

								<h4>User!</h4>
								If you are a User then Select "User" option From Select Box
							</div>
							<div class="alert alert-error">

								<h4>Employee!</h4>
								If you are an Employee then Select "Employee" option From Select Box
							</div>
							<div class="alert alert-error">

								<h4>Admin!</h4>
								If you are an Admin then Select "Administrator" option From Select Box
							</div>
							<br> <br> <select
								onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">

								<option value="">Select...</option>
								<option value="user/login.jsp">User</option>
								<option value="emp/login.jsp">Employee</option>
								<option value="admin/login.jsp">Administrator</option>
							</select>
							<br>
							<br>
							<br>
						</div>
					</div>
					<div class="span1"></div>


				</div>

			</div>



			<jsp:include page="footer.html" />
		</div>
	</section>







	<script src="bootstrap/js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>

</body>
</html>