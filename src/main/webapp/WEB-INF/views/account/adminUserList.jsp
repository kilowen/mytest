<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>用户管理</title>
	
	<script>
		$(document).ready(function() {
			$("#quickstart").addClass("active");
			$("#quickstart a").append("<span class='selected'></span>");
			$("#usermanager").addClass("active");
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
			<li><a href="#">UserManager</a></li>	
		</ul>
		<!-- END PAGE TITLE & BREADCRUMB-->
	</div>
</div>
<!-- END PAGE HEADER-->

<c:if test="${not empty message}">
	<div id="message" class="alert alert-success"><button data-dismiss="alert" class="close">×</button>${message}</div>
</c:if>

<table id="contentTable" class="table table-striped table-bordered table-condensed">
	<thead><tr><th>登录名</th><th>用户名</th><th>注册时间<th>管理</th></tr></thead>
	<tbody>
	<c:forEach items="${users}" var="user">
		<tr>
			<td><a href="${ctx}/admin/user/update/${user.id}">${user.loginName}</a></td>
			<td>${user.name}</td>
			<td>
				<fmt:formatDate value="${user.registerDate}" pattern="yyyy年MM月dd日  HH时mm分ss秒" />
			</td>
			<td><a href="${ctx}/admin/user/delete/${user.id}">删除</a></td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>
