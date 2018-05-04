<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Background manage</title>
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/function-manage.js"></script>
</head>
<body>
<div id="header" class="wrap">
	<div id="logo"><img src="../images/logo.gif" /></div>
	<div class="help"><a href="<%=request.getContextPath() %>/admin/adminlogout">Logout</a></div>
	<div class="navbar" style="font-size: medium">
		<ul class="clearfix">
			<li><a href="<%=request.getContextPath() %>/admin/backToIndex">Home</a></li>
			<li><a href="<%=request.getContextPath() %>/admin/showUserList">User</a></li>
			<li><a href="<%=request.getContextPath() %>/admin/showTutorList">Tutor</a></li>
			<li class="current"><a href="<%=request.getContextPath() %>/admin/showOrderList">Order</a></li>
		</ul>
	</div>
</div>
<div id="childNav">
	<div class="welcome wrap">
		Administrator ${admin.username} Hello, welcome to enter the background management.
	</div>
</div>
<div id="position" class="wrap">
	Your current position:The College Tutors &gt; Background management
</div>
<div id="main" class="wrap">
	<div id="menu-mng" class="lefter">
		<div class="box">
			<dl>
				<dt>User management</dt>
				<dd><a href="<%=request.getContextPath() %>/admin/showUserList">User management</a></dd>
				<dt>Tutor management</dt>
				<dd><a href="<%=request.getContextPath() %>/admin/showTutorList">Tutor management</a></dd>
				<dt>Order management</dt>
				<dd><a href="<%=request.getContextPath() %>/admin/showOrderList">Order management</a></dd>
			</dl>
		</div>
	</div>
	<div class="main">
		<h2>Order view</h2>
		<div class="manage">
			<table class="list">
				<tr>
					<th> Order No. </th>
					<th> Username </th>
					<th> Tutor nickname </th>
					<th> Subjects </th>
					<th> Class </th>
					<th> Order time </th>
					<th> Cost </th>
					<th> User phone </th>
				</tr>
		
				<s:iterator value="ios" var="io">
				<tr>
					<td class="first w2 c">${io.id }</td>
					<td class="w2 c">${io.user_name }</td>
					<td class="w4 c">${io.tutor_nickname }</td>
					<td class="w2 c">${io.course }</td>
					<td class="w2 c">${io.count }</td>
					<td class="w4 c">${io.order_dt }</td>
					<td class="w2 c">${io.total_price }</td>
					<td class="w4 c">${io.mobile }</td>
				</tr>
				</s:iterator>
			</table>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; BUPT
</div>
</body>
</html>
