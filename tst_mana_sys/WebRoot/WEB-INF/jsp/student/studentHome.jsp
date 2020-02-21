<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<!-- 引入boostrap -->
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
   <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
   <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>学生系统</title>
<script type="text/javascript">
function queryTests() {
	document.testForm.action="<%=basePath%>/student/studentHome.action";
	document.testForm.submit();
}
</script>
</head>
<body>
<form name="testForm" action="<%=basePath%>/student/studentHome.action" method="post">
<!-- 导航栏 -->
<nav class="navbar navbar-default" role="navigation" style="width:1600px">
   <div class="container-fluid" style="white-space:nowrap">
   <div class="navbar-header">
       <a class="navbar-brand">欢迎，${username }同学</a>
   </div>
   <div class="navbar-brand" style="left:1435px;top:2px;position:absolute">
   <a class="navvar-brand" href="<%=basePath%>/logout.action">退出登录</a>
   </div>
   </div>
</nav>
<!-- 显示试题列表 -->
<div style="left:1100px;top:70px;position:absolute">
    <form name="searchForm" class="bs-example bs-example-form" role="form">
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group">
                    <input type="text" name="testName" class="form-control" style="width:310px">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button" onclick="queryTests()">
							<span class="glyphicon glyphicon-search"></span>
                        </button>
                    </span>
                </div>
            </div>
        </div>
    </form>
</div>
<div style="width:1536px">
<table class="table table-hover">
<caption>试卷列表</caption>
<thead>
<tr>
<th>试卷序号</th>
<th>试卷名称</th>
<th>生成时间</th>
<th>试题类型</th>
<th>试题难度</th>
<th>试题数量</th>
<th>试题分数</th>
<th>试题内容</th>
</tr>
</thead>
<!-- 以下内容是试题内容 -->
<tbody>
<c:forEach items="${testList }" var="item">
<tr>
	<td>${item.tstNo }</td>
	<td>${item.tstName }</td>
	<td>${item.tstTime }</td>
	<td>${item.tstType }</td>
	<td>${item.tstDif }/10</td>
	<td>${item.tstNum }</td>
	<td>${item.tstScore }</td>
	<td><a href="<%=basePath %>/student/showTest.action?tstNo=${item.tstNo }"
	  style="cursor:pointer">查看</a></td>
</tr>	
</c:forEach>
</tbody>
</table>
</div>
</form>
</body>
</html>