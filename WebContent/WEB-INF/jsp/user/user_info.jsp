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
			<li class="current"><a href="<%=request.getContextPath() %>/user/checkMyInfo?Id=${s_user.id }">Information</a></li>
			<li><a href="<%=request.getContextPath() %>/user/checkMyOrder?Id=${s_user.id }">Order</a></li>
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
				<dd><a href="<%=request.getContextPath() %>/user/checkMyOrder?Id=${s_user.id }">Order management</a></dd>
			</dl>
		</div>
	</div>
	<div class="main">
		<h2>Modify User Info</h2>
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
						<td><input type="text" class="text" name="user.nickname" id="nickname" value="${user.nickname }" readonly="readonly"/></td>
					</tr>
					<tr>
						<td class="field">UserLevel：</td>
						<td><input type="text" class="text" name="user.user_integral" value="${user.user_integral }" readonly="readonly" /></td>
					</tr>
					<tr>
						<td class="field">Telephone：</td>
						<td><input type="text" class="text" name="user.telephone" value="${user.telephone }" /></td>
					</tr>
					<tr>
						<td class="field">Email verify code：</td>
						<td><input type="text" class="text" name="user.email_verify_code" value="${user.email_verify_code }" readonly="readonly" /></td>
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
	Copyright &copy;BUPT
</div>
</body>
</html>
