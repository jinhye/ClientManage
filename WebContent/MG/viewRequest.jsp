<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>viewRequest.jsp</title>
</head>

<body>
	<h2>Search for Clients Information in options</h2>
	<hr size="5" color="blue">
	<form action="view_request.do" method="post">
		<table>
			<tr>
				<td align="right">Name:</td><td colspan="2" align="center"><input type="text" name="cName"></td>
			</tr>
			<tr>
				<td align="right">Gender:</td><td colspan="2" align="center"><input type="text" name="cGender"></td>
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
				<td align="right">VIN:</td><td colspan="2" align="center"><input type="text" name="cVin"></td>
			</tr>
			<tr>
				<td colspan="3" align="center"><input type="submit" value="Search">&nbsp;<input type="reset" value="Reset"></td>
			</tr>	
		</table>
	
	
		
	</form>
</body>
</html>