<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Tutor HomePage</title>
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/function-manage.js"></script>
</head>
<body>
<div id="header" class="wrap">
	<div id="logo"><img src="../images/logo.gif" /></div>
	<div class="help"><a href="<%=request.getContextPath() %>/tutor/tutorLogout">Logout</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li><a href="${pageContext.request.contextPath}/tutor/backToIndex">Home page</a></li>
			<li><a href="<%=request.getContextPath() %>/tutor/checkMyInfo?Id=${s_tutor.id }">Information</a></li>
			<li class="current"><a href="<%=request.getContextPath() %>/tutor/checkMyOrder?Id=${s_tutor.id }">Order</a></li>
		</ul>
	</div>
</div>
<div id="childNav">
	<div class="welcome wrap">
		Tutor ${s_tutor.nick_name} Hello, welcome to my information.
	</div>
</div>
<div id="position" class="wrap">
	Your current position:The College Tutors &gt;HomePage
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
		<h2>Order Management</h2>
		<div class="manage">
			<table class="list">
				<tr>
					<th>OrderID</th>
					<th>UserName</th>
					<th>Subject</th>
					<th>ClassHour</th>
					<th>OrderTime</th>
					<th>Cost</th>
					<th>Telephone</th>
				</tr>
				
				<s:iterator value="ios_t" var="io_t">
				<tr>
					<td class="first w2 c">${io_t.id }</td>
					<td class="w4 c">${io_t.user_name }</td>
					<td class="w2 c">${io_t.course }</td>
					<td class="w2 c">${io_t.count }</td>
					<td class="w4 c">${io_t.order_dt }</td>
					<td class="w2 c">${io_t.total_price }</td>
					<td class="w2 c">${io_t.mobile }</td>
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
