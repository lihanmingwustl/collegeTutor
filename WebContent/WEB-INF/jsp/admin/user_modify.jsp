<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Background manage</title>
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/function-manage.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.min.js"></script>

</head>
<body>
<div id="header" class="wrap">
	<div id="logo"><img src="../images/logo.gif" /></div>
	<div class="help"><a href="<%=request.getContextPath() %>/admin/adminlogout">Logout</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li><a href="<%=request.getContextPath() %>/admin/backToIndex">Home</a></li>
			<li class="current"><a href="<%=request.getContextPath() %>/admin/showUserList">User</a></li>
			<li><a href="<%=request.getContextPath() %>/admin/adminlogout">Tutor</a></li>
			<li><a href="<%=request.getContextPath() %>/admin/showOrder">Order</a></li>
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
			</dl>>
		</div>
	</div>
	<div class="main">
		<h2>Modify user information</h2>
		<div class="manage">
			<form action="updateUserInfo">
				<table class="form">
					<tr>
						<td class="field">UserID：</td>
						<td><input type="text" class="text" name="user.id" value="${user.id }" readonly="readonly" /></td>
					</tr>
					<tr>
						<td class="field">Email：</td>
						<td><input type="text" class="text" name="user.email" value="${user.email }" readonly="readonly" /></td>
					</tr>
					<tr>
						<td class="field">UserName：</td>
						<td><input type="text" class="text" name="user.nickname" id="nickname" value="${user.nickname }" /></td>
					</tr>
					<tr>
						<td class="field">Userlevel：</td>
						<td><input type="text" class="text" name="user.user_integral" value="${user.user_integral }" readonly="readonly" /></td>
					</tr>
					<tr>
						<td class="field">Telephone：</td>
						<td><input type="text" class="text" name="user.telephone" value="${user.telephone }" /></td>
					</tr>
					<tr>
						<td class="field">Email verification code：</td>
						<td><input type="text" class="text" name="user.email_verify_code" value="${user.email_verify_code }" readonly="readonly" /></td>
					</tr>
					<tr>
						<td class="field">Photo：</td>
						<td><input type="file" class="text" name="photo" /></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-blue"><input type="submit" id="update" name="submit" value="update" /></label></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy;
</div>
</body>
</html>
