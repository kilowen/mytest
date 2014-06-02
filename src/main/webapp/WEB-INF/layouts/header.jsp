<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!-- BEGIN HEADER -->   
<div class="header navbar navbar-inverse navbar-fixed-top">
	<!-- BEGIN TOP NAVIGATION BAR -->
	<div class="header-inner">
		<!-- BEGIN LOGO -->  
		<a class="navbar-brand" href="index.html">
		<img src="${ctx}/static/assets/img/logo.png" alt="logo" class="img-responsive" />
		</a>
		<!-- END LOGO -->
		<!-- BEGIN RESPONSIVE MENU TOGGLER --> 
		<a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
		<img src="${ctx}/static/assets/img/menu-toggler.png" alt="" />
		</a> 
		<!-- END RESPONSIVE MENU TOGGLER -->
		<!-- BEGIN TOP NAVIGATION MENU -->
		<ul class="nav navbar-nav pull-right">
			<!-- BEGIN NOTIFICATION DROPDOWN -->
			<li class="dropdown" id="header_notification_bar">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
					data-close-others="true">
				<i class="fa fa-warning"></i>
				<span class="badge">6</span>
				</a>
				<ul class="dropdown-menu extended notification">
					<li>
						<p>You have 14 new notifications</p>
					</li>
					<li>
						<ul class="dropdown-menu-list scroller" style="height: 250px;">
							<li>  
								<a href="#">
								<span class="label label-sm label-icon label-success"><i class="fa fa-plus"></i></span>
								New user registered. 
								<span class="time">Just now</span>
								</a>
							</li>
						</ul>
					</li>
					<li class="external">   
						<a href="#">See all notifications <i class="m-icon-swapright"></i></a>
					</li>
				</ul>
			</li>
			<!-- END NOTIFICATION DROPDOWN -->
			
			<!-- BEGIN TODO DROPDOWN -->
			<li class="dropdown" id="header_task_bar">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
				<i class="fa fa-tasks"></i>
				<span class="badge">5</span>
				</a>
				<ul class="dropdown-menu extended tasks">
					<li>
						<p>You have 12 pending tasks</p>
					</li>
					<li>
						<ul class="dropdown-menu-list scroller" style="height: 250px;">
							<li>  
								<a href="#">
								<span class="task">
								<span class="desc">New release v1.2</span>
								<span class="percent">30%</span>
								</span>
								<span class="progress">
								<span style="width: 40%;" class="progress-bar progress-bar-success" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100">
								<span class="sr-only">40% Complete</span>
								</span>
								</span>
								</a>
							</li>
							<li>  
								<a href="#">
								<span class="task">
								<span class="desc">Application deployment</span>
								<span class="percent">65%</span>
								</span>
								<span class="progress progress-striped">
								<span style="width: 65%;" class="progress-bar progress-bar-danger" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100">
								<span class="sr-only">65% Complete</span>
								</span>
								</span>
								</a>
							</li>
						</ul>
					</li>
					<li class="external">   
						<a href="#">See all tasks <i class="m-icon-swapright"></i></a>
					</li>
				</ul>
			</li>
			<!-- END TODO DROPDOWN -->
			<!-- BEGIN USER LOGIN DROPDOWN -->
			<shiro:user>
				<li class="dropdown user">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
					<img alt="" src="${ctx}/static/assets/img/avatar1_small.jpg"/>
					<span class="username"><shiro:principal property="name"/></span>
					<i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li><a href="${ctx}/profile"><i class="fa fa-user"></i> My Profile</a></li>
						<li><a href="page_calendar.html"><i class="fa fa-calendar"></i> My Calendar</a></li>
						<li><a href="inbox.html"><i class="fa fa-envelope"></i> My Inbox <span class="badge badge-danger">3</span></a></li>
						<li><a href="#"><i class="fa fa-tasks"></i> My Tasks <span class="badge badge-success">7</span></a></li>
						<li class="divider"></li>
						<li><a href="javascript:;" id="trigger_fullscreen"><i class="fa fa-move"></i> Full Screen</a></li>
						<li><a href="extra_lock.html"><i class="fa fa-lock"></i> Lock Screen</a></li>
						<li><a href="${ctx}/logout"><i class="fa fa-key"></i> Log Out</a></li>
					</ul>
				</li>
			</shiro:user>
			<!-- END USER LOGIN DROPDOWN -->
		</ul>
		<!-- END TOP NAVIGATION MENU -->
	</div>
	<!-- END TOP NAVIGATION BAR -->
</div>
<!-- END HEADER -->