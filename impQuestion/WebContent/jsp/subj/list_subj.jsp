
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN" xmlns:th="http://www.thymeleaf.org">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>查询页面</title>
		<!-- Tell the browser to be responsive to screen width -->
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<!-- Bootstrap 3.3.7 -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/static/bower_components/bootstrap/dist/css/bootstrap.min.css">

		<!-- Theme style -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/static/dist/css/AdminLTE.min.css">
		<!-- AdminLTE Skins. Choose a skin from the css/skins
	       folder instead of downloading all of them to reduce the load. -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/static/dist/css/skins/_all-skins.min.css">

		<style>
			/*表格条件查询的样式  */
			
			.box-header {
				display: flex;
			}
			
			.box-header .box-search {
				max-width: 300px;
				padding-right: 10px;
			}
			
			.box-header .box-search:last-child {
				margin-left: auto;
			}
			/*表格中td的样式 */
			
			.box-body table th {
				text-align: center;
			}
			
			.box-body table td {
				text-align: center;
			}
			
			.modal-body .form-group {
				display: flex;
			}
			
			.modal-body .form-group>input {
				display: block;
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
				-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
				box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
				-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
				-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
				transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
			}
			
			.modal-body .form-group>input:focus {
				border-color: #66afe9;
				outline: 0;
				-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
				box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
			}
			
			.modal-body .form-group>label {
				padding-right: 5px;
			}
			
			.content-wrapper {
				margin-left: 0px;
			}
			
			@media only screen and (max-width: 768px) {
				.box-header{
					flex-direction: column;
				}
				.box-header .box-search{
					margin: 10px auto;
				}
			}
		</style>
	</head>

	<body class="hold-transition skin-blue sidebar-mini">
		<div class="wrapper">

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
			         	仓库查询
			        </h1>
					<ol class="breadcrumb">
						<li>
							<a href="<%=request.getContextPath()%>/common/dashboard.html"><i class="glyphicon glyphicon-globe"></i>导航</a>
						</li>
						<li class="active">
							<a href="#">仓库查询</a>
						</li>
					</ol>
				</section>

				<!-- Main content -->
				<section class="content">
					<div class="box">
						<form name="infoForm" id="queryForm" method="post">
							<div class="box-header clearfix">
								
								<div class="box-search btn-group">
									<button class="btn btn-info" name="queryInfo">查询</button>
									<button type="button" class="btn btn-primary" name="clearInfo" onclick="javascript:clearEle()">清空</button>
									<button type="button" class="btn btn-success" name="addInfo" onclick="javascript:addPage()">添加</button>
									<button type="button" class="btn btn-warning" name="delbtn" onclick="javascript:dels()">删除</button>
								</div>
							</div>
						</form>
						<!-- /.box-header -->
						<div class="box-body no-padding">
							<table class="table table-striped">
								<tr>
									<th>序号</th>
									<th>subjectId</th>
									<th>subjectName</th>
									<th>subjectPid</th>
									<th>subjectPidName</th>
									
									<th>jsfxid</th>
									<th>fxmc</th>
									
									
								</tr>
								<c:forEach items="${list }" var="subj" varStatus="i">
									<tr>
										<td>${i.count }</td>
										<td>${subj.subjectId }</td>
										<td>${subj.subjectName }</td>
										<td>${subj.subjectPid }</td>
										<td>${subj.subjectPidName }</td>
										
										<td>${subj.jsfxid }</td>
										<td>${subj.fxmc }</td>
										
										
									</tr>
								</c:forEach>
								
							</table>
						</div>
					</div>
					<!-- /.row -->
				</section>
				<!-- /.content -->
			</div>
		</div>
		<!-- ./wrapper -->
	</body>
	<!-- jQuery 3 -->
	<script src="<%=request.getContextPath()%>/static/bower_components/jquery/dist/jquery.min.js"></script>

	<!-- Bootstrap 3.3.7 -->
	<script src="<%=request.getContextPath()%>/static/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- AdminLTE App -->
	<script src="<%=request.getContextPath()%>/static/dist/js/adminlte.min.js"></script>

	<!-- bootbox -->
	<script src="<%=request.getContextPath()%>/static/bower_components/bootbox/js/bootbox.js"></script>

	<script type="text/javascript">
		

		

		function clearEle() {

			bootbox.confirm("确定要清空查询条件吗?", function(result) {
				if(result) {
					$("[name=infoForm] input").val("");
				} else {
					console.log("no");
				}
			});
		}
		
		function dels(){
			if(confirm("你确定要删除吗?")){
				document.delsForm.submit();
			}
		}
		
		function addPage(){
			window.location.href = "<%=request.getContextPath()%>/warehouse.do?method=addPage";
		}
		
		function editPage(id) {
			window.location.href = "<%=request.getContextPath()%>/warehouse.do?method=editPage&id="+id;
		}
		
		function setWarehousePage(id) {
			window.location.href = "<%=request.getContextPath()%>/goodsWarehouse.do?method=queryByWarehouse&id="+id;
		}
		
	</script>

</html>