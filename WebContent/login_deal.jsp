<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<jsp:useBean id="managerForm" scope="page" class="com.actionForm.ManagerForm">
<jsp:setProperty name="managerForm" property="*"/>
</jsp:useBean>
<jsp:useBean id="manager" scope="request" class="action.Manager"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言簿</title>
</head>
<body>
<%
String rtn=manager.login(managerForm,request);
if(rtn.equals("ok")){
  out.println("<script language='javascript'>alert('登录成功！');window.location.href='index.jsp';</script>");
}else{
	  out.println("<script language='javascript'>alert('"+rtn+"');window.location.href='login.jsp';</script>");
	}
	%>
</body>
</html>