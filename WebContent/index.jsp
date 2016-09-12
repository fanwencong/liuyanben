<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.core.ChStr" %>
<%@ page import="com.actionForm.TopicForm" %>
<%@ page import="com.actionForm.ReplyForm" %>
<%@ page import="action.Topic" %>
<%
	Topic topic=new Topic();
	List list=topic.queryTopic();
	ChStr chStr=new ChStr();
	int id=0;
	String author="";
	String face="";
	String content="";
	String ip="";
	String email="";
	String createTime="";
	String content_r="";
	String author_r="";
	String createTime_r="";
	int RecordCount=list.size();   //记录总数
%>
<% 
Topic topic1=new Topic();
List list1=topic1.queryTopicOne();
int RecordCount1=list1.size();
int id_t=0;
String author_t="";
String face_t="";
String content_t="";
String ip_t="";
String email_t="";
String createTime_t="";
%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>留言簿</title>
 <link rel="stylesheet" href="Css/style.css" /> 
 <style type="text/css">

body {
 background-image: url(images/9.jpg);

}
</style>
 
</head>
<body >

<table align="center" width="1024" height="173" border="0"  >
  <tr>
   <td height="126" align="center">
   <%@include file="top.jsp"%></td>
  </tr>
  <tr>
    <td height="513" valign="top">
      <table align="center" width="1024" border="0" cellspacing="0" cellpadding="0" background="images/10.jpg">
     <tr height="50">
       
         <td align="center"  width="100" >
         留言条总数(有回复的):<%=RecordCount %>
         </td>
         <td align="center"  width="100" >
     留言条总数(没回复的):<%=RecordCount1 %>
         </td>
        <td align="center"  width="100" >
         <a href="topic_add.jsp" >添加留言 </a>
         </td>
        <td align="center"  width="100" >
         <a href="login.jsp">管理员登录 </a>
         </td>
        <td align="center"  width="100" >
         <a href="loginout.jsp">安全退出 </a>
         </td>
      
        
      </tr>
    </table>

   <!-- 获取没有回复的留言 -->
  <%
  for(int j=0;j<list1.size();j++){
	Object object=(Object)list1.get(j);
	TopicForm topicForm=(TopicForm)object;
	id_t=topicForm.getId();
	author_t=topicForm.getAuthor();
	face_t=topicForm.getFace();
	content_t=topicForm.getContent();
	ip_t=topicForm.getIp();
	email_t=topicForm.getEmail();
	createTime_t=topicForm.getCreateTime();

%> 
 <table align="center" width="1024" height="173" border="0"  >
      
       <tr>
        <td height="34" colspan="9" background="images/7.jpg" border="0" >  
        <table align="center" width="1024" border="0" cellpadding="0" cellspacing="0" background="images/7.jpg">
          <tr>
     <td width="5%" height="50"></td>
       
        <td width="1%" height="30" align="center">
        <img src="images/QQexpression/<%=face_t%>.gif" width="16" height="16">
        </td>

        <td width="15%" height="50">&nbsp;&nbsp;留言人： <%=author_t%></td>

        <td width="16" height="50" align="right">
        <img src="images/QQexpression/94.gif" width="16" height="16" > </td>
         <td width="20%" height="50">&nbsp;&nbsp;Email： <%=email_t%></td>
       
       <td width="16" height="30" align="right">
       <img src="images/QQexpression/130.gif"  width="16" height="15"></td>
        <td width="15%" height="50">&nbsp;&nbsp;IP： <%=ip_t%></td>
        
        
        <td width="1%" height="50" align="center" align="right">
        <img src="images/QQexpression/50.gif" width="16" height="16"></td>

        <td width="22%" height="50">留言时间：<%=createTime_t %></td>

        <td width="10%" height="50">
        <%if(session.getAttribute("manager")!=null)
        {%>
        <a href="reply.jsp?id=<%=id_t%>">回复</a> | 
        <a href="del_deal.jsp?id=<%=id_t%>">删除</a>
        <%}%>
        </td>
        <tr background="images/7.jpg">
   
        <td height="70" colspan="7" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;<%=content_t%></td>
        
      </tr>
    </tr>
         </table></td>
        </tr> 
    </table>
  <%} %>





  
</table>
<% 
for(int i=0;i<list.size();i++){
  Object[] obj = (Object[]) list.get(i);
  TopicForm t=(TopicForm)obj[0];
  ReplyForm r=(ReplyForm)obj[1];
  id=t.getId(); 
  author=t.getAuthor();
  face=t.getFace();
  content=t.getContent();
  ip=t.getIp();
  email=chStr.toChinese(t.getEmail());
  createTime=t.getCreateTime();
  content_r=r.getContent();
  author_r=r.getAuthor();
  createTime_r=r.getCreateTime();
%>

  <table align="center" width="1030" height="173" border="0"  class="tableBorder_LRB">
      
      <tr>
        <td height="34" colspan="9" background="images/7.jpg">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
     <td width="5%" height="50"></td>
       
        <td width="1%" height="30" align="center">
        <img src="images/QQexpression/<%=face%>.gif" width="16" height="16">
        </td>

        <td width="15%" height="50">&nbsp;&nbsp;留言人： <%=author%></td>

        <td width="16" height="50" align="right">
        <img src="images/QQexpression/94.gif" width="16" height="16" > </td>
         <td width="20%" height="50">&nbsp;&nbsp;Email： <%=email%></td>
       
       <td width="16" height="30" align="right">
       <img src="images/QQexpression/130.gif"  width="16" height="15"></td>
        <td width="15%" height="50">&nbsp;&nbsp;IP： <%=ip%></td>
        
        
        <td width="1%" height="50" align="center" align="right">
        <img src="images/QQexpression/50.gif" width="16" height="16"></td>

        <td width="22%" height="50">留言时间：<%=createTime %></td>
        <td width="10%" height="50">
        <%if(session.getAttribute("manager")!=null)
        {%>
        <a href="reply.jsp?id=<%=id%>">回复</a> | 
        <a href="del_deal.jsp?id=<%=id%>">删除</a>
        <%}%>
        </td>
    </tr>
    <tr background="images/7.jpg">
   
        <td height="70" colspan="7" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;<%=content%></td>
        
         <tr>
          <%if(!author_r.equals("") && author_r!=null){%>
     <td  height="70" colspan="7" valign="top">    
        <%=createTime_r %>&nbsp;&nbsp;&nbsp;
        来自[<%=author_r%>]的回复：&nbsp;&nbsp;&nbsp;&nbsp;
                        <%=content_r%>
        </td>
         <%}%>
        
         </tr>
      </tr>
        </table>
        </td>
        </tr>
    </table>
  <%} %>
   <%@include file="copyright.jsp"%>
</body>
</html>