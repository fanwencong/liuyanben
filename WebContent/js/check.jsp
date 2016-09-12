<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>
</head>
<body>
<script>
    function check(myform){
	 if(myform.author.value=="")
	    alert("留言人不允许为空!");myform.author.focus();return;
	 if (myform.email.value!=""){
		 var i=myform.email.value.indexOf("@");
        var j=myform.email.value.indexOf(".");
		 if((i<0)||(i-j>0)||(j<0)){
          alert("您输入的Email地址不正确，请重新输入！");myform.email.value="";myform.email.focus();return;
           }
	}
	  if(myform.content.value==""){
           alert("留言内容不允许为空！");myform.content.focus();return;
     }    
     myform.submit();           
	
	}
	
	
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
</body>
</html>