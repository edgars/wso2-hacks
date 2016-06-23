<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Presto || Bank Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet"
	media="screen">


<!--Modifications to Some Class-->
<!--Insert After Main CSS-->
<link href="css/basic.css" rel="stylesheet" media="screen">
<link rel="shortcut icon" href="favicon.ico">
</head>
<body>

	<jsp:include page="header.html" />
	<section>
		<div class="container">

			<div class="row-fluid">


				<s:actionerror />
				<h3 style="color: red;">Bank Branch Details</h3>
				<table class="table table-striped table-bordered">
					<tr>
						<th>Bank_ID</th>
						<th>Bank_Branch_Name</th>
						<th>Bank_Branch_Add</th>
						<th>Bank_Branch_City</th>
						<th>Bank_Branch_Phone</th>

					</tr>
					<s:iterator value="detailList" var="details">
						<tr>
							<td><s:property value="bank_id" /></td>
							<td><s:property value="bank_branch_name" /></td>
							<td><s:property value="bank_branch_add" /></td>
							<td><s:property value="bank_branch_city" /></td>
							<td><s:property value="bank_branch_phone" /></td>


						</tr>
					</s:iterator>
				</table>



			</div>



			<jsp:include page="footer.html" />
		</div>
	</section>









	<script src="bootstrap/js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>

</body>
</html>