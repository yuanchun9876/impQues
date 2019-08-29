<%@page import="java.text.SimpleDateFormat"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN" xmlns:th="http://www.thymeleaf.org">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>修改页面</title>
		<!-- Tell the browser to be responsive to screen width -->
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<!-- Bootstrap 3.3.7 -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/static/bower_components/bootstrap/dist/css/bootstrap.min.css">
		<!-- Theme style -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/static/dist/css/AdminLTE.min.css">
		<!-- AdminLTE Skins. Choose a skin from the css/skins
	       folder instead of downloading all of them to reduce the load. -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/static/dist/css/skins/_all-skins.min.css">
		
		<link rel="stylesheet"  type="text/css"  href="<%=request.getContextPath()%>/static/simditor/styles/simditor.css">
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
		</style>
	</head>

	<body class="hold-transition skin-blue sidebar-mini">
		<div class="wrapper">

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
			          	试题导入
			        </h1>
			        <ol class="breadcrumb">
						<li>
							<a href="<%=request.getContextPath()%>/common/dashboard.html"><i class="glyphicon glyphicon-globe"></i>导航</a>
						</li>
						<li class="active">
							<a href="#">试题导入</a>
						</li>
					</ol>
				</section>

				<!-- Main content -->
				<section class="content">
					<div class="row">
				
						<form class="form form-horizontal" method="post"  action="<%=request.getContextPath()%>/qstn/impSave.action">
							<!-- left column -->
							<div class="col-md-8 col-md-offset-2">
								<!-- general form elements -->
								<div class="box box-primary">
									<div class="box-header with-border">
										<h3 class="box-title">基本信息</h3>
										<div class="box-search">
											<button type="submit" class="btn btn-info pull-right">提交</button>
										</div>
									</div>
									<!-- /.box-header -->
									<!-- form start -->
									<div class="box-body">
										<div class="form-group">
											<label for="name" class="col-sm-2 control-label">导入类型</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" name="sctnId"  placeholder="" required="required">
											</div>
										
										</div>
										<div class="form-group">
											<label for="name" class="col-sm-2 control-label">试题</label>
											<div class="col-sm-10">
											   <textarea id="editor" type="text/plain"   hidden="true"   name="topicName"   required="required"  autofocus>${t.topicName }</textarea>
											</div>
										</div>
										
									
										<input type="hidden" class="form-control" name="topicId" value="${t.topicId }"  placeholder="" required="required">
										<div class="form-group">
											<label for="name" class="col-sm-2 control-label">类型</label>
											<div class="col-sm-4">
												<input type="text" class="form-control" name="topicType" value="${t.topicType }"  placeholder="" required="required">
											</div>
											<label for="name" class="col-sm-2 control-label">正确</label>
											<div class="col-sm-4">
												<input type="text" class="form-control" name="trueanswer" value="${t.trueanswer }"  placeholder="" required="required">
											</div>
										</div>
										<div class="form-group">
											<label for="name" class="col-sm-2 control-label">分类</label>
											<div class="col-sm-4">
												<select class="form-control" name="subjRoot" id="unitSelect"   onchange="selectUnit(this.value)"  onclick="selectUnit(this.value)" >
													<option value="">请选择</option>
													<c:forEach items="${subjRootList }" var="subjRoot">
														<option value="${subjRoot.subjectId }"   ${subjRoot.subjectId==page.subjRoot?"selected":"" }   >${subjRoot.subjectId }:${subjRoot.subjectName }</option>
													</c:forEach>
												</select>
											</div>
											<label for="name" class="col-sm-2 control-label">分类</label>
											<div class="col-sm-4">
												<select class="form-control" name="subjectId" id="sctnSelect" >
													<option value="">请选择</option>
													<c:forEach items="${subjList }" var="subj">
														<option value="${subj.subjectId }"   ${subj.subjectId==t.subjectId?"selected":"" }   >${subj.subjectId }:${subj.subjectName }</option>
													</c:forEach>
												</select>
											</div>
										</div>
											<div class="form-group">
											<label for="name" class="col-sm-2 control-label">答案A</label>
											<div class="col-sm-10">
											   <textarea id="editora" type="text/plain"   hidden="true"   name="answera"   required="required"  autofocus>${t.answera }</textarea>
											</div>
										</div>
											<div class="form-group">
											<label for="name" class="col-sm-2 control-label">答案B</label>
											<div class="col-sm-10">
											   <textarea id="editorb" type="text/plain"   hidden="true"   name="answerb"   required="required"  autofocus>${t.answerb }</textarea>
											</div>
										</div>
											<div class="form-group">
											<label for="name" class="col-sm-2 control-label">答案C</label>
											<div class="col-sm-10">
											   <textarea id="editorc" type="text/plain"   hidden="true"   name="answerc"   required="required"  autofocus>${t.answerc }</textarea>
											</div>
										</div>
											<div class="form-group">
											<label for="name" class="col-sm-2 control-label">答案D</label>
											<div class="col-sm-10">
											   <textarea id="editord" type="text/plain"   hidden="true"   name="answerd"   required="required"  autofocus>${t.answerd }</textarea>
											</div>
										</div>
									</div>							<!-- /.box-body -->
									<div class="box-footer">
										<button type="button" class="btn btn-default" onclick="javascript:history.back()">返回</button>
										<button type="submit" class="btn btn-info pull-right">提交</button>
									</div>
									<!-- /.box-footer -->
								</div>
								<!-- /.box -->
								<!-- /.modal -->
							</div>
							<!--/.col (right) -->
						</form>
					</div>
					<!-- /.row -->
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

		</div>
	</body>
	<!-- jQuery 3 -->
	<script src="<%=request.getContextPath()%>/static/bower_components/jquery/dist/jquery.min.js"></script>

	<!-- Bootstrap 3.3.7 -->
	<script src="<%=request.getContextPath()%>/static/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- FastClick -->
	<script src="<%=request.getContextPath()%>/static/bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="<%=request.getContextPath()%>/static/dist/js/adminlte.min.js"></script>
	
	<script type="text/javascript" src="<%=request.getContextPath()%>/static/simditor/scripts/module.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/static/simditor/scripts/module.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/static/simditor/scripts/hotkeys.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/static/simditor/scripts/uploader.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/static/simditor/scripts/simditor.js"></script>

	<script type="text/javascript">
		
		
	$(function(){
        Simditor.locale = 'zh-CN';//设置中文
        editor = new Simditor({
            textarea: $("#editor"),  //textarea的id
            placeholder: '请输入试题内容',
            toolbar:  ['title', 'bold', 'italic', 'underline', 'strikethrough', 'fontScale', 'color', '|', 'ol', 'ul', 'blockquote', 'code', 'table', '|', 'link', 'image', 'hr', '|', 'indent', 'outdent', 'alignment'], //工具条都包含哪些内容
            pasteImage: true,//允许粘贴图片
            defaultImage: '@{/simditor/images/image.png}',//编辑器插入的默认图片，此处可以删除
            upload : {
                url : '/qstn/uploadSimditorImg', //文件上传的接口地址
                params:  {"type":"qstn_title"}, //键值对,指定文件上传接口的额外参数,上传的时候随文件一起提交
                fileKey:'file', //服务器端获取文件数据的参数名
                connectionCount: 3,
                leaveConfirm: '正在上传文件'
            }
        });
        
        editora = new Simditor({
            textarea: $("#editora"),  //textarea的id
            placeholder: '请输入试题说明',
            toolbar:  ['title', 'bold', 'italic', 'underline', 'strikethrough', 'fontScale', 'color', '|', 'ol', 'ul', 'blockquote', 'code', 'table', '|', 'link', 'image', 'hr', '|', 'indent', 'outdent', 'alignment'], //工具条都包含哪些内容
            pasteImage: true,//允许粘贴图片
            defaultImage: '@{/simditor/images/image.png}',//编辑器插入的默认图片，此处可以删除
            upload : {
                url : '/qstn/uploadSimditorImg', //文件上传的接口地址
                params: {"type":"qstn_pictext"}, //键值对,指定文件上传接口的额外参数,上传的时候随文件一起提交
                fileKey:'file', //服务器端获取文件数据的参数名
                connectionCount: 3,
                leaveConfirm: '正在上传文件'
            }
        });
        editorb = new Simditor({
            textarea: $("#editorb"),  //textarea的id
            placeholder: '请输入试题说明',
            toolbar:  ['title', 'bold', 'italic', 'underline', 'strikethrough', 'fontScale', 'color', '|', 'ol', 'ul', 'blockquote', 'code', 'table', '|', 'link', 'image', 'hr', '|', 'indent', 'outdent', 'alignment'], //工具条都包含哪些内容
            pasteImage: true,//允许粘贴图片
            defaultImage: '@{/simditor/images/image.png}',//编辑器插入的默认图片，此处可以删除
            upload : {
                url : '/qstn/uploadSimditorImg', //文件上传的接口地址
                params: {"type":"qstn_pictext"}, //键值对,指定文件上传接口的额外参数,上传的时候随文件一起提交
                fileKey:'file', //服务器端获取文件数据的参数名
                connectionCount: 3,
                leaveConfirm: '正在上传文件'
            }
        });
        editorc = new Simditor({
            textarea: $("#editorc"),  //textarea的id
            placeholder: '请输入试题说明',
            toolbar:  ['title', 'bold', 'italic', 'underline', 'strikethrough', 'fontScale', 'color', '|', 'ol', 'ul', 'blockquote', 'code', 'table', '|', 'link', 'image', 'hr', '|', 'indent', 'outdent', 'alignment'], //工具条都包含哪些内容
            pasteImage: true,//允许粘贴图片
            defaultImage: '@{/simditor/images/image.png}',//编辑器插入的默认图片，此处可以删除
            upload : {
                url : '/qstn/uploadSimditorImg', //文件上传的接口地址
                params: {"type":"qstn_pictext"}, //键值对,指定文件上传接口的额外参数,上传的时候随文件一起提交
                fileKey:'file', //服务器端获取文件数据的参数名
                connectionCount: 3,
                leaveConfirm: '正在上传文件'
            }
        });
        editord = new Simditor({
            textarea: $("#editord"),  //textarea的id
            placeholder: '请输入试题说明',
            toolbar:  ['title', 'bold', 'italic', 'underline', 'strikethrough', 'fontScale', 'color', '|', 'ol', 'ul', 'blockquote', 'code', 'table', '|', 'link', 'image', 'hr', '|', 'indent', 'outdent', 'alignment'], //工具条都包含哪些内容
            pasteImage: true,//允许粘贴图片
            defaultImage: '@{/simditor/images/image.png}',//编辑器插入的默认图片，此处可以删除
            upload : {
                url : '/qstn/uploadSimditorImg', //文件上传的接口地址
                params: {"type":"qstn_pictext"}, //键值对,指定文件上传接口的额外参数,上传的时候随文件一起提交
                fileKey:'file', //服务器端获取文件数据的参数名
                connectionCount: 3,
                leaveConfirm: '正在上传文件'
            }
        });
      });
		
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
		
		
	</script>

</html>