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
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=basePath%>/css/bootstrap.css" rel="stylesheet">
<link href="<%=basePath%>/css/pagination.css" rel="stylesheet">
<link href="<%=basePath%>/css/style.css" rel="stylesheet">
<script src="<%=basePath%>/js/jquery-3.4.1.min.js"></script>
<script src="<%=basePath%>/js/bootstrap.js"></script>
<script src="<%=basePath%>/js/jquery.pagination.js"></script>

<script type="text/javascript">
	$(function() {
		var num_entries = $('#num_entries').val();
		var initPagination = function() {
			// 创建分页
			$("#Pagination").pagination(num_entries, {
				num_edge_entries : 1, //边缘页数
				num_display_entries : 4, //主体页数
				callback : pageselectCallback,
				items_per_page : 10
			//每页显示1项
			});
		}();

		function pageselectCallback(page_index, jq) {
			var max_elem = Math.min((page_index + 1) * 10, num_entries);
			//$("#Searchresult").html("");
			var prev_content = document.getElementById('Searchresult')
					.getElementsByTagName('tr');
			var hiddenresult = document.getElementById('hiddenresult');
			var length = prev_content.length;
			//console.log(prev_content);
			console.log(prev_content.length);
			for (var i = 0; i < length; i++) {
				//debugger;
				hiddenresult.appendChild(prev_content[0]);
			}
			// 获取加载元素
			for (var i = page_index * 10; i < max_elem; i++) {
				var content = document.getElementById('hiddenresult')
						.getElementsByClassName('result' + i)[0];
				if (content != null) {
					document.getElementById('Searchresult')
							.appendChild(content);
				}
			}
			return false;
		}
	});
</script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var trigger = $('.hamburger'), overlay = $('.overlay'), isClosed = false;

						trigger.click(function() {
							hamburger_cross();
						});

						function hamburger_cross() {

							if (isClosed == true) {
								overlay.hide();
								trigger.removeClass('is-open');
								trigger.addClass('is-closed');
								isClosed = false;
							} else {
								overlay.show();
								trigger.removeClass('is-closed');
								trigger.addClass('is-open');
								isClosed = true;
							}
						}

						$('[data-toggle="offcanvas"]').click(function() {
							$('#wrapper').toggleClass('toggled');
						});
					});
</script>
</head>
<body>
	<div id="wrapper">
		<div class="overlay"></div>
		<nav class="navbar navbar-inverse navbar-fixed-top"
			id="sidebar-wrapper" role="navigation">
			<ul class="nav sidebar-nav">
				<li class="sidebar-brand"><a href="#"> Bootstrap 3 </a></li>
				<li><a href="#"><i class="fa fa-fw fa-home"></i> Home</a></li>
				<li><a href="#"><i class="fa fa-fw fa-folder"></i> Page one</a>
				</li>
				<li><a href="#"><i class="fa fa-fw fa-file-o"></i> Second
						page</a></li>
				<li><a href="#"><i class="fa fa-fw fa-cog"></i> Third page</a>
				</li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><i class="fa fa-fw fa-plus"></i>
						Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li class="dropdown-header">Dropdown heading</li>
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li><a href="#">Separated link</a></li>
						<li><a href="#">One more separated link</a></li>
					</ul></li>
				<li><a href="#"><i class="fa fa-fw fa-bank"></i> Page four</a>
				</li>
				<li><a href="#"><i class="fa fa-fw fa-dropbox"></i> Page 5</a>
				</li>
				<li><a href="#"><i class="fa fa-fw fa-twitter"></i> Last
						page</a></li>
			</ul>
		</nav>
		<div id="page-content-wrapper">
			<button type="button" class="hamburger is-closed animated fadeInLeft"
				data-toggle="offcanvas">
				<span class="hamb-top"></span> <span class="hamb-middle"></span> <span
					class="hamb-bottom"></span>
			</button>
			<div class="container">
				<table width="80%" border=1>
					<tr>
						<td>选择</td>
						<td>编号</td>
						<td>试卷名</td>
						<td>时间</td>
						<td>类型</td>
						<td>难度</td>
						<td>试题数</td>
						<td>总分</td>
						<td>操作</td>
					</tr>
					<tbody id="Searchresult">
					</tbody>
				</table>
				<div id="Pagination" class="pagination">
					<!-- 这里显示分页 -->
				</div>
				<p style="color:red">该界面仅供测试用，请勿随意修改！</p>
				<input type="hidden" id="num_entries" value="${problemList.size() }">
				<table width="80%" border=1>
					<tbody id="hiddenresult" style="display: none">
						<c:forEach items="${problemList }" var="item" varStatus="status">
							<tr class="result${status.index }">
								<td><input type="checkbox" name="tst_Nos"
									value="${problemList[status.index].proNo}"></td>
								<td>${problemList[status.index].proNo}</td>
								<td>${problemList[status.index].chaMpoint}</td>
								<td>${problemList[status.index].proAnsno}</td>
								<td>${problemList[status.index].proKeyw}</td>
								<td>${problemList[status.index].proDif}</td>
								<td>${problemList[status.index].chaNo}</td>
								<td>${problemList[status.index].chaTitle}</td>
								<td><a href="#">修改</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
