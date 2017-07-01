<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addRequest.jsp</title>
</head>
<body>
	<h2>Insert Client</h2>
	<hr size="5" color="blue">
	<form action="insert_request.do" method="post">
		<table>
			<tr>
				<td align="right">Name:</td><td colspan="2" align="center"><input type="text" name="cName"></td>
			</tr>
			<tr>
				<td align="right">Gender:</td><td colspan="2" align="center"><input type="text" name="cGender"></td>
			</tr>
			<tr>
				<td align="right">Address:</td><td colspan="2" align="center"><input type="text" name="cAddress"></td>
			</tr>
			<tr>
				<td align="right">City:</td><td colspan="2" align="center"><input type="text" name="cCity"></td>
			</tr>
			<tr>
				<td align="right">Province:</td><td colspan="2" align="center"><input type="text" name="cProvince"></td>
			</tr>
			<tr>
				<td align="right">Postal:</td><td colspan="2" align="center"><input type="text" name="cPostal"></td>
			</tr>
			<tr>
				<td align="right">Phone:</td><td colspan="2" align="center"><input type="text" name="cPhone"></td>
			</tr>
			<tr>
				<td align="right">Email:</td><td colspan="2" align="center"><input type="text" name="cEmail"></td>
			</tr>
			<tr>
				<td align="right">VIN:</td><td colspan="2" align="center"><input type="text" name="cVin"></td>
			</tr>
			<tr>
				<td colspan="3" align="center"><input type="submit" value="Add">&nbsp;<input type="reset" value="Reset"></td>
			</tr>	
		</table>
	
	
		
	</form>
</body>
</html>