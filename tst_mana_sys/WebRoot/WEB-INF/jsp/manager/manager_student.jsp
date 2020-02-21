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
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	function searchStudent() {
		document.studentForm.action="<%=basePath %>/manager/managerHome.action";
		document.studentForm.submit();
	}
	function deleteStudent() {
		var names = document.getElementsByName("stu_nos");
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
		document.studentForm.action="<%=basePath %>/manager/deleteStudent.action";
		document.studentForm.submit();
	}
	function formReset(form) {
   		form.reset(); 
	}
	function edit_check(form, revision) {
		if (form.stuPwd.value == "") {
			alert("密码不能为空！");
			form.stuPwd.focus();
			return (false);
		} else if (form.stuPwd.value.length > 20) {
			alert("密码过长！请输入20字符个以内！");
			form.stuPwd.focus();
			return (false);
		}else if (form.stuName.value == "") {
			alert("学生姓名不能为空！");
			form.stuName.focus();
			return (false);
		} else if (form.stuDiscipline.value == "") {
			alert("专业不能为空！");
			form.stuDiscipline.focus();
			return (false);
		} else if (form.stuGrade.value == "") {
			alert("年级不能为空！");
			form.stuGrade.focus();
			return (false);
		}
		$(revision).modal('toggle')
		//window.location.href = "admin_student.jsp"
		if (!window.confirm("确认修改?")) {
	       	return;
	    }
		form.action="<%=basePath %>/manager/editStudent.action";
		form.submit();
	}
	function add_check() {
		if (form_add.stuNo.value == "") {
			alert("学号不能为空！");
			form_add.stuNo.focus();
			return (false);
		} else if (form_add.stuPwd.value == "") {
			alert("密码不能为空！");
			form_add.stuPwd.focus();
			return (false);
		} else if (form_add.stuName.value == "") {
			alert("姓名不能为空！");
			form_add.stuName.focus();
			return (false);
		} else if (form_add.stuDiscipline.value == "") {
			alert("专业不能为空！");
			form_add.stuDiscipline.focus();
			return (false);
		} else if (form_add.stuGrade.value == "") {
			alert("年级不能为空！");
			form_add.stuGrade.focus();
			return (false);
		}
		var stuNo = $('#add_stuNo').val();
		$.ajax({
			type: 'post',
			url: '<%=basePath %>/manager/addStudentCheck.action',
			data: {"stuNo": stuNo},
			success: function (result) {
				if (result == "failed") {
					alert('该ID已存在，请更改id后重试！');
				}else {
					if (!confirm('确认添加？'))return false;
					$('#revision').modal('toggle')
					document.addForm.action="<%=basePath %>/manager/addStudent.action";
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
			if (tag=="selected") {             
				// 之前已选中，设置为未选中       
				$(this).parents('tr').attr("tag","");           
				chks.prop("checked",false);       
				} else {       
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
<form name="studentForm" id="studentForm" action="<%=basePath %>/manager/managerHome.action" method="post">
	<!-- 导航栏 -->
	<nav class="navbar navbar-default" role="navigation"
		style="width: 1600px">
		<div class="container-fluid" style="white-space: nowrap">
			<div style="white-space: nowrap">
				<ul class="nav navbar-nav" style="float: left">
					<li style="float: left"><a class="navbar-brand">欢迎，${username }</a>
					<li class="active" style="float: left"><a
						href="<%=basePath %>/manager/managerHome.action">学生管理</a></li>
					<li style="float: left"><a
						href="<%=basePath %>/manager/manageTeacher.action">教师管理</a></li>
				</ul>
			</div>
			<div class="navbar-brand"
				style="left: 1300px; top: 2px; position: absolute;cursor:pointer">
				<a class="navvar-brand" onclick="backup()">数据库备份</a>
			</div>
			<div class="navbar-brand"
				style="left: 1435px; top: 2px; position: absolute">
				<a class="navvar-brand" href="<%=basePath %>/login.action">退出登录</a>
			</div>
		</div>
	</nav>
	<div style="width: 1600px">
		<table class="table table-hover">
			<caption>
				学生列表
				<!-- 搜索框 -->
				<div style="left: 1000px; top: 70px; position: absolute">
					<form id="searchStudent" class="bs-example bs-example-form" role="form">
						<div class="row">
							<div class="col-lg-6">
								<div class="input-group">
									<input type="text" name="studentName" class="form-control"
										style="width: 310px"> <span class="input-group-btn">
										<button class="btn btn-default" type="button" onclick="searchStudent()">
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
									<button type="button" class="close" data-dismiss="modal">
										<span>x</span>
									</button>
									<h4 class="modal-title" id="myModalLabel">学生信息</h4>
								</div>
								<form class="modal-body" name="addForm" id="form_add">
									学号<input type="text" name="stuNo" id="add_stuNo" class="form-control" value="" style="font-size: 15px"> 
									学生姓名<input type="text" name="stuName" class="form-control" value="" style="font-size: 15px"> 
									密码<input type="text" name="stuPwd" class="form-control" value="" style="font-size: 15px"> 
									专业<input type="text" name="stuDiscipline" class="form-control" value="" style="font-size: 15px"> 
									年级<input type="text" name="stuGrade" class="form-control" value="" style="font-size: 15px">
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
				<!-- 批量删除按钮 -->
				<div style="left: 1435px; top: 70px; position: absolute">
					<p>
						<button type="button" class="btn btn-danger" onclick="deleteStudent()">删除选中</button>
					</p>
				</div>
				<!-- <div style="left: 500px; top: 70px; position: absolute">
					<p>
						<button type="button" class="btn btn-primary" onclick="backup()">备份</button>						
					</p>
				</div> -->
			</caption>
			<thead>
				<tr>
					<th>选中</th>
					<th>学号</th>
					<th>学生姓名</th>
					<th>密码</th>
					<th>专业</th>
					<th>年级</th>
					<th>修改</th>
				</tr>
			</thead>
			<!-- 以下内容是试题内容 -->
			<tbody>
			<c:forEach items="${studentList }" var="item" varStatus="status">
				<tr>
					<td class="select"><input name="stu_nos" value="${item.stuNo }" type="checkbox"></td>
					<td class="select">${item.stuNo }</td>
					<td class="select">${item.stuName }</td>
					<td class="select">${item.stuPwd }</td>
					<td class="select">${item.stuDiscipline }</td>
					<td class="select">${item.stuGrade }</td>
					<td><a style="cursor:pointer" data-target="#revision${status.index }" data-toggle="modal">修改</a></td>
					<!-- 弹出框 -->
					<div class="modal fade" id="revision${status.index }" role="dialog" data-backdrop="static" data-keyboard="false">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" onclick="formReset(form${status.index})">
										<span>x</span>
									</button>
									<h4 class="modal-title" id="myModalLabel">学生信息</h4>
								</div>
								<form class="modal-body" id="form${status.index }">
									<input type="hidden" name="stuNo" class="form-control" value="${item.stuNo }" style="font-size: 15px"> 
									学生姓名<input type="text" name="stuName" class="form-control" value="${item.stuName }" style="font-size: 15px">
									 密码<input type="text" name="stuPwd" class="form-control" value="${item.stuPwd }" style="font-size: 15px"> 
									专业<input type="text" name="stuDiscipline" class="form-control" value="${item.stuDiscipline }" style="font-size: 15px"> 
									年级<input type="text" name="stuGrade" class="form-control" value="${item.stuGrade }" style="font-size: 15px">
								</form>
								<div class="modal-footer">
									<input type="button" value="确定" class="btn btn-primary"
										onclick="edit_check(form${status.index}, revision${status.index })">
									<button type="button" class="btn btn-default"
										data-dismiss="modal" onclick="formReset(form${status.index})">取消</button>
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