<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login.jsp</title>
</head>
<body>
	<center><h2>MG Motors Client Management System</h2></center>
	<hr color="blue" size="5">
	<br/>
	<form action="loginProcess.jsp" method="post">
		<center>
			<table border="1" bgcolor="lightblue">
				<tr>
					<td colspan="2" align="center"><b><font size="5">Login Page</font></b></td>
				</tr>
				<tr>
					<td>ID</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>PassWord</td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<td align="center" colspan="2">
					<input type="submit" value="Login">
					&nbsp;&nbsp;&nbsp;
					<input type="reset" value="Reset"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><a href="register.jsp">Member Register</a></td>
				</tr>
			</table>		
		</center>
	</form>
</body>
</html>