<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<link rel="stylesheet" href="<%=basePath %>/css/bootstrap.min.css">
<script src="<%=basePath %>/js/jquery-3.4.1.min.js"></script>
<script src="<%=basePath %>/js/bootstrap.min.js"></script>
<title>试题库管理系统登陆</title>
<script>
<!--选择不同的单选按钮登陆到不同界面的函数 -->
	function check() {
		if (form1.username.value == "") {
			alert("账号不能为空！");
			document.form1.username.focus();
			return (false);
		} else if (form1.password.value == "") {
			alert("密码不能为空！");
			document.form1.password.focus();
			return (false);
		} else if (form1.username.value.length > 20) {
			alert("账号过长！");
			document.form1.username.focus();
			return (false);
		} else if (form1.password.value.length > 20) {
			alert("密码过长！");
			document.form1.password.focus();
			return (false);
		}
		//alert('sdasdfs');
		var username = $('#username').val();
		var password = $('#password').val();
		
		//alert(username + '    ' + password);
		$.ajax({
			type: 'post',
			url: '<%=basePath %>/studentLoginCheck.action',
			//dataType:'text',
			contentType:'application/json;charset=utf-8',
			data: JSON.stringify({"username": username, "password": password}),
			success: function (result) {
				if (result == "failed") {
					alert('登陆失败！账号密码不匹配！');
				}else {
					document.getElementById("submit").click();
				}
			},
	        error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert(XMLHttpRequest.status);
                alert(XMLHttpRequest.readyState);
             	alert(textStatus);
	        }
		});		
		
	}
</script>
</head>
<body class="bg-info">
	<div style="text-align: center; font-family: Verdana; font-size: 50px">试题库管理系统</div>	
	<form name="form1" action="<%=basePath%>/student/studentHome.action" method="post">
		<div style="left: 100px; top: 100px; position: absolute">
			<img src="<%=basePath%>/img/loginbg.jpg"
				style="vertical-align: middle; width: 800px; height: 600px">
		</div>
		<div style="left: 1000px; top: 200px; position: absolute">
			<br> <input type="text" class="form-control" id="username"
				placeholder="学号/工号/账号" style="font-size: 20px; width: 250px">
			<br> <input type="password" class="form-control" id="password"
				placeholder="密码" style="font-size: 20px; width: 250px"> <br>
				<a style="font-size: 15px" href="<%=basePath %>/teacherLogin.action">教师登录</a>
				<a style="font-size: 15px; margin-left:110px" href="<%=basePath %>/managerLogin.action">管理员登录</a>
				<br><br>
			<input type="button" value="学生登录" style="font-size: 20px; width: 250px"
				class="btn btn-info" onclick="check()"> <input type="submit"
				id="submit" style="visibility: hidden"> <br>
		</div>
	</form>

</body>
</html>