<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
session.invalidate();
out.println("<script language='javascript'>");
out.println("window.location.href='index.jsp'");
out.println("</script>");
%> 
</body>
</html>