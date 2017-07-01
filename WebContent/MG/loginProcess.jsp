<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="java.sql.*" %>    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		pstmt = conn.prepareStatement("select * from employees where id =?");
		pstmt.setString(1,id);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			if(pw.equals(rs.getString("pw"))){
				session.setAttribute("id", id);
				out.println("<script>");
				out.println("location.href='main.jsp'");
				out.println("</script>");
			}
		}
		
		out.println("<script>");
		out.println("location.href='register.jsp'");
		out.println("</script>");
	}catch(SQLException e){
		e.printStackTrace();
	}
		
%>
</body>
</html>