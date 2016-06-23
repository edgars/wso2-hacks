<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
    <title>Contact Manager - Struts2 Hibernate Example</title>
</head>
<body>

 
<h1>Contact Manager</h1>
<s:actionerror/>
 
<s:form action="add" method="post">
    <s:textfield name="contact.firstName" label="Firstname"/>
    <s:textfield name="contact.lastName" label="Lastname"/>
    <s:textfield name="contact.emailId" label="Email"/>
    <s:textfield name="contact.cellNo" label="Cell No."/>
    <s:textfield name="contact.website" label="Homepage"/>
   
    <s:submit value="Add Contact" align="center"/>
</s:form>

 <form action="add" method="post">
 Name:<input type ="text" name="contact.firstName">
 <input type="submit" >
 </form>

</body>
</html>