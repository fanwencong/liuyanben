<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.actionForm.ReplyForm" %>
<jsp:useBean id="getTime" scope="page" class="com.core.GetTime"/>
<jsp:useBean id="reply" scope="page" class="action.Topic"/>
<jsp:useBean id="chStr" scope="page" class="com.core.ChStr"/>
<%
String id=request.getParameter("id");
ReplyForm replyForm=(ReplyForm)reply.queryReply(id);
int iid=replyForm.getId();
int topicid=replyForm.getTopicid();
String content=chStr.toChinese(replyForm.getContent());

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>回复信息</title>
<link rel="stylesheet" href="Css/style.css" />

<script language="javascript">

function check(){
      if(form1.content.value==""){
    	  alert("回复内容不允许为空！");form1.content.focus();return;
      }
      form1.submit();
}
</script>
</head>
<body>
	<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="22" background="images/1.jpg">&nbsp;</td>
      <td width="760">
<table width="760" height="713" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td height="126" align="center"><%@include file="top.jsp"%></td>
  </tr>
  <tr>
    <td height="513" valign="top">
    <table width="100%" height="164" border="0" cellpadding="0" cellspacing="0"  class="tableBorder_LRB">
      <tr>
        <td height="49" colspan="6" background="images/reply_navigate.gif">&nbsp;</td>
       </tr>
      <tr>
        <td width="5%" height="143">&nbsp;</td>
        <td colspan="4" align="center" valign="top">
    <table width="100%" height="164" border="0" cellpadding="0" cellspacing="0"  class="tableBorder_LRB">
      <tr>
        <td height="49" colspan="6" background="images/reply_navigate.gif">&nbsp;</td>
        </tr>
      <tr>
    <td width="5%" height="143">&nbsp;</td>
        <td colspan="4" align="center" valign="top">
            <form name="form1" method="post" action="reply_deal.jsp">
            <table width="100%" height="463" border="0" cellpadding="0" cellspacing="0">
      <tr>
            <td width="16%" height="36" align="center">回复人：
            <input name="id" type="hidden" id="id" value="<%=iid%>">
              <input name="topicid" type="hidden" id="topicid" value="<%=topicid%>"></td>
     <td width="84%">
              <input name="author" type="text" id="author" size="30" readonly="yes"value="<%=session.getAttribute("manager")%>">
              *
              <input name="createTime" type="hidden" id="createTime" value="<%=getTime.getDateTime()%>"></td>
   </tr>
          <tr>
            <td height="160" align="center">回复内容：</td>
            <td><textarea name="content" cols="70" rows="10" class="wenbenkuang" id="content"><%=content %></textarea>
          *</td>
          </tr>
          <tr>
            <td height="267" align="center">&nbsp;</td>
   <td valign="top"><input name="Submit" type="button" class="btn_grey" value="保存" onClick="check()">
              &nbsp;&nbsp;
              <input name="Submit2" type="reset" class="btn_grey" value="重置">
    &nbsp;&nbsp; 
                   <input name="Submit" type="button" class="btn_grey" value="返回" onClick="history.back(-1)"> </td>
          </tr>
        </table>
     </form>            </td>
        <td width="6%">&nbsp;</td>
      </tr>
    </table>
    </td>
  </tr><br>
  <tr>
    <td align="center" class="tableBorder_LR"><%@include file="copyright.jsp"%></td>
  </tr>
</table>
    <td width="19" background="images/8.jpg">&nbsp;</td>
  </tr>
</table>
  </td>
  </tr>
  </table>


</body>
</html>