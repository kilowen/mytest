<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!-- BEGIN SIDEBAR -->
<div class="page-sidebar navbar-collapse collapse">
	<!-- BEGIN SIDEBAR MENU -->        
	<ul class="page-sidebar-menu">
		<li>
			<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
			<div class="sidebar-toggler hidden-phone"></div>
			<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
		</li>
		<li>
			<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
			<form class="sidebar-search" action="extra_search.html" method="POST">
				<div class="form-container">
					<div class="input-box">
						<a href="javascript:;" class="remove"></a>
						<input type="text" placeholder="Search..."/>
						<input type="button" class="submit" value=" "/>
					</div>
				</div>
			</form>
			<!-- END RESPONSIVE QUICK SEARCH FORM -->
		</li>
		<li id="home" class="">
			<a href="${ctx}/">
			<i class="fa fa-home"></i> 
			<span class="title">Home</span>
			</a>
		</li>
		<li id="quickstart"  class="">
			<a href="javascript:;">
			<i class="fa fa-leaf"></i> 
			<span class="title">Quick</span>
			<span class="arrow "></span>
			</a>
			<ul class="sub-menu">
				<shiro:hasRole name="admin">
					<li id="usermanager" >
						<a href="${ctx}/admin/user">UserManager</a>
					</li>
				</shiro:hasRole>
				<li id="taskmanager">
					<a href="${ctx}/task">TaskManager</a>
				</li>
			</ul>
		</li>
		<li id="dashboard" class="">
			<a href="${ctx}/dashboard">
			<i class="fa fa-leaf"></i> 
			<span class="title">Dashboard</span>
			</a>
		</li>
		<li id="layouts"  class="">
			<a href="javascript:;">
			<i class="fa fa-cogs"></i> 
			<span class="title">Layouts</span>
			<span class="arrow "></span>
			</a>
			<ul class="sub-menu">
				<li >
					<a href="layout_session_timeout.html">
					<span class="badge badge-roundless badge-warning">new</span>Session Timeout</a>
				</li>
				<li >
					<a href="layout_idle_timeout.html">
					<span class="badge badge-roundless badge-important">new</span>User Idle Timeout</a>
				</li>
			</ul>
		</li>
	</ul>
	<!-- END SIDEBAR MENU -->
</div>
<!-- END SIDEBAR -->
