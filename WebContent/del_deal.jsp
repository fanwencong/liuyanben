<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="action.Topic" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言簿</title>
</head>
<body>
	<%
	Topic topic=new Topic();
	String id=request.getParameter("id");
	int ret=topic.delTopic(id);
	if(ret==0){
		   request.setAttribute("par","删除留言信息失败!");
		   pageContext.forward("err.jsp");
	}else{
		   request.setAttribute("par","删除留言信息成功!");
		   pageContext.forward("ok.jsp");
		}
	     %>
</body>
</html>