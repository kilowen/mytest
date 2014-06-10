<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>Restful API 列表</title>
	
	<head>
	<title>用户管理</title>
	
	<script>
		$(document).ready(function() {
			$("#quickstart").addClass("active");
			$("#quickstart a").append("<span class='selected'></span>");
			$("#restfulapi").addClass("active");
		});
	</script>
	
</head>
</head>

<body>
<!-- BEGIN PAGE HEADER-->
<div class="row">
	<div class="col-md-12">
		<!-- BEGIN PAGE TITLE & BREADCRUMB-->
		<h3 class="page-title">
			QuickStart <small>this is a quickstart page</small>
		</h3>
		<ul class="page-breadcrumb breadcrumb">
			<li>
				<i class="fa fa-home"></i>
				<a href="${ctx}/index">Home</a> 
				<i class="fa fa-angle-right"></i>
			</li>
			<li>
				<a href="#">QuickStart</a>
				<i class="fa fa-angle-right"></i>
			</li>
			<li><a href="#">RestfullAPI</a></li>	
		</ul>
		<!-- END PAGE TITLE & BREADCRUMB-->
	</div>
</div>
<!-- END PAGE HEADER--> 

<h3>Restful API 列表</h3>
<h4>查询 API</h4>
<ul>
	<li>获取任务列表 ： <a href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/api/v1/task">http://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/api/v1/task</a></li>
	<li>获取任务(id=1) ： <a href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/api/v1/task/1">http://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/api/v1/task/1</a></li>
</ul>

<h4>修改API</h4>
<ul>
	<li>创建任务 ：http://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/api/v1/task method=Post, consumes=JSON</li>
	<li>修改任务(id=1) ：http://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/api/v1/task/1 method=Put, consumes=JSON</li> 
</ul>
</body>
</html>
