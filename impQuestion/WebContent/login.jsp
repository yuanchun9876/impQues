<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>登录</title>
  
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Bootstrap 3.3.7 -->
	<link rel="stylesheet" href="static/bower_components/bootstrap/dist/css/bootstrap.min.css">
	
	<!-- Theme style -->
	<link rel="stylesheet" href="static/dist/css/AdminLTE.min.css">
	<!-- iCheck -->
	<link rel="stylesheet" href="static/plugins/iCheck/square/blue.css">
  
  <style>
    /*改变"记住我"与前置复选框的间距及高度*/
  	.icheckbox_square-blue{margin-right: 5px; top: -2px}
  </style>
</head>
<body class="hold-transition login-page" >
	<div class="login-box">
	  <div class="login-logo">
	    <span><b>Goods</b>YUZO管理平台</span>
	  </div>
	  
	  <div class="login-box-body">
	    <p class="login-box-msg">
	    	<img src="static/images/logo/logo2.png"/>
	    </p>
	    <form name="info" autocomplete="off" action="common/main.jsp" >
	      <div class="form-group has-feedback">
	        <input type="text" name="acName" class="form-control" value="admin" required placeholder="账号">
	        <span class="glyphicon glyphicon-user form-control-feedback"></span>
	      </div>
	      <div class="form-group has-feedback">
	        <input type="password" name="acPass" class="form-control" value="123qwe" required placeholder="密码" >
	        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
	      </div>
	      <div class="row">
	        <div class="col-xs-8">
	          <div class="checkbox icheck">
	            <label>
	              <input type="checkbox" name="rememberMe" value="true"> 记住账号
	            </label>
	          </div>
	        </div>
	        <div class="col-xs-4">
	          <button type="submit" class="btn btn-primary btn-block btn-flat">登 录</button>
	        </div>
	      </div>
	    </form>
			<p style="color:red;text-align:center; display:none;">登录失败的提示</p>
	  </div>
	</div>
</body>
	<!-- jQuery 3 -->
	<script src="static/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="static/plugins/jQueryUI/jquery-ui.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="static/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- AdminLTE App -->
	<script src="static/dist/js/adminlte.min.js"></script>
	<!-- iCheck -->
	<script src="static/plugins/iCheck/icheck.min.js"></script>
	

  <script type="text/javascript" >
  
  	$.widget.bridge('uibutton', $.ui.button);
  	  

	  $(function () {
	    $('input').iCheck({
	      checkboxClass: 'icheckbox_square-blue',
	      radioClass: 'iradio_square-blue',
	      increaseArea: '20%' /* optional */
	    });
	  });

 
</script>
</html>
