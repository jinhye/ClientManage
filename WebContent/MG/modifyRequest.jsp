<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>modifyRequest.jsp</title>
</head>
<body>
	<center>
	<h2>Client Modify</h2>
	<hr color="blue" size="5">
	
		<form action="modify_request.do" action="post">
			<table bgcolor="lightblue" border="1">
				<tr>
					<td>ID</td><td>${param.cId}</td><input type="hidden" name="cId" value="${param.cId}">
				</tr>
				<tr>
					<td>Name</td><td>${param.cName}</td>
				</tr>
				<tr>
					<td>Gender</td><td><input type="text" name="cGender" value="${param.cGender}"></td>
				</tr>
				<tr>
					<td>Address</td><td><input type="text" name="cAddress" value="${param.cAddress}"></td>
				</tr>
				<tr>
					<td>City</td><td><input type="text" name="cCity" value="${param.cCity}"></td>
				</tr>
				<tr>
					<td>Province</td><td><input type="text" name="cProvince" value="${param.cProvince}"></td>
				</tr>
				<tr>
					<td>Postal</td><td><input type="text" name="cPostal" value="${param.cPostal}"></td>
				</tr>
				<tr>
					<td>Phone</td><td><input type="text" name="cPhone" value="${param.cPhone}"></td>
				</tr>
				<tr>
					<td>Email</td><td><input type="text" name="cEmail" value="${param.cEmail}"></td>
				</tr>
				<tr>
					<td>VIN</td><td>${param.cVin}</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Modify">&nbsp;&nbsp;<input type="reset" value="Resut"></td>
				</tr>	
			</table>
		</form>
	
	</center>
</body>
</html>