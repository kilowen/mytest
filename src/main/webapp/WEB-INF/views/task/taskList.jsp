<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>

	<title>任务管理</title>
	
	<script>
		$(document).ready(function() {
			$("#quickstart").addClass("active");
			$("#quickstart a").append("<span class='selected'></span>");
			$("#taskmanager").addClass("active");
		});
	</script>
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
			<li><a href="#">TaskManager</a></li>	
		</ul>
		<!-- END PAGE TITLE & BREADCRUMB-->
	</div>
</div>
<!-- END PAGE HEADER--> 
		
<c:if test="${not empty message}">
	<div id="message" class="alert alert-success"><button data-dismiss="alert" class="close">×</button>${message}</div>
</c:if>
<div class="row">
	<div class="col-md-12">
		<form class="form-search" action="#">
			<label>名称：</label> <input type="text" name="search_LIKE_title" class="input-medium" value="${param.search_LIKE_title}"> 
			<button type="submit" class="btn" id="search_btn">Search</button>
	    </form>
	    <tags:sort/>
    </div>
</div>

<table id="contentTable" class="table table-striped table-bordered table-condensed">
	<thead><tr><th>任务</th><th>管理</th></tr></thead>
	<tbody>
	<c:forEach items="${tasks.content}" var="task">
		<tr>
			<td><a href="${ctx}/task/update/${task.id}">${task.title}</a></td>
			<td><a href="${ctx}/task/delete/${task.id}">删除</a></td>
		</tr>
	</c:forEach>
	</tbody>
</table>

<tags:pagination page="${tasks}" paginationSize="5"/>

<div><a class="btn" href="${ctx}/task/create">创建任务</a></div>
	
</body>
</html>
