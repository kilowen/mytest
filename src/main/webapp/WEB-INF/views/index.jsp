<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<head>
	<title>Home</title>
	<script>
		$(document).ready(function() {
			$("#home").addClass("start active");
			$("#home a").append("<span class='selected'></span>");
			
		});
	</script>
</head>

<body>
	<!-- BEGIN PAGE HEADER-->
	<div class="row">
		<div class="col-md-12">
			<!-- BEGIN PAGE TITLE & BREADCRUMB-->
			<h3 class="page-title">
				Home <small>this is a home page</small>
			</h3>
			<ul class="page-breadcrumb breadcrumb">
				<li>
					<i class="fa fa-home"></i>
					<a href="${ctx}/index">Home</a> 
					<i class="fa fa-angle-right"></i>
				</li>
			</ul>
			<!-- END PAGE TITLE & BREADCRUMB-->
		</div>
	</div>
	<!-- END PAGE HEADER-->  
	
	<div class="row">
		<div>
			<h2>Wecome to My New World ! </h2>
		</div>
	</div>
</body>