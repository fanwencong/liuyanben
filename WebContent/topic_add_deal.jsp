<%@ page contentType="text/html; charset=UTF-8" language="java" import="action.Topic" %>
<jsp:useBean id="encoding" class="com.core.ChStr"></jsp:useBean>
<jsp:useBean id="topicForm" scope="page" class="com.actionForm.TopicForm">
<jsp:setProperty name="topicForm" property="*"/>
</jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言簿</title>
</head>
<body>
	 <%=encoding.toChinese(topicForm.getAuthor()) %>
	 <%=encoding.toChinese(topicForm.getContent()) %>
	<%
		Topic topic=new Topic();
		int ret=topic.insertTopic(topicForm);
	if(ret==0){
	 	request.setAttribute("par","添加留言信息失败!");
     	pageContext.forward("err.jsp");
	}else{
	 	request.setAttribute("par","添加留言信息成功!");
     	pageContext.forward("ok.jsp");
	}
	%>



</body>
</html>