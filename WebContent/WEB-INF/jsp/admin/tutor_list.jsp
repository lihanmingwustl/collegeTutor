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
			<li class="current"><a href="<%=request.getContextPath() %>/admin/showTutorList">Tutor</a></li>
			<li><a href="<%=request.getContextPath() %>/admin/showOrderList">Order</a></li>
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
		<h2>Tutor management</h2>
		<div class="manage">
			<table class="list">
				<tr>
					<th>ID</th>
					<th>Username</th>
					<th>Tutorname</th>
					<th>School</th>
					<th>Major</th>
					<th>Phone</th>
					<th>operation</th>
				</tr>
				
				<s:iterator value="ts" var="t">
				<tr>
					<td class="first w2 c">${t.id }</td>
					<td class="w4 c">${t.nick_name }</td>
					<td class="w2 c">${t.real_name }</td>
					<td class="w4 c">${t.school }</td>
					<td class="w4 c">${t.major }</td>
					<td class="w4 c">${t.telephone }</td>
					<td class="w1 c"><a href="<%=request.getContextPath() %>/admin/modifyTutorInfo?Id=${t.id }">Edit</a> <a href="javascript:tutorDelete(${t.id });">Del</a></td>
				</tr>
				</s:iterator>
			</table>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy;
</div>
</body>
</html>
