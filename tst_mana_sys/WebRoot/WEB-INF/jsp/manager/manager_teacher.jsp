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
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	function searchTeacher() {
		document.teacherForm.action="<%=basePath %>/manager/manageTeacher.action";
		document.teacherForm.submit();
	}
	function deleteTeacher() {
		var names = document.getElementsByName("tea_nos");
		var flag = false;
		for(var i = 0;i < names.length; i++){
            if(names[i].checked){
                   flag = true;
             }
         }
		if (!flag) {
			alert('请选择至少一条记录！');
			return;
		}
		if (!window.confirm("确认删除?")) {
	       	return;
	    }
		document.teacherForm.action="<%=basePath %>/manager/deleteTeacher.action";
		document.teacherForm.submit();
	}
	function formReset(form) {
   		form.reset(); 
	}
	function edit_check(form, revision) {
		if (form.teaPwd.value == "") {
			alert("密码不能为空！");
			document.form.teaPwd.focus();
			return (false);
		} else if (form.teaPwd.value.length > 20) {
			alert("密码过长！");
			document.form.teaPwd.focus();
			return (false);
		}else if (form.teaName.value == "") {
			alert("姓名不能为空！");
			document.form.teaName.focus();
			return (false);
		} else if (form.teaDiscipline.value == "") {
			alert("专业不能为空！");
			document.form.teaDiscipline.focus();
			return (false);
		}
		$(revision).modal('toggle')
		if (!window.confirm("确认修改?")) {
	       	return;
	    }
		form.action="<%=basePath %>/manager/editTeacher.action";
		form.submit();
	}
	function add_check() {
		if (form_add.teaNo.value == "") {
			alert("账号不能为空！");
			document.form_add.teaNo.focus();
			return (false);
		} else if (form_add.teaPwd.value == "") {
			alert("密码不能为空！");
			document.form_add.teaPwd.focus();
			return (false);
		} else if (form_add.teaName.value == "") {
			alert("姓名不能为空！");
			document.form_add.teaName.focus();
			return (false);
		} else if (form_add.teaDiscipline.value == "") {
			alert("专业不能为空！");
			document.form_add.teaDiscipline.focus();
			return (false);
		}
		var teaNo = $('#add_teaNo').val();
		$.ajax({
			type: 'post',
			url: '<%=basePath %>/manager/addTeacherCheck.action',
			data: {"teaNo": teaNo},
			success: function (result) {
				if (result == "failed") {
					alert('该ID已存在，请更改id后重试！');
				}else {
					if (!confirm('确认添加？'))return false;
					$('#revision').modal('toggle')
					document.addForm.action="<%=basePath %>/manager/addTeacher.action";
					document.addForm.submit();
				}
			},
	        error: function (XMLHttpRequest, textStatus, errorThrown) {
                alert(XMLHttpRequest.status);
                alert(XMLHttpRequest.readyState);
             	alert(textStatus);
	        }
		});
		
	}
	 $(function () {        //除了表头（第一行）以外所有的行添加click事件.    
			$("tr").slice(1).on("click",".select",function () {        
				// 切换样式        
				$(this).parents('tr').toggleClass("tr_active");       
			// 找到checkbox对象     
				var chks = $("input[type='checkbox']",$(this).parents('tr'));       
				var tag = $(this).parents('tr').attr("tag");       
				if(tag=="selected"){             
					// 之前已选中，设置为未选中       
					$(this).parents('tr').attr("tag","");           
					chks.prop("checked",false);       
					}else{       
						// 之前未选中，设置为选中   
						$(this).parents('tr').attr("tag","selected");     
						chks.prop("checked",true);         
						}   
				}); 
		});
	 function backup() {
			$.ajax({
				type: 'post',
				url: '<%=basePath %>/manager/backupDatabase.action',
				success: function (result) {
					if (result == "success") {
						alert('备份成功！');
					}else {
						alert('备份失败！');
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
<title>管理员系统</title>
</head>
<body>
<form name="teacherForm" id="teacherForm" action="<%=basePath %>/manager/manageTeacher.action" method="post">
	<!-- 导航栏 -->
	<nav class="navbar navbar-default" role="navigation"
		style="width: 1600px">
		<div class="container-fluid" style="white-space: nowrap">
			<div style="white-space: nowrap">
				<ul class="nav navbar-nav" style="float: left">
					<li style="float: left"><a class="navbar-brand">欢迎，${username }</a>
					<li style="float: left"><a href="<%=basePath %>/manager/managerHome.action">学生管理</a></li>
					<li class="active" style="float: left"><a
						href="<%=basePath %>/manager/manageTeacher.action">教师管理</a></li>
				</ul>
			</div>
			<div class="navbar-brand"
				style="left: 1300px; top: 2px; position: absolute;cursor:pointer">
				<a class="navvar-brand" onclick="backup()">数据库备份</a>
			</div>
			<div class="navbar-brand"
				style="left: 1435px; top: 2px; position: absolute">
				<a class="navvar-brand" href="<%=basePath %>/logout.action">退出登录</a>
			</div>
		</div>
	</nav>
	<div style="width: 1600px">
		<table class="table table-hover">
			<caption>
				教师列表
				<!-- 搜索框 -->
				<div style="left: 1000px; top: 70px; position: absolute">
					<form class="bs-example bs-example-form" name="search" role="form">
						<div class="row">
							<div class="col-lg-6">
								<div class="input-group">
									<input type="text" name="teacherName" id="teacherName" class="form-control" value="" style="width: 310px">
									<span class="input-group-btn">
										<button class="btn btn-default" type="button" onclick="searchTeacher()">
										 	<span class="glyphicon glyphicon-search"></span>
										</button>
									</span>
								</div>
							</div>
						</div>
					</form>
				</div>
				<!-- 添加按钮 -->
				<div style="left: 1370px; top: 70px; position: absolute">
					<p>
						<button type="button" class="btn btn-primary" data-target="#add"
							data-toggle="modal">添加</button>
					<!-- 弹出框 -->
					<div class="modal fade" id="add" role="dialog" data-backdrop="static" data-keyboard="false">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" onclick="formReset(form_add)">
										<span>x</span>
									</button>
									<h4 class="modal-title" id="myModalLabel">教师信息</h4>
								</div>
								<form class="modal-body" name="addForm" id="form_add">
									工号<input type="text" name="teaNo" id="add_teaNo" class="form-control" value="" style="font-size: 15px"> 
									教师姓名<input type="text" name="teaName" class="form-control" value="" style="font-size: 15px">
									密码<input type="text" name="teaPwd" class="form-control" value="" style="font-size: 15px">
									专业<input type="text" name="teaDiscipline" class="form-control" value="" style="font-size: 15px">
									邮箱<input type="text" name="teaMail" class="form-control" value="" style="font-size: 15px">
								</form>
								<div class="modal-footer">
									<input type="button" value="确定" class="btn btn-primary"
										onclick="add_check()">
								</div>
							</div>
						</div>
					</div>
					</p>
				</div>
				<!-- 删除按钮 -->
				<div style="left: 1435px; top: 70px; position: absolute">
					<p>
						<button type="button" class="btn btn-danger" onclick="deleteTeacher()">删除选中</button>
					</p>
				</div>
			</caption>
			<thead>
				<tr>
					<th>选中</th>
					<th>工号</th>
					<th>教师姓名</th>
					<th>密码</th>
					<th>专业</th>
					<th>邮箱</th>
					<th>修改</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${teacherList }" var="item" varStatus="status">
				<tr>
					<td class="select"><input name="tea_nos" value="${item.teaNo }" type="checkbox"></td>
					<td class="select">${item.teaNo }</td>
					<td class="select">${item.teaName }</td>
					<td class="select">${item.teaPwd }</td>
					<td class="select">${item.teaDiscipline }</td>
					<td class="select">${item.teaMail }</td>
					<td><a style="cursor:pointer" data-target="#revision${status.index }" data-toggle="modal">修改</a></td>
					<!-- 弹出框 -->
					<div class="modal fade" id="revision${status.index }" role="dialog" data-backdrop="static" data-keyboard="false">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" onclick="formReset(form${status.index })">
										<span>x</span>
									</button>
									<h4 class="modal-title" id="myModalLabel">教师信息</h4>
								</div>
								<form class="modal-body" id="form${status.index }">
									工号<input type="hidden" name="teaNo" class="form-control" value="${item.teaNo }" style="font-size: 15px"> 
									教师姓名<input type="text" name="teaName" class="form-control" value="${item.teaName }" style="font-size: 15px">
									密码<input type="text" name="teaPwd" class="form-control" value="${item.teaPwd }" style="font-size: 15px">
									专业<input type="text" name="teaDiscipline" class="form-control" value="${item.teaDiscipline }" style="font-size: 15px"> 
									邮箱<input type="text" name="teaMail" class="form-control" value="${item.teaMail }" style="font-size: 15px">
								</form>
								<div class="modal-footer">
									<input type="submit" value="确定" class="btn btn-primary"
										onclick="edit_check(form${status.index } ,revision${status.index })">
									<button type="button" class="btn btn-default" onclick="formReset(form${status.index })"
										data-dismiss="modal">取消</button>
								</div>
							</div>
						</div>
					</div>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</form>
</body>
</html>