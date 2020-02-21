<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
   <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
   <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>教师系统</title>
</head>
<body>
<!-- 导航栏 -->
<nav class="navbar navbar-default" role="navigation" style="width:1600px">
   <div class="container-fluid" style="white-space:nowrap">
       <div style="white-space:nowrap">
       <ul class="nav navbar-nav" style="float:left">
       <li style="float:left"><a class="navbar-brand">欢迎，${username }老师</a>
       <li style="float:left"><a href="<%=basePath %>/teacher/teacherHome.action">试题系统</a></li>
       <li style="float:left" class="active"><a href="<%=basePath %>/teacher/queryTest.action">试卷查看</a></li>
       </ul>
       </div>
       <div class="navbar-brand" style="left:1435px;top:2px;position:absolute">
   	   <a class="navvar-brand" href="<%=basePath %>/logout.action">退出登录</a>
       </div>
       </div>
</nav>
<h1 style="text-align:center">${test.tstName }</h1>
<div>
<textarea readonly cols="130" rows="50"
 style="resize:none;display:block;margin-left:auto;
 margin-right:auto">${test.tstDetail }</textarea>
</div>
</body>
</html>