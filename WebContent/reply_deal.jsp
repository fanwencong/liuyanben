<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="action.Topic" %>
<jsp:useBean id="replyForm" scope="page" class="com.actionForm.ReplyForm">
<jsp:setProperty name="replyForm" property="*"/>
</jsp:useBean>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>回复留言</title>
</head>
<body>
<%
Topic topic=new Topic();
int ret=topic.insertReply(replyForm);
if(ret==0){
	  request.setAttribute("par","回复留言信息失败!");
      pageContext.forward("err.jsp");
}else{
	request.setAttribute("par","回复留言信息成功!");
    pageContext.forward("ok.jsp");
}
%>
</body>
</html>