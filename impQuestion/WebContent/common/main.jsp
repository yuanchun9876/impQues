<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN" >
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>MetaMooc</title>
   <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/static/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/static/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/static/dist/css/skins/_all-skins.min.css">
  
	<style >
      .modal-body .form-group{display: flex;}
      .modal-body .form-group>input{display: block;
									width: 100%;
									height: 34px;
									padding: 6px 12px;
									font-size: 14px;
									line-height: 1.42857143;
									color: #555;
									background-color: #fff;
									background-image: none;
									border: 1px solid #ccc;
									border-radius: 4px;
									-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
									box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
									-webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
									-o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
									transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;}
			.modal-body .form-group>input:focus{border-color: #66afe9;
								        outline: 0;
								        -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
								        box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);}
    	.modal-body .form-group>label{padding-right: 5px;}

  </style>
  
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
  
  	<header class="main-header" >
  		<!-- Logo -->
	    <a href="dashboard.html" class="logo" target="ifr_content" >
	      <!-- mini logo for sidebar mini 50x50 pixels -->
	      <span class="logo-mini">
	      	<img src="<%=request.getContextPath() %>/static/images/logo/yun_logo.png" width="40"/>
	      </span>
	      <!-- logo for regular state and mobile devices -->
	      <span class="logo-lg"><b>Meta</b>MOOC管理平台</span>
	    </a>
	    <!-- Header Navbar: style can be found in header.less -->
	    <nav class="navbar navbar-static-top">
	      <!-- Sidebar toggle button-->
	      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
	        <span class="sr-only">Toggle navigation</span>
	      </a>
	      <div class="navbar-custom-menu">
	        <ul class="nav navbar-nav">
	          <!-- User Account: style can be found in dropdown.less -->
	          <li class="dropdown user user-menu">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
	              <img src="<%=request.getContextPath() %>/static/images/face/damo.jpg" class="user-image" alt="达摩老师">
	              <span class="hidden-xs">操作</span>
	            </a>
	            <ul class="dropdown-menu">
	              <!-- User image -->
	              <li class="user-header">
	                <img src="<%=request.getContextPath() %>/static/images/face/damo.jpg" class="img-circle" alt="达摩老师">
	                <p> 达摩<small>一苇渡江  九年面壁</small></p>
	              </li>
	              <!-- Menu Body -->
	              <li class="user-body">
	                <div class="row">
	                  <div class="col-xs-4 text-center">
	                    <a href="#">修改密码</a>
	                  </div>
	                  <div class="col-xs-4 text-center">
	                    <a href="#">常用功能</a>
	                  </div>
	                  <div class="col-xs-4 text-center">
	                    <a href="#">常用功能</a>
	                  </div>
	                </div>
	                <!-- /.row -->
	              </li>
	              <!-- Menu Footer-->
	              <li class="user-footer">
	                <div class="pull-left">
	                  <a href="#" class="btn btn-default btn-flat">个人信息</a>
	                </div>
	                <div class="pull-right">
	                  <a href="<%=request.getContextPath() %>/login.html" class="btn btn-default btn-flat">退出</a>
	                </div>
	              </li>
	            </ul>
	          </li>
	        </ul>
	      </div>
	    </nav>
  	</header>
  	
  	<aside class="main-sidebar" > 
    <!-- sidebar: style can be found in sidebar.less -->
	    <section class="sidebar">
	      <!-- Sidebar user panel -->
	      <div class="user-panel">
	        <div class="pull-left image">
	          <img src="<%=request.getContextPath() %>/static/images/face/damo.jpg" class="img-circle" alt="User Image">
	        </div>
	        <div class="pull-left info">
	          <p>达摩</p>
	          <a href="#"><i class="glyphicon glyphicon-link text-success"></i> 在线</a>
	        </div>
	      </div>
	      <!-- search form -->
	      <form action="#" method="get" class="sidebar-form">
	        <div class="input-group">
	          <input type="text" name="q" class="form-control" placeholder="搜索<%=request.getContextPath() %>.">
	          <span class="input-group-btn">
	                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
	                </button>
	              </span>
	        </div>
	      </form>
	      <!-- /.search form -->
	      <!-- sidebar menu: : style can be found in sidebar.less -->
	      <ul class="sidebar-menu" data-widget="tree">
	      	        <li class="treeview" >
						<a href="#">
							<i class="glyphicon glyphicon-tasks"></i> 
							<span >例子菜单</span>
							<span  class="pull-right-container">
								<i class="glyphicon glyphicon-chevron-left pull-right"></i>
							</span>	
						</a>
						<ul class="treeview-menu">
		            <li >
		            	<a href="../example/list.html"  target="ifr_content"  >
		            		<i class="glyphicon glyphicon-record"></i>
		            		<span >列表</span>
		            	</a>
		            </li>
		            <li >
		            	<a href="../example/add.html" target="ifr_content" >
		            		<i class="glyphicon glyphicon-record"></i>
		            		<span >添加</span>
		            	</a>
		            </li>
		            <li >
		            	<a href="../example/edit.html" target="ifr_content" >
		            		<i class="glyphicon glyphicon-record"></i>
		            		<span >修改</span>
		            	</a>
		            </li>
		        </ul>
					</li>
	        <li class="treeview" >
						<a href="#">
							<i class="glyphicon glyphicon-paperclip"></i> 
							<span >信息维护</span>
							<span  class="pull-right-container">
								<i class="glyphicon glyphicon-chevron-left pull-right"></i>
							</span>	
						</a>
						<ul class="treeview-menu">
		              <li >
		            	<a href="<%=request.getContextPath() %>/subj/query.action"  target="ifr_content"  >
		            		<i class="glyphicon glyphicon-record"></i>
		            		<span >subj列表</span>
		            	</a>
		            </li>
		            <li >
		            	<a href="<%=request.getContextPath() %>/qstn/query.action"  target="ifr_content"  >
		            		<i class="glyphicon glyphicon-record"></i>
		            		<span >qstn列表</span>
		            	</a>
		            </li>
		             <li >
		            	<a href="<%=request.getContextPath() %>/jsp/qstn/package_imp.jsp"  target="ifr_content"  >
		            		<i class="glyphicon glyphicon-record"></i>
		            		<span >批量导入</span>
		            	</a>
		            </li>
		              <li >
		            	<a href="<%=request.getContextPath() %>/goodsWarehouse.do?method=query"  target="ifr_content"  >
		            		<i class="glyphicon glyphicon-record"></i>
		            		<span >库存列表</span>
		            	</a>
		            </li>
		        </ul>
				
				</li>
	      </ul>
	    </section>
  	</aside>
  	
	  <!-- Content Wrapper. Contains page content -->
	  <div class="content-wrapper">
	  	<iframe  name="ifr_content"   src="dashboard.html"   style="width:100%;height:550px;border:0px solid;"  ></iframe>
	  </div>
	  
	  <!-- /.content-wrapper -->
	  <footer class="main-footer" >
	  	 <div class="pull-right hidden-xs">
		      <b>Version</b> 2.4.0
		    </div>
		    <strong>Copyright &copy; 2018-2888 <a href="http://www.turingmeta.com">MetaMooc</a>.</strong> All rights
		    reserved.
	  </footer>

	</div>
<!-- ./wrapper -->
</body>
	<!-- jQuery 3 -->
	<script src="<%=request.getContextPath() %>/static/bower_components/jquery/dist/jquery.min.js"></script>

	<!-- Bootstrap 3.3.7 -->
	<script src="<%=request.getContextPath() %>/static/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- FastClick -->
	<script src="<%=request.getContextPath() %>/static/bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="<%=request.getContextPath() %>/static/dist/js/adminlte.min.js"></script>

	<script type="text/javascript">




	</script>
	
</html>