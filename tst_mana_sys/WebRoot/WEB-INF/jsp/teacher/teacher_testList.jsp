<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<!-- 引入boostrap -->
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	$(function() { //除了表头（第一行）以外所有的行添加click事件.    
		$("tr").slice(1).on("click", ".select", function() {
			// 切换样式        
			$(this).parents('tr').toggleClass("tr_active");
			// 找到checkbox对象     
			var chks = $("input[type='checkbox']", $(this).parents('tr'));
			var tag = $(this).parents('tr').attr("tag");
			if (tag == "selected") {
				// 之前已选中，设置为未选中       
				$(this).parents('tr').attr("tag", "");
				chks.prop("checked", false);
			} else {
				// 之前未选中，设置为选中   
				$(this).parents('tr').attr("tag", "selected");
				chks.prop("checked", true);
			}
		});
	});
	function deleteTest() {
		var names = document.getElementsByName("tst_nos");
		var flag = false;
		for(var i=0;i<names.length;i++){
            if(names[i].checked){
                   flag = true;
             }
         }
		if (!flag) {
			alert('至少选择一项！');
			return false;
		}
		if (!window.confirm("确认删除吗?")) {
	        return (false);
	    }
		document.testForm.action="<%=basePath %>/teacher/deleteTest.action";
		document.testForm.submit();
	}
	function searchTest(){
		document.testForm.action="<%=basePath %>/teacher/queryTest.action";
		document.testForm.submit();
	}
</script>
<title>教师系统</title>
</head>
<body>
<form name="testForm" action="<%=basePath %>/teacher/queryTest.action" method="post">
	<!-- 导航栏 -->
	<nav class="navbar navbar-default" role="navigation"
		style="width: 1600px">
		<div class="container-fluid" style="white-space: nowrap">
			<div style="white-space: nowrap">
				<ul class="nav navbar-nav" style="float: left">
					<li style="float: left"><a class="navbar-brand">欢迎，${username }老师</a>
					<li style="float: left"><a
						href="<%=basePath%>/teacher/teacherHome.action">试题系统</a></li>
					<li style="float: left" class="active"><a
						href="<%=basePath%>/teacher/queryTest.action">试卷查看</a></li>
				</ul>
			</div>
			<div class="navbar-brand"
				style="left: 1435px; top: 2px; position: absolute">
				<a class="navvar-brand" href="<%=basePath%>/logout.action">退出登录</a>
			</div>
		</div>
	</nav>

	<div style="width: 1536px">
		<table class="table table-hover">
			<caption>
				<span style="font-size: 20px; font-weight: bold; font-color: black">试卷列表</span>
				<!-- 搜索框 -->
				<div style="width: 400px; left: 1050px; top: 70px; position: absolute">
					<form class="bs-example bs-example-form" role="form">
						<div class="row">
							<div class="col-lg-6">
								<div class="input-group">
									<input type="text" name="testName" class="form-control" style="width: 310px">
									<span class="input-group-btn">
										<button class="btn btn-default" type="button" onclick="searchTest()">
											<span class="glyphicon glyphicon-search"></span>
										</button>
									</span>
								</div>
							</div>
						</div>
					</form>
				</div>
			</caption>
			<!-- 列表标题 -->
			<thead>
				<tr>
					<th>选中</th>
					<th>试卷编号</th>
					<th>试卷名称</th>
					<th>生成时间</th>
					<th>试卷类型</th>
					<th>试卷难度</th>
					<th>试题数量</th>
					<th>试卷分数</th>
					<th>查看</th>
				</tr>
			</thead>
			<!-- 列表内容 -->
			<tbody>
				<c:forEach items="${testList }" var="item">
					<tr>
						<!-- 多选框 -->
						<td><input name="tst_nos" value="${item.tstNo }" type="checkbox"></td>
						<td class="select">${item.tstNo }</td>
						<td class="select">${item.tstName }</td>
						<td class="select">${item.tstTime }</td>
						<td class="select">${item.tstType }</td>
						<td class="select">${item.tstDif }/10</td>
						<td class="select">${item.tstNum }</td>
						<td class="select">${item.tstScore }</td>
						<td><a href="<%=basePath %>/teacher/showTest.action?tstNo=${item.tstNo}"
							style="cursor: pointer">查看</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!-- 批量删除按钮 -->
		<div style="left: 1420px; top: 70px; position: absolute">
			<p>
				<button type="button" class="btn btn-danger" onclick="deleteTest()">删除选中</button>
			</p>
		</div>
	</div>
</form>
</body>
</html>