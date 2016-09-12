<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="chStr" scope="page" class="com.core.ChStr"/>
<%
String par=(String)request.getAttribute("par");
%>
<html>
<head>
<link rel="stylesheet" href="Css/style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加成功</title>
</head>
<body>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="22" background="images/bg_left.gif">&nbsp;</td>
    <td width="760">
<table width="760" height="713" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td height="126" align="center"><%@include file="top.jsp"%></td>
  </tr>
  <tr>
   <td height="513" valign="top" class="tableBorder_LRB"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="49" align="center" background="images/1.jpg">&nbsp;</td>
      </tr>
    </table>
 <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="146" align="center"><%=par%></td>
      </tr>
    </table>
    <table width="100%" height="210" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td align="center"><input name="Submit" type="button" class="btn_grey" value="返回" onClick="window.location.href='index.jsp'"></td>
        </tr>
   </table></td>
  </tr>
  <tr>
    <td align="center" class="tableBorder_LR">
    <%@include file="copyright.jsp"%></td>
  </tr>
</table>
    <td width="19" background="images/7.jpg">&nbsp;</td>
  </tr>
</table>
</body>
</html>