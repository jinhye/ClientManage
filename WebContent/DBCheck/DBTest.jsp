<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.sql.*" %>
<h2>Database Driver and Oracle XE connection check</h2>
<%
	try{
		String driverName = "oracle.jdbc.driver.OracleDriver";
		String dbURL = "jdbc:oracle:thin:@localhost:1521:XE";
		
		Class.forName(driverName);
		Connection conn = DriverManager.getConnection(dbURL, "scott", "tiger");	
	
		out.println("Oracle connected");
		
		conn.close();	
	}catch(SQLException e){
		out.println("Oracle connect failed");
		out.println(e.getMessage());
		e.printStackTrace();
	}
%>
</body>
</html>