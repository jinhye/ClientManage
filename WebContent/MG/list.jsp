<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>list.jsp</title>
</head>
<body>
	<center>
	<h2>Client List</h2>
	<hr size="5" color="blue">
	
	<input type="button" name="orderBy" value="Order by Name"><br/>
	
	<table cellpadding="0" cellspacing="0" border="1">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Gender</th>
			<th>Address</th>
			<th>City</th>
			<th>Province</th>
			<th>Postal</th>
			<th>Phone</th>
			<th>Email</th>
			<th>VIN</th>
			<th>Select</th>
			<th>Select_js</th>
		</tr>   
		<c:forEach items="${list}" var="dto">
		<tr>
			<td align="center">${dto.cId}</td>
			<td align="center">${dto.cName}</td>
			<td align="center">${dto.cGender}</td>
			<td>${dto.cAddress}</td>
			<td align="center">${dto.cCity}</td>
			<td align="center">${dto.cProvince}</td>
			<td align="center">${dto.cPostal}</td>
			<td align="center">${dto.cPhone}</td>
			<td align="center">${dto.cEmail}</td>
			<td align="center">${dto.cVin}</td>
			<td align="center"><a href="modifyRequest.jsp?cId=${dto.cId}&cName=${dto.cName}&cGender=${dto.cGender}&cAddress=${dto.cAddress}
			&cCity=${dto.cCity}&cProvince=${dto.cProvince}&cPostal=${dto.cPostal}&cPhone=${dto.cPhone}&cEmail=${dto.cEmail}&cVin=${dto.cVin}">Modify</a>&nbsp;
			<a href="delete_request.do?cId=${dto.cId}">Delete</a></td>
			<td align="center"><input type="button" name="${dto.cId}" value="Modify"><input type="button" name="${dto.cId}" value="Delete"></td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="12">
				<a href="viewRequest.jsp">Detailed View</a>&nbsp;&nbsp;
				<a href="addRequest.jsp">Client Add</a>&nbsp;&nbsp;
				<a href="main.do">Main menu</a>
			</td>
		</tr>
	</table>
	</center>
</body>
</html>