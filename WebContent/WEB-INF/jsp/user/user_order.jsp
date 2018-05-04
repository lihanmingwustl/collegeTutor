<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>My Info</title>
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/function-manage.js"></script>
</head>
<body>
<div id="header" class="wrap">
	<div id="logo"><a href="${pageContext.request.contextPath}/main/mainAction"><img src="../images/logo.gif" /></a></div>
	<div class="help"><a href="<%=request.getContextPath() %>/user/logout">Logout</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li><a href="${pageContext.request.contextPath}/user/myInfo">HomePage</a></li>
			<li><a href="<%=request.getContextPath() %>/user/checkMyInfo?Id=${s_user.id }">Information</a></li>
			<li class="current"><a href="<%=request.getContextPath() %>/user/checkMyOrder?Id=${s_user.id }">Order</a></li>
		</ul>
	</div>
</div>
<div id="childNav">
	<div class="welcome wrap">
		User ${s_user.nickname } Hello, welcome to my information.
	</div>
</div>
<div id="position" class="wrap">
	Your current position:The College Tutors &gt; Background Management
</div>
<div id="main" class="wrap">
	<div id="menu-mng" class="lefter">
		<div class="box">
			<dl>
				<dt>Information management</dt>
				<dd><a href="<%=request.getContextPath() %>/user/checkMyInfo?Id=${s_user.id }">Information management</a></dd>
				<dt>Order Management</dt>
				<dd><a href="<%=request.getContextPath() %>/user/checkMyOrder?Id=${s_user.id }">Order Management</a></dd>
			</dl>
		</div>
	</div>
	<div class="main">
		<h2>Order Management</h2>
		<div class="manage">
			<table class="list">
			<s:if test="ios.size()!=0">
				<tr>
					<th>OrderId</th>
					<th>Nick Name</th>
					<th>Subject</th>
					<th>ClassHour</th>
					<th>OrderTime</th>
					<th>Cost</th>
					<th>Telephone</th>
				</tr>
		
				<s:iterator value="ios" var="io">
				<tr>
					<td class="first w2 c">${io.id }</td>
					<td class="w4 c">${io.tutor_nickname }</td>
					<td class="w2 c">${io.course }</td>
					<td class="w2 c">${io.count }</td>
					<td class="w4 c">${io.order_dt }</td>
					<td class="w2 c">${io.total_price }</td>
					<td class="w2 c">${io.mobile }</td>
				</tr>
				</s:iterator>
			</s:if>	
			</table>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy;BUPT
</div>
</body>
</html>
