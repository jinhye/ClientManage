<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>register.jsp</title>
</head>
<body>
	<form action="registerProcess.jsp" method="post">
		<center>
			<table border="1" bgcolor="lightyellow">
				<tr>
					<td colspan="2" align="center"><b><font size="5">Employee Register</font></b></td>
				</tr>
				<tr>
					<td>ID: </td><td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>PassWord: </td><td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<td>Name: </td><td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td align="center" colspan="2">
					<input type="submit" value="Register">
					&nbsp;&nbsp;&nbsp;
					<input type="reset" value="Reset"></td>
				</tr>
			</table>	
		</center>	
	</form>
</body>
</html>