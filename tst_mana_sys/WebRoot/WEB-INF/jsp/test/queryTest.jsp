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
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=basePath %>/css/bootstrap.min.css" rel="stylesheet">
<link href="//cdn.bootcss.com/bootstrap-validator/0.5.3/css/bootstrapValidator.min.css" rel="stylesheet">
<script src="<%=basePath %>/js/jquery-3.4.1.min.js"></script>
<script src="<%=basePath %>/js/bootstrap.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>

</head>
<body>
<div class="container col-lg-3 col-lg-offset-3">
 <div class="page-header">
  <h3>用户注册</h3>
 </div>
 <div>
  <form id="registerForm" method="POST" class="form-horizontal" action="">
   <div class="form-group">
    <!--注册的用户名-->
    <label class="control-label" for="username">*请输入注册用户名:</label>
    <input type="text" class="form-control" placeholder="请输入注册用户名" name="username" id="username">
   </div>
   <div class="form-group">
    <!--注册密码-->
    <label class="control-label" for="password">*请输入注册密码:</label>
    <input type="password" class="form-control" placeholder="请输入注册密码" name="password" id="password">
   </div>
   <div class="form-group">
    <!--确认密码-->
    <label class="control-label" for="repassword">*请输入确认密码:</label>
    <input type="password" class="form-control" placeholder="请输入确认密码" name="repassword" id="repassword">
   </div>
   <div class="form-group">
    <label class="control-label" for="phone">*请输入手机号码:</label>
    <input type="text" class="form-control" placeholder="请输入手机号码" name="phone" id="phone">
   </div>
   <div class="form-group">
    <label class="control-label" for="email">*请输入电子邮箱:</label>
    <input type="text" class="form-control" placeholder="请输入电子邮箱" name="email" id="email">
   </div>
   <div class="form-group">
    <label class="control-label" for="inviteCode">*请输入邀请码:</label>
    <input type="text" class="form-control" placeholder="请输入邀请码" name="inviteCode" id="inviteCode">
   </div>
   <div class="form-group">
    <button type="submit" class="btn btn-primary form-control">提交注册</button>
   </div>
   <div class="form-group">
    <button type="button" id="testBtn" class="btn btn-primary form-control">测试</button>
   </div>
  </form>
 </div>
</div>
<script type="text/javascript">
	$("#testBtn").click(function () {
		//alert('saf');
		var username = $('#username').val();
		//alert(username);
		$.ajax({
			type:'post',
			url:'<%=basePath%>/responseJson.action',
			data:{"username":usrname},
			success:function(data){
				alert(data.tstName);
			},
			error:function(data){
				alert(data.tstName);
			}
		});		
	});		
</script>
<script>
 $(function () {
  <!--数据验证-->
  $("#registerForm").bootstrapValidator({
   message:'This value is not valid',
//   定义未通过验证的状态图标
   feedbackIcons: {/*输入框不同状态，显示图片的样式*/
    valid: 'glyphicon glyphicon-ok',
    invalid: 'glyphicon glyphicon-remove',
    validating: 'glyphicon glyphicon-refresh'
   },
//   字段验证
   fields:{
//    用户名
    username:{
     message:'用户名非法',
     validators:{
//      非空
      notEmpty:{
       message:'用户名不能为空'
      },
//      限制字符串长度
      stringLength:{
       min:3,
       max:20,
       message:'用户名长度必须位于3到20之间'
      },
//      基于正则表达是的验证
      regexp:{
       regexp:/^[a-zA-Z0-9_\.]+$/,
       message:'用户名由数字字母下划线和.组成'
      }
     }
    },
 
//    密码
    password:{
     message:'密码非法',
     validators:{
      notEmpty:{
       message:'密码不能为空'
      },
//      限制字符串长度
      stringLength:{
       min:3,
       max:20,
       message:'密码长度必须位于3到20之间'
      },
//      相同性检测
      identical:{
//       需要验证的field
       field:'password',
       message:'两次密码输入不一致'
      },
//      基于正则表达是的验证
      regexp:{
       regexp:/^[a-zA-Z0-9_\.]+$/,
       message:'密码由数字字母下划线和.组成'
      }
     }
    },
 
    //    确认密码
    repassword:{
     message:'密码非法',
     validators:{
      notEmpty:{
       message:'密码不能为空'
      },
//      限制字符串长度
      stringLength:{
       min:3,
       max:20,
       message:'密码长度必须位于3到20之间'
      },
//      相同性检测
      identical:{
//       需要验证的field
       field:'password',
       message:'两次密码输入不一致'
      },
//      基于正则表达是的验证
      regexp:{
       regexp:/^[a-zA-Z0-9_\.]+$/,
       message:'密码由数字字母下划线和.组成'
      }
     }
    },
 
//    电子邮箱
    email:{
     validators:{
      notEmpty:{
       message:'邮箱地址不能为空'
      },
      emailAddress:{
       message:'请输入正确的邮箱地址'
      }
     }
    },
 
//    手机号码
    phone:{
     validators:{
      notEmpty:{
       message:'手机号码不能为空'
      },
      stringlength:{
       min:11,
       max:11,
       message:'请输入11位手机号码'
      },
      regexp:{
       regexp:/^1[3|5|8]{1}[0-9]{9}$/,
       message:'请输入正确的手机号码'
      }
     }
    },
 
//    邀请码
    inviteCode:{
     validators:{
      notEmpty:{
       message:'邀请码不能为空'
      },
      stringlength:{
       min:9,
       max:9,
       message:'请输入9位邀请码'
      },
      regexp:{
       regexp:/^[\w]{8}$/,
       message:'邀请码由数字和字母组成'
      }
     }
    }
   }
  })
 })
</script>
</body>
</html> 