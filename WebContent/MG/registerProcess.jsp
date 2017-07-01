<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="java.sql.*" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>register.jsp</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		pstmt = conn.prepareStatement("insert into employees(ID, PW, Name) values(?, ?, ?)");
		pstmt.setString(1,id);
		pstmt.setString(2,pw);
		pstmt.setString(3,name);
		
		int result = pstmt.executeUpdate();
		
		if(result != 0){
			out.println("<script>");
			out.println("location.href='login.jsp'");
			out.println("</script>");
		}else{
			out.println("<script>");
			out.println("location.href='register.jsp'");
			out.println("</script>");
		}
	}catch(SQLException e){
		e.printStackTrace();
	}


%>
</body>
</html>