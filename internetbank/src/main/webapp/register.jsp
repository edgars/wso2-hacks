<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>

</head>
<body>
<s:form action="saveOrUpdateUser">
	
		<s:hidden name="id" />
		<s:textfield name="name" label="User Name" />
		<s:radio name="gender" label="Gender" 
        	list="{'Male','Female'}" />
		<s:select name="country" list="{'India','USA','UK'}" 
        	headerKey="" headerValue="Select" 
            label="Select a country" />
		<s:textarea name="aboutYou" label="About You" />
		<s:checkbox name="mailingList"
			label="Would you like to join our mailing list?" />
		<s:submit />
	
</s:form>

<s:if test="userList.size() > 0">
	<div class="content">
	<table class="userTable" cellpadding="5px">
		<tr class="even">
			<th>Name</th>
			<th>Gender</th>
			<th>Country</th>
			<th>About You</th>
			<th>Mailing List</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<s:iterator value="userList" status="userStatus">
			<tr
				class="<s:if test="#userStatus.odd == true ">odd</s:if> <s:else>even</s:else>">
				<td><s:property value="name" /></td>
				<td><s:property value="gender" /></td>
				<td><s:property value="country" /></td>
				<td><s:property value="aboutYou" /></td>
				<td><s:property value="mailingList" /></td>
				<td>
                <s:url id="editURL" action="editUser">
					<s:param name="id" value="%{id}"></s:param>
				</s:url>
                <s:a href="%{editURL}">Edit</s:a>
                </td>
				<td>
                <s:url id="deleteURL" action="deleteUser">
					<s:param name="id" value="%{id}"></s:param>
				</s:url>
                <s:a href="%{deleteURL}">Delete</s:a>
                </td>
			</tr>
		</s:iterator>
	</table>
	</div>
</s:if>
</body>
</html>