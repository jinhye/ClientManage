<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = null;

	if(session.getAttribute("id") != null){
		id = (String) session.getAttribute("id");
	}else{
		out.println("<script>");
		out.println("location.href='login.jsp'");
		out.println("</script>");
	}
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>main.jsp</title>
</head>
<body>
	<hr size="5" color="red">
	<h3>Hello!! &nbsp; ${id}</h3>
	
	<a href="list.do">Client List</a><br/>
	<a href="addRequest.jsp">Client Add</a><br/>
	<a href="viewRequest.jsp">Detailed Information</a><br/>
	
</body>
</html>