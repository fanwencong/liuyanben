<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" 
language="java" import="java.sql.*" import="com.core.GetTime" errorPage="" %>
<jsp:useBean id="getTime" class="com.core.GetTime" scope="page"></jsp:useBean>
<jsp:useBean id="getip" class="com.core.ChStr" scope="page"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言簿</title>
<link rel="stylesheet" href="Css/style.css" />
<script >
function check(){
	 if(form1.author.value==""){
		    alert("留言人不允许为空!");
			 form1.author.focus();
			 return;
	 }
	 if(form1.email.value==""){
		 alert("请输入邮箱地址！");
		 form1.email.value="";
		 form1.email.focus();return;
	 }
	 if(form1.email.value!=""){
		 var i=form1.email.value.indexOf("@");
       var j=form1.email.value.indexOf(".");
		 if((i<0)||(i-j>0)||(j<0)){
         alert("您输入的Email地址不正确，请重新输入！");
         form1.email.value="";
         form1.email.focus();
         return;
          }
	}
	  if(form1.content.value==""){
          alert("留言内容不允许为空！");form1.content.focus();return;
    }    
	  form1.submit();           
	
	}
</script>

</head>
<body>

<table width="800" border="0" align="center" cellpadding="0" cellspacing="0" background="images/7.jpg">
  <tr>
    <td width="22" background="images/bg_left.gif">&nbsp;</td>
    <td width="760">
<table width="760" height="646" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td height="126" align="center"><%@include file="top.jsp"%></td>
  </tr>
  <tr>
    <td height="446" valign="top">
    <table background="images/7.jpg" width="100%" height="164" border="0" cellpadding="0" cellspacing="0" class="tableBorder_LRB">
  <tr>
        <td height="49" colspan="6" background="images/reply_navigate.gif">&nbsp;</td>
        </tr>
      <tr>
 <td width="5%" height="143">&nbsp;</td>
        <td colspan="4" align="center" valign="top">
        
        
<form name="form1" method="post" action="topic_add_deal.jsp">
            
            
            <table  background="images/7.jpg" width="100%" height="383" border="0" cellpadding="0" cellspacing="0">
 <tr>
            <td width="16%" height="36" align="center">留言人：</td>
            <td width="84%">
              <input name="author" type="text" id="author" size="30" >
  </td>
          </tr>
  <tr>
    <td height="107" align="center">表&nbsp;&nbsp;情：</td>

     <td>
  <INPUT name="face" type=radio class="noborder" value=1 checked>
  <IMG height=20 src="images/QQexpression/1.gif" width=20 align=middle border=0>
              
   <INPUT name="face" type=radio class="noborder" value=2>
   <IMG height=19 src="images/QQexpression/2.gif" width=19 align=middle border=0>
              
   <INPUT name="face" type=radio class="noborder" value=3>
   <IMG height=20 src="images/QQexpression/3.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=4>
   <IMG height=20 src="images/QQexpression/4.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=5>
   <IMG height=20 src="images/QQexpression/5.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=6>
   <IMG height=20 src="images/QQexpression/6.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=7>
   <IMG height=20 src="images/QQexpression/7.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=8>
   <IMG height=20 src="images/QQexpression/8.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=9>
   <IMG height=20 src="images/QQexpression/9.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=10>
   <IMG height=19 src="images/QQexpression/10.gif" width=20 align=middle border=0>
   <br>   
   <INPUT name="face" type=radio class="noborder" value=11>
   <IMG height=20 src="images/QQexpression/11.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=12>
   <IMG height=20 src="images/QQexpression/12.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=13>
   <IMG height=20 src="images/QQexpression/13.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=14>
   <IMG height=20 src="images/QQexpression/14.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=15>
   <IMG height=20 src="images/QQexpression/15.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=16>
   <IMG height=20 src="images/QQexpression/16.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=17>
   <IMG height=20 src="images/QQexpression/17.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=18>
   <IMG height=20 src="images/QQexpression/18.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=19>
   <IMG height=20 src="images/QQexpression/19.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=20>
   <IMG height=20 src="images/QQexpression/20.gif" width=20 align=middle border=0>
   <br>
   <INPUT name="face" type=radio class="noborder" value=21>
   <IMG height=20 src="images/QQexpression/21.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=22>
   <IMG height=20 src="images/QQexpression/22.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=23>
   <IMG height=20 src="images/QQexpression/23.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=24>
   <IMG height=20 src="images/QQexpression/24.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=25>
   <IMG height=20 src="images/QQexpression/25.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=26>
   <IMG height=20 src="images/QQexpression/26.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=27>
   <IMG height=20 src="images/QQexpression/27.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=28>
   <IMG height=20 src="images/QQexpression/28.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=29>
   <IMG height=20 src="images/QQexpression/29.gif" width=20 align=middle border=0>
 
   <INPUT name="face" type=radio class="noborder" value=30>
   <IMG height=20 src="images/QQexpression/30.gif" width=20 align=middle border=0>
   <br>
  
 
 
 
 </tr>
          <tr>
            <td height="38" align="center">Email：</td>
            <td>
            <input name="email" type="text" id="email" size="72" >
              <input name="ip" type="hidden" id="ip" value="<%=getip.getIpAddr(request)%>">
 <input name="createTime" type="hidden" id="createTime" value="<%=getTime.getDateTime()%>">               
 </td>
</tr>
 <tr>
            <td height="160" align="center">留言内容：</td>
            <td><textarea name="content" cols="70" 
            rows="10" class="wenbenkuang" id="content" ></textarea>
              *</td>
          </tr>
<tr>
<td height="42" align="center">&nbsp;</td>
<td><input name="Submit" type="button" class="btn_grey" value="保存" onClick="check()">
&nbsp;&nbsp;
  <input name="Submit2" type="reset" class="btn_grey" value="重置">
  &nbsp;&nbsp;
 <input name="Submit1" type="button" class="btn_grey" value="返回" onClick="window.location.href='index.jsp'"> 
 </td>
</tr>
</table>
</form>
</td>
<td width="6%">&nbsp;</td>
      </tr>
    </table>
    </td>
</tr>
  <tr>
    <td align="center" class="tableBorder_LR"><%@include file="copyright.jsp"%></td>
  </tr>
</table>
    <td width="19" background="images/3.jpg">&nbsp;</td>
  </tr>
</table>

</body>
</html>