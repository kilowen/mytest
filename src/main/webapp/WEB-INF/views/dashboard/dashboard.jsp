<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<head>
	<title>DashBoard</title>
	<script>
		$(document).ready(function() {
			$("#dashboard").addClass("active");
			$("#dashboard a").append("<span class='selected'></span>");
			
		});
	</script>
</head>

<body>

<!-- BEGIN PAGE HEADER-->
<div class="row">
	<div class="col-md-12">
		<!-- BEGIN PAGE TITLE & BREADCRUMB-->
		<h3 class="page-title">
			Dashboard <small>statistics and more</small>
		</h3>
		<ul class="page-breadcrumb breadcrumb">
			<li>
				<i class="fa fa-home"></i>
				<a href="${ctx}/index">Home</a> 
				<i class="fa fa-angle-right"></i>
			</li>
			<li><a href="#">Dashboard</a></li>
			<li class="pull-right">
				<div id="dashboard-report-range" class="dashboard-date-range tooltips" data-placement="top" data-original-title="Change dashboard date range">
					<i class="fa fa-calendar"></i>
					<span></span>
					<i class="fa fa-angle-down"></i>
				</div>
			</li>
		</ul>
		<!-- END PAGE TITLE & BREADCRUMB-->
	</div>
</div>
<!-- END PAGE HEADER-->  

<!-- BEGIN DASHBOARD STATS -->
<div class="row">
	<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="dashboard-stat blue">
			<div class="visual">
				<i class="fa fa-comments"></i>
			</div>
			<div class="details">
				<div class="number">
					1349
				</div>
				<div class="desc">                           
					New Feedbacks
				</div>
			</div>
			<a class="more" href="#">
			View more <i class="m-icon-swapright m-icon-white"></i>
			</a>                 
		</div>
	</div>
	<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="dashboard-stat green">
			<div class="visual">
				<i class="fa fa-shopping-cart"></i>
			</div>
			<div class="details">
				<div class="number">549</div>
				<div class="desc">New Orders</div>
			</div>
			<a class="more" href="#">
			View more <i class="m-icon-swapright m-icon-white"></i>
			</a>                 
		</div>
	</div>
	<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="dashboard-stat purple">
			<div class="visual">
				<i class="fa fa-globe"></i>
			</div>
			<div class="details">
				<div class="number">+89%</div>
				<div class="desc">Brand Popularity</div>
			</div>
			<a class="more" href="#">
			View more <i class="m-icon-swapright m-icon-white"></i>
			</a>                 
		</div>
	</div>
	<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="dashboard-stat yellow">
			<div class="visual">
				<i class="fa fa-bar-chart-o"></i>
			</div>
			<div class="details">
				<div class="number">12,5M$</div>
				<div class="desc">Total Profit</div>
			</div>
			<a class="more" href="#">
			View more <i class="m-icon-swapright m-icon-white"></i>
			</a>                 
		</div>
	</div>
</div>
<!-- END DASHBOARD STATS -->