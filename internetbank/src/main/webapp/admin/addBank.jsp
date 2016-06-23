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
			<s:set var="abc" value="login.getUserName().toString()" />
			<s:property value="abc" />
			
			<s:set var="bcd" value="#session.user.toString()" />
			<s:property value="bcd" />
			
			
	 	
	 	<s:if test="#session.user != 'admin'">
         <%  response.sendRedirect("login.jsp"); %>
        </s:if>
        
	 
	
	
				<h2>Hello, ...!</h2>
				
				<div>
				<s:url id="logout" action="logout" />| <s:a href="%{logout}">Logout</s:a> |
</div>


			</div>



			<jsp:include page="footer.html"/>
		</div>
	</section>
   
   
   
   
   
   
    
    
    
    <script src="../bootstrap/js/jquery.js"></script>
    <script src="../bootstrap/js/bootstrap.js"></script>
    
  </body>
</html>