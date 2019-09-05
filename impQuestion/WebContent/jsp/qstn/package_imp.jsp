<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/qstn/packImp.action" method="post">
		出:<input  name="outId"> 入:<input   name="inId"><br/>
		<input type="submit">
		
	</form>
</body>
</html>