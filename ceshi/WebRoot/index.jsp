<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>孙思琪的答题在线系统</title>
<link href="style/main.css" rel="stylesheet" type="text/css">
</head>

<body background="img/background.jpg">
<table border=1>
<div id="Login_plane">

 	<form action="Test.jsp" method="post">
    <p class="in" id="User_Name">
      <input type="text" name="name" placeholder="用户名">
    </p>
    <p class="in" id="Password">
      <input type="password" name="pass" placeholder="密码">
    </p>
    <input type="submit" value="登录" class="Login_Button" id="Log_in">
  
  </form></table>
</div>
</body>
</html>
