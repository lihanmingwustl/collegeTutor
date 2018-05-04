<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Tutor Homepage</title>
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/function-manage.js"></script>
</head>
<body>
<div id="header" class="wrap">
	<div id="logo"><img src="../images/logo.gif" /></div>
	<div class="help"><a href="<%=request.getContextPath() %>/tutor/tutorLogout">Logout</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li><a href="${pageContext.request.contextPath}/tutor/backToIndex">Home Page</a></li>
			<li class="current"><a href="<%=request.getContextPath() %>/tutor/checkMyInfo?Id=${s_tutor.id }">Information</a></li>
			<li><a href="<%=request.getContextPath() %>/tutor/checkMyOrder?Id=${s_tutor.id }">Order</a></li>
		</ul>
	</div>
</div>
<div id="childNav">
	<div class="welcome wrap">
		Tutor ${s_tutor.nick_name} Hello, welcome to my information.
	</div>
</div>
<div id="position" class="wrap">
	Your current position:The College Tutors &gt; HomePage
</div>
<div id="main" class="wrap">
	<div id="menu-mng" class="lefter">
		<div class="box">
			<dl>
				<dt>Information management</dt>
				<dd><a href="<%=request.getContextPath() %>/tutor/checkMyInfo?Id=${s_tutor.id }">Information management</a></dd>
				<dt>Order Management</dt>
				<dd><a href="<%=request.getContextPath() %>/tutor/checkMyOrder?Id=${s_tutor.id }">Order Management</a></dd>
			</dl>
		</div>
	</div>
	<div class="main">
		<h2>View personal information</h2>
		<div class="manage">
			<form action="updateTutorInfo">
				<table class="form">
					<tr>
						<td class="field">TutorID：</td>
						<td><input type="text" class="text" name="tu.id" value="${tu.id }" readonly="readonly" /></td>
					</tr>
					<tr>
						<td class="field">UserName：</td>
						<td><input type="text" class="text" name="tu.nick_name" value="${tu.nick_name }" readonly="readonly"/></td>
					</tr>
					<tr>
						<td class="field">TutorName：</td>
						<td><input type="text" class="text" name="tu.real_name" value="${tu.real_name }"/></td>
					</tr>
					<tr>
						<td class="field">Gender：</td>
						<td><input type="text" class="text" name="tu.gender" value="${tu.gender }"/></td>
					</tr>
					<tr>
						<td class="field">Age：</td>
						<td><input type="text" class="text" name="tu.age" value="${tu.age }"/></td>
					</tr>
					<tr>
						<td class="field">School：</td>
						<td><input type="text" class="text" name="tu.school" value="${tu.school }"/></td>
					</tr>
					<tr>
						<td class="field">Major：</td>
						<td><input type="text" class="text" name="tu.major" value="${tu.major }"/></td>
					</tr>
					<tr>
						<td class="field">Subject：</td>
						<td><input type="text" class="text" name="tu.course" value="${tu.course }" readonly="readonly"/></td>
					</tr>
					<tr>
						<td class="field">Telephone：</td>
						<td><input type="text" class="text" name="tu.telephone" value="${tu.telephone }" /></td>
					</tr>
					<tr>
						<td class="field">TutorIntroduce：</td>
						<td><textarea name="tu.p_summary" cols="60" rows="15" class=autosave>${tu.p_summary }</textarea></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-blue"><input type="submit" name="submit" value="update" /></label></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; BUPT
</div>
</body>
</html>
