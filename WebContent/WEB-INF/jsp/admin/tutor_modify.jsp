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
		<h2>Modify tutor information</h2>
		<div class="manage">
			<form action="updateTutorInfo">
				<table class="form">
					<tr>
						<td class="field">TutorID：</td>
						<td><input type="text" class="text" name="tutor.id" value="${tutor.id }" readonly="readonly" /></td>
					</tr>
					<tr>
						<td class="field">Username：</td>
						<td><input type="text" class="text" name="tutor.nick_name" value="${tutor.nick_name }" readonly="readonly"/></td>
					</tr>
					<tr>
						<td class="field">Tutorname：</td>
						<td><input type="text" class="text" name="tutor.real_name" value="${tutor.real_name }"/></td>
					</tr>
					<tr>
						<td class="field">Gender：</td>
						<td><input type="text" class="text" name="tutor.gender" value="${tutor.gender }"/></td>
					</tr>
					<tr>
						<td class="field">Age：</td>
						<td><input type="text" class="text" name="tutor.age" value="${tutor.age }"/></td>
					</tr>
					<tr>
						<td class="field">School：</td>
						<td><input type="text" class="text" name="tutor.school" value="${tutor.school }"/></td>
					</tr>
					<tr>
						<td class="field">Major：</td>
						<td><input type="text" class="text" name="tutor.major" value="${tutor.major }"/></td>
					</tr>
					<tr>
						<td class="field">Subject：</td>
						<td><input type="text" class="text" name="tutor.course" value="${tutor.course }" readonly="readonly"/></td>
					</tr>
					<tr>
						<td class="field">Telephone：</td>
						<td><input type="text" class="text" name="tutor.telephone" value="${tutor.telephone }" /></td>
					</tr>
					<tr>
						<td class="field">Brief Introduce：</td>
						<td><textarea name="tutor.p_summary" cols="60" rows="15" class=autosave>${tutor.p_summary }</textarea></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-blue"><input type="submit" name="submit" value="Update" /></label></td>
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
