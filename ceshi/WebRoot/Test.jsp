<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<link href="style/b.css" rel="stylesheet" type="text/css">
</head>

<body>
<%request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
session.setAttribute("name", name);
 %>
	<div id="top">
	<%="欢迎"+name+"光临本在线答题系统，请仔细阅读以下题目，并作答" %><br>
	<a href="Test1.jsp" target="Test_Area">测试一</a>|<a href="Test2.jsp" target="Test_Area">测试二</a>
	</div>
	<div id="middle">
	<iframe src="Test1.jsp" name="Test_Area" id="Test_Frame"></iframe>
	</div>
</body>
</html>
