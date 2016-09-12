<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员登录</title>
<script>
function checkM(myform){
    if(myform.name.value==""){
          alert("请输入管理员名!");myform.name.focus();return;
    }
		 if(myform.pwd.value==""){
          alert("请输入密码!");myform.pwd.focus();return;
    }
    myform.submit();
}
</script>
</head>
<body>
	 <table width="469" height="242"  border="0" align="center" cellpadding="0" cellspacing="0" background="images/2.jpg" class="tableBorder">
        <tr>
          <td height="120" align="center">&nbsp;</td>
        </tr>     
	   <tr>
          <td height="120" align="right" valign="top"><table width="71%" height="87"  border="0" cellpadding="0" cellspacing="0">
<form name="form1" method="post" action="login_deal.jsp">
                  <tr>
    <td width="95%" align="center">管理员名：
              <input name="name" type="text" id="name" size="20"></td>
              </tr>
            <tr>
              <td align="center">&nbsp;密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：
    <input name="pwd" type="password" id="pwd" size="20"  onKeyDown="if(event.keyCode==13) {this.form.submit()}"></td>
              </tr>
            <tr>
              <td align="center"><input name="Submit" type="button" class="btn_grey" value="确认" onClick="checkM(form1)"> &nbsp;
     <input name="Submit2" type="reset" class="btn_grey" value="重置">
              &nbsp;
              <input name="Submit3" type="button" class="btn_grey" value="返回" onClick="window.location.href='index.jsp';"></td>
    </tr>
            </form>
          </table></td>
        </tr>
</table>
</body>
</html>