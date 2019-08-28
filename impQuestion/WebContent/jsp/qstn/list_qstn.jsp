
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
						<form name="infoForm" id="queryForm" method="post" action="<%=request.getContextPath() %>/qstn/query.action">
							<div class="box-header clearfix">
								<div class="box-search">
									<div class="input-group">
										<span class="input-group-addon" style="background: #EEEEEE;">科目</span>
										<select class="form-control" name="jsfxid"   onchange="selectSubj(this.value)"  onclick="selectSubj(this.value)"  >
													<option value="">请选择</option>
													<c:forEach items="${jsfxList }" var="jsfx">
														<option value="${jsfx.jsfxid }"   ${jsfx.jsfxid==page.jsfxid?"selected":"" }  >${jsfx.fxmc }</option>
													</c:forEach>
										</select>
									</div>
								</div>
								<div class="box-search">
									<div class="input-group">
										<span class="input-group-addon" style="background: #EEEEEE;">分类Root</span>
											<select class="form-control" name="subjRoot" id="unitSelect"   onchange="selectUnit(this.value)"  onclick="selectUnit(this.value)" >
													<option value="">请选择</option>
													<c:forEach items="${subjRootList }" var="subjRoot">
														<option value="${subjRoot.subjectId }"   ${subjRoot.subjectId==page.subjRoot?"selected":"" }   >${subjRoot.subjectId }:${subjRoot.subjectName }</option>
													</c:forEach>
										</select>
									</div>
								</div>
								<div class="box-search">
									<div class="input-group">
										<span class="input-group-addon" style="background: #EEEEEE;">分类</span>
										<select class="form-control" name="subjectId" id="sctnSelect" >
													<option value="">请选择</option>
													<c:forEach items="${subjList }" var="subj">
														<option value="${subj.subjectId }"   ${subj.subjectId==page.subjectId?"selected":"" }   >${subj.subjectId }:${subj.subjectName }</option>
													</c:forEach>
										</select>
									</div>
								</div>
								<div class="box-search">
									<div class="input-group">
										<span class="input-group-addon" style="background: #EEEEEE;">类型</span>
										<select class="form-control" name="topicType" >
										<option value="">请选择</option>
										<option value="1"  ${"1"==page.topicType?"selected":"" }   >单选</option>
										<option value="2"   ${"2"==page.topicType?"selected":"" }   >多选</option>
										<option value="3"   ${"3"==page.topicType?"selected":"" }   >3</option>
										<option value="4"   ${"4"==page.topicType?"selected":"" }   >4</option>
										<option value="5"   ${"5"==page.topicType?"selected":"" }   >5</option>
										</select>
									</div>
								</div>
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
									<th>修改</th>
									<th>导入</th>
									<th>topicId</th>									
									<th>subjectId</th>
									<th>topicType</th>									
									<th>topicState</th>
									<th>trueanswer</th>
									
								</tr>
								<c:forEach items="${list }" var="t" varStatus="i">
									<tr>
										<td>${i.count }</td>
										<td>
											<input  type="button" value="修改" onclick="editPage('${t.topicId}')" >
										</td>
										<td>
											<input  type="button" value="导入" onclick="impPage('${t.topicId}')" >
										</td>
										<td>${t.topicId }</td>
										
										<td>${t.subjectId }</td>
										<td>${t.topicType }</td>
										
										<td>${t.topicState}</td>
										<td>${t.trueanswer }</td>
										
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
		
	function editPage(id){
		location.href="<%=request.getContextPath()%>/qstn/editPage.action?id=" + id;
	}
	function impPage(id){
		location.href="<%=request.getContextPath()%>/qstn/impPage.action?id=" + id;
	}
	
	
	
	function selectSubj(jsfxId){
		console.log(jsfxId);
		if(jsfxId==null ||  jsfxId=="" ){
			return;
		}
		
		var url = "<%=request.getContextPath() %>/subj/selectSubjRoot.action";		
		$.post(url,{"jsfxId":jsfxId},function(resp){
			// unitSelect
			console.log(resp);
			$("#unitSelect").empty();
			$("<option value=''>请选择</option>").appendTo("#unitSelect");
			$.each(resp, function(i, item){
				$("<option value='" + item.subjectId + "'>" + item.subjectId + ":" + item.subjectName + "</option>").appendTo("#unitSelect");
			});
			if(resp.length > 0){
				selectUnit(resp[0].subjectId);
			}
			
		});
	}
	
	function selectUnit(pid){
		var url = "<%=request.getContextPath() %>/subj/selectSubjByPid.action";	
		$.post(url,{"pid":pid},function(resp){
			// sctnSelect
			console.log(resp);
			$("#sctnSelect").empty();
			$("<option value=''>请选择</option>").appendTo("#sctnSelect");
			if(resp.length>0){
				
				$.each(resp, function(i, item){
					$("<option value='" + item.subjectId + "'>" + item.subjectId + ":" + item.subjectName + "</option>").appendTo("#sctnSelect");
				});
			}
		});
	}

		

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
		
		
	</script>

</html>