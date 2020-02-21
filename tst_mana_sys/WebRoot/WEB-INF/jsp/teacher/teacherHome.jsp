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
<!-- 引入boostrap -->
<link href="<%=basePath %>/css/bootstrap.css" rel="stylesheet">
<link href="<%=basePath %>/css/pagination.css" rel="stylesheet">
<script src="<%=basePath %>/js/jquery-3.4.1.min.js"></script>
<script src="<%=basePath %>/js/bootstrap.js"></script>
<script src="<%=basePath %>/js/jquery.pagination.js"></script>
<style type="text/css">
.bg-snow {
	background-color: #FFFAFA;
}
</style>
<script type="text/javascript">
$(function () {
	//创建分页
	var num_entries = $('#num_entries').val();
	var initPagination = function() {		
		// 创建分页
		$("#Pagination").pagination(num_entries, {
			num_edge_entries: 1, //边缘页数
			num_display_entries: 4, //主体页数
			callback: pageselectCallback,
			items_per_page:10 //每页显示10项
		});
	 }();
	 
	function pageselectCallback(page_index, jq){
		var max_elem = Math.min((page_index + 1) * 10, num_entries); 
		var prev_content = document.getElementById('searchResult').getElementsByTagName('tr');
		var hiddenresult = document.getElementById('hiddenResult');
		var length = prev_content.length;
		//console.log(prev_content);
		console.log(prev_content.length);
		for (var i = 0; i < length; i++) {
			//debugger;
			hiddenresult.appendChild(prev_content[0]);
		}		
		// 获取加载元素
		for(var i = page_index * 10; i < max_elem; i++){
			var content = document.getElementById('hiddenResult').getElementsByClassName('result' + i)[0];
			if (content != null) {
				document.getElementById('searchResult').appendChild(content);
			}			
		}
		return false;
	}
})	
</script>
<script>
	function formReset(form){
	   	form.reset(); 
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
	function check(form, revision) {
		if (form.proDetail.value == "") {
			alert("題目内容不能为空！");
			document.form.proDetail.focus();
			return (false);
		} else if (form.proKeyw.value == "") {
			alert("关键字不能为空！");
			document.form.proKeyw.focus();
			return (false);
		} else if (/^\d+$/.test(form.proDif.value)) {
			if (form.proDif.value<1||form.proDif.value>10) {
				alert("难度输入错误，请输入1~10的数字");
				document.form.proDif.focus();
				return (false);
			}
		} else if (!/^\d+$/.test(form.proDif.value)) {
			alert("难度输入错误，请输入1~10的数字");
			return (false);
		} else if (form.proDif.value == "") {
			alert("难度不能为空！");
			document.form.proDif.focus();
			return (false);
		} else if (form.chaNo.value.length > 20) {
			alert("章节编号过长");
			document.form.chaNo.focus();
			return (false);
		} else if (form.chaNo.value == "") {
			alert("章节编号不能为空！");
			document.form.chaNo.focus();
			return (false);
		} else if (form.chaTitle.value == "") {
			alert("章节标题不能为空！");
			document.form.chaTitle.focus();
			return (false);
		} else if (form.chaMpoint.value == "") {
			alert("章节要点不能为空！");
			document.form.chaMpoint.focus();
			return (false);
		} else if (form.proType.value == "") {
			alert("题型不能为空！");
			document.form.proType.focus();
			return (false);
		} else if (form.proAnsno.value == "") {
			alert("答案不能为空！");
			document.form.proAnsno.focus();
			return (false);
		}
		$(revision).modal('toggle')
		//window.location.href = "teacher.jsp"
		alert('修改成功!');
		form.action="<%=basePath %>/teacher/editProblem.action";
		form.submit();
	}
	function search(){
		document.teacherForm.action="<%=basePath %>/teacher/teacherHome.action";
		document.teacherForm.submit();
	}
	function check_none() {
		var names = document.getElementsByName("pro_nos");
		for(var i=0;i<names.length;i++){
            if(names[i].checked){
                   return true;
             }
         }
		return false;
	}
	function deleteProblem() {         
        var flag = check_none();//标记判断是否选中一个               
        if (!flag) {
            alert("请最少选择一项！");
            return false ;
        }
        if (!window.confirm("确认删除吗?")) {
        	return (false);
        } 
		document.teacherForm.action="<%=basePath %>/teacher/deleteProblem.action";
		document.teacherForm.submit();
	}
	function create_test() {
		var flag = check_none();//标记判断是否选中一个               
	    if (!flag) {
	        alert("请最少选择一项！");
	        return false ;
	    }
	    $('#create').modal('toggle') 
	}
	function create_check() {
		if (document.getElementById("tstName").value == "") {
			alert("试卷名称不能为空！");
			document.getElementById("tstName").focus();
			return (false);
		} else if (document.getElementById("tstTime").value == "") {
			alert("生成时间不能为空！");
			document.getElementById("tstTime").focus();
			return (false);
		}else if (document.getElementById("tstType").value == "") {
			alert("试卷类型不能为空！");
			document.getElementById("tstType").focus();
			return (false);
		}else if (document.getElementById("tstDif").value == "") {
			alert("试卷难度不能为空！");
			document.getElementById("tstDif").focus();
			return (false);
		}else if (document.getElementById("tstScore").value == "") {
			alert("试卷分数不能为空！");
			document.getElementById("tstScore").focus();
			return (false);
		} else if (!/^\d+$/.test(document.getElementById("tstScore").value)) {
			alert("总分输入错误，请输入数字");
			return (false);
		} else if (/^\d+$/.test(document.getElementById("tstDif").value)) {
			if (document.getElementById("tstDif").value<1||document.getElementById("tstDif").value>10) {
				alert("难度输入错误，请输入1~10的数字");
				document.getElementById("tstDif").focus();
				return (false);
			}
		} else if (!/^\d+$/.test(document.getElementById("tstDif").value)) {
			alert("难度输入错误，请输入1~10的数字");
			return (false);
		} 
	    if (!window.confirm("确认生成试卷吗?")) {
	       	return (false);
	    }
	    document.teacherForm.action="<%=basePath %>/teacher/createTest.action";
		document.teacherForm.submit(); 
	}
</script>
<script>
	function check_add() {
		if (form_add.proDetail.value == "") {
			alert("题目内容不能为空！");
			document.form_add.proDetail.focus();
			return (false);
		} else if (form_add.proKeyw.value == "") {
			alert("关键字不能为空！");
			document.form_add.proKeyw.focus();
			return (false);
		} else if (/^\d+$/.test(form_add.proDif.value)) {
			if (form_add.proDif.value<1||form_add.proDif.value>10) {
				alert("难度输入错误，请输入1~10的数字");
				document.form_add.proDif.focus();
				return (false);
			}
		} else if (!/^\d+$/.test(form_add.proDif.value)) {
			alert("难度输入错误，请输入1~10的数字");
			return (false);
		} else if (form_add.proDif.value == "") {
			alert("难度不能为空！");
			document.form_add.proDif.focus();
			return (false);
		} else if (form_add.chaNo.value.length > 20) {
			alert("章节编号过长");
			document.form_add.chaNo.focus();
			return (false);
		} else if (form_add.chaNo.value == "") {
			alert("章节编号不能为空！");
			document.form_add.chaNo.focus();
			return (false);
		} else if (form_add.chaTitle.value == "") {
			alert("章节标题不能为空！");
			document.form_add.chaTitle.focus();
			return (false);
		} else if (form_add.chaMpoint.value == "") {
			alert("章节要点不能为空！");
			document.form_add.chaMpoint.focus();
			return (false);
		} else if (form_add.proType.value == "") {
			alert("题目类型不能为空！");
			document.form_add.proType.focus();
			return (false);
		} else if (form_add.ansDetail.value == "") {
			alert("答案不能为空！");
			document.form_add.ansDetail.focus();
			return (false);
		}
		$('#add').modal('toggle')
		//window.location.href = "teacher.jsp"
		form_add.action="<%=basePath%>/teacher/addProblem.action";
		form_add.submit();
	}
</script>

<title>教师系统</title>
</head>
<body>
	<form name="teacherForm"
		action="<%=basePath%>/teacher/teacherHome.action" method="post">
		<!-- 导航栏 -->
		<nav class="navbar navbar-default" role="navigation"
			style="width: 1600px">
			<div class="container-fluid" style="white-space: nowrap">
				<div style="white-space: nowrap">
					<ul class="nav navbar-nav" style="float: left">
						<li style="float: left"><a class="navbar-brand">欢迎，${username }老师</a>
						<li class="active" style="float: left"><a
							href="<%=basePath%>/teacher/teacherHome.action">试题系统</a></li>
						<li style="float: left"><a
							href="<%=basePath%>/teacher/queryTest.action">试卷查看</a></li>
					</ul>
				</div>
				<div class="navbar-brand"
					style="left: 1435px; top: 2px; position: absolute">
					<a class="navvar-brand" href="<%=basePath%>/logout.action">退出登录</a>
				</div>
			</div>
		</nav>
		<div class="bg-snow"
			style="width: 200px; height: 100%; top: 50px; position: absolute">
			<div class="navbar navbar-default" id="mycollapse"
				style="width: 200px; height: 100%; left: 0px; position: absolute">
				<ul class="nav nav-pills nav-stacked bg-info">
					<li><a href="#choose" class="second-level accordion-toggle"
						data-toggle="collapse" data-parent="#mycollapse"> <i
							class="fa fa-table fa-fw"></i> <span
							class="glyphicon glyphicon-list-alt"></span>选择题 <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="nav collapse" id="choose">
							<li class="bg-snow"><a
								href="<%=basePath%>/teacher/teacherHome.action?proType=选择题&chaTitle=死锁">死锁</a></li>
							<li class="bg-snow"><a
								href="<%=basePath%>/teacher/teacherHome.action?proType=选择题&chaTitle=邓小平理论">邓小平理论</a></li>
							<li class="bg-snow"><a
								href="<%=basePath%>/teacher/teacherHome.action?proType=选择题&chaTitle=软件维护">软件维护</a></li>
						</ul></li>
					<li><a href="#blanks" class="second-level accordion-toggle"
						data-toggle="collapse" data-parent="#mycollapse"> <i
							class="fa fa-table fa-fw"></i> <span
							class="glyphicon glyphicon-list-alt"></span>填空题 <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="nav collapse" id="blanks">
							<li class="bg-snow"><a
								href="<%=basePath%>/teacher/teacherHome.action?proType=填空题&chaTitle=资源调度">资源调度</a></li>
							<li class="bg-snow"><a
								href="<%=basePath%>/teacher/teacherHome.action?proType=填空题&chaTitle=类图">类图</a></li>
						</ul></li>
					<li><a href="#TOF" class="second-level accordion-toggle"
						data-toggle="collapse" data-parent="#mycollapse"> <i
							class="fa fa-table fa-fw"></i> <span
							class="glyphicon glyphicon-list-alt"></span>判断题 <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="nav collapse" id="TOF">
							<li class="bg-snow"><a
								href="<%=basePath%>/teacher/teacherHome.action?proType=判断题&chaTitle=PV操作">PV操作</a></li>
						</ul></li>
					<li><a href="#answer" class="second-level accordion-toggle"
						data-toggle="collapse" data-parent="#mycollapse"> <i
							class="fa fa-table fa-fw"></i> <span
							class="glyphicon glyphicon-list-alt"></span>简答题 <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="nav collapse" id="answer">
							<li class="bg-snow"><a
								href="<%=basePath%>/teacher/teacherHome.action?proType=简答题&chaTitle=文件管理">文件管理</a></li>
							<li class="bg-snow"><a
								href="<%=basePath%>/teacher/teacherHome.action?proType=简答题&chaTitle=三个代表思想">三个代表思想</a></li>
							<li class="bg-snow"><a
								href="<%=basePath%>/teacher/teacherHome.action?proType=简答题&chaTitle=软件工程">软件工程</a></li>
						</ul></li>
						<li class="bg-info"><a
								href="<%=basePath%>/teacher/teacherHome.action">
								<span
							class="glyphicon glyphicon-list-alt"></span>全部</a></li>
				</ul>
				
			</div>
		</div>

		<!-- 试题列表 -->
		<div
			style="width: 1336px; left: 200px; top: 70px; position: absolute;">
			<input type="hidden" id="num_entries" value="${problemList.size() }">
			<table class="table table-hover">
				<caption>
					<span style="font-size: 20px; font-weight: bold; font-color: black">试题列表</span>
					<!-- 搜索框 -->
					<div
						style="width: 400px; left: 680px; top: 0px; position: absolute">
						<form class="bs-example bs-example-form" role="form">
							<div class="row">
								<div class="col-lg-6">
									<div class="input-group">
										<input type="text" name="problemName" class="form-control"
											style="width: 310px"> <span class="input-group-btn">
											<button class="btn btn-default" type="button"
												onclick="search()">
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
						<th style="width: 10%">选择</th>
						<th style="width: 20%">关键字</th>
						<th style="width: 10%">难度系数</th>
						<th style="width: 10%">所属章节编号</th>
						<th style="width: 10%">所属章节标题</th>
						<th style="width: 20%">所属章节要点</th>
						<th style="width: 10%">习题类型</th>
						<th style="width: 5%">细节</th>
						<th style="width: 5%">修改</th>
					</tr>
				</thead>
				<!-- 列表内容 -->
				<tbody id="searchResult"></tbody>

				<tbody id="hiddenResult" style="display: none">
					<c:forEach items="${problemList }" var="item" varStatus="status">
						<tr class="result${status.index }">
							<td class="select"><input type="checkbox" name="pro_nos"
								value="${item.proNo }"></td>
							<td class="select">${item.proKeyw }</td>
							<td class="select">${item.proDif }/10</td>
							<td class="select">${item.chaNo }</td>
							<td class="select">${item.chaTitle }</td>
							<td class="select">${item.chaMpoint }</td>
							<td class="select">${item.proType }</td>
							<!-- 查看试题内容的按钮 -->
							<td><a style="cursor: pointer"
								data-target="#detail${status.index }" data-toggle="modal">查看</a></td>
							<!-- 弹出框 -->
							<div class="modal fade" id="detail${status.index }" role="dialog"
								data-backdrop="static" data-keyboard="false">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												onclick="">
												<span>x</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">试题内容</h4>
										</div>
										<div class="modal-body">
											试题内容:<br>
											<textarea readonly rows="10" cols="75"
												style="font-size: 15px; resize: none">${item.proDetail }</textarea>
											<br> 答案：<br>
											<textarea readonly rows="5" cols="75"
												style="font-size: 15px; resize: none">${answerList[status.index] }</textarea>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-primary"
												data-dismiss="modal">确定</button>
										</div>
									</div>
								</div>
							</div>
							<!-- 修改试题内容的按钮 -->
							<td><a style="cursor: pointer"
								data-target="#revision${status.index }" data-toggle="modal">修改</a></td>
							<!-- 弹出框 -->
							<div class="modal fade" id="revision${status.index }"
								role="dialog" data-backdrop="static" data-keyboard="false">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												onclick="formReset(editform${status.index})">
												<span>x</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">试题内容</h4>
										</div>
										<form class="modal-body" name="editform${status.index }"
											method="post">
											<input type="hidden" name="proNo" value="${item.proNo }">
											试题内容
											<TextArea name="proDetail" class="form-control" rows="5"
												cols="9" style="font-size: 15px; resize: none">${item.proDetail }</TextArea>
											关键字<input type="text" name="proKeyw" class="form-control"
												value="${item.proKeyw }" style="font-size: 15px">
											难度系数<input type="text" name="proDif" class="form-control"
												value="${item.proDif }" style="font-size: 15px">
											所属章节编号<input type="text" name="chaNo" class="form-control"
												value="${item.chaNo }" style="font-size: 15px">
											所属章节标题<input type="text" name="chaTitle" class="form-control"
												value="${item.chaTitle }" style="font-size: 15px">
											所属章节要点<input type="text" name="chaMpoint"
												class="form-control" value="${item.chaMpoint }"
												style="font-size: 15px"> 习题类型<input type="text"
												name="proType" class="form-control" value="${item.proType }"
												style="font-size: 15px"> 答案
											<textarea name="ansDetail" class="form-control" rows="5"
												cols="9" style="font-size: 15px; resize: none">${answerList[status.index] }</textarea>
											<input type="hidden" name="proAnsno"
												value="${item.proAnsno }">
										</form>
										<div class="modal-footer">
											<input type="button" value="确定" class="btn btn-primary"
												onclick="check(editform${status.index}, revision${status.index })">
											<button type="button" class="btn btn-default"
												data-dismiss="modal"
												onclick="formReset(editform${status.index})">取消</button>
										</div>
									</div>
								</div>
							</div>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- 分页组件 -->
			<div id="Pagination" class="pagination"
			 style="left: 550px; top: 500px; position: absolute"></div>
		</div>
		<!-- 删除按钮 -->
		<div style="left: 1270px; top: 70px; position: absolute">
			<p>
				<button type="button" class="btn btn-danger"
					onclick="deleteProblem()">删除选中</button>
			</p>
		</div>
		<!-- 添加试题按钮 -->
		<div style="left: 1370px; top: 70px; position: absolute">
			<p>
				<button type="button" class="btn btn-primary" data-target="#add"
					data-toggle="modal" style="float: right">添加试题</button>
			</p>
		</div>
		<div style="left: 1470px; top: 70px; position: absolute">
			<p>
				<button type="button" class="btn btn-primary" style="float: right"
					onclick="create_test()">生成试卷</button>
			</p>
		</div>
		<!-- 弹出框 -->
		<div class="modal fade" id="add" role="dialog" data-backdrop="static"
			data-keyboard="false">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span>x</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">试题内容</h4>
					</div>
					<form class="modal-body" name="addForm" id="form_add"
						action="<%=basePath%>/teacher/addProblem.action" method="post">
						试题内容
						<textarea name="proDetail" class="form-control" rows="5" cols="9"
							style="font-size: 15px; resize: none"></textarea>
						关键字<input type="text" name="proKeyw" class="form-control" value=""
							style="font-size: 15px"> 难度系数<input type="text"
							name="proDif" class="form-control" value=""
							style="font-size: 15px"> 所属章节编号<input type="text"
							name="chaNo" class="form-control" value=""
							style="font-size: 15px"> 所属章节标题<input type="text"
							name="chaTitle" class="form-control" value=""
							style="font-size: 15px"> 所属章节要点<input type="text"
							name="chaMpoint" class="form-control" value=""
							style="font-size: 15px"> 习题类型<input type="text"
							name="proType" class="form-control" value=""
							style="font-size: 15px"> 答案
						<textarea name="ansDetail" rows="5" cols="5" class="form-control"
							style="font-size: 15px; resize: none"></textarea>
					</form>
					<div class="modal-footer">
						<input type="button" value="确定" class="btn btn-primary"
							onclick="check_add()">
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="create" role="dialog"
			data-backdrop="static" data-keyboard="false">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span>x</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">试题内容</h4>
					</div>
					<div class="modal-body" id="create_test">
						试卷名<input type="text" name="tstName" id="tstName"
							class="form-control" value="" style="font-size: 15px">
						创建时间<input type="text" name="tstTime" id="tstTime"
							class="form-control" value="" style="font-size: 15px">
						试卷类型<input type="text" name="tstType" id="tstType"
							class="form-control" value="" style="font-size: 15px">
						试卷难度<input type="text" name="tstDif" id="tstDif"
							class="form-control" value="" style="font-size: 15px">
						试卷总分<input type="text" name="tstScore" id="tstScore"
							class="form-control" value="" style="font-size: 15px">
					</div>
					<div class="modal-footer">
						<input type="button" value="确定" class="btn btn-primary"
							onclick="create_check()">
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>