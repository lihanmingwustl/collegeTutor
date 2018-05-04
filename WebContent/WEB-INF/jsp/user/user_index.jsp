<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>My Info</title>
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/function-manage.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/function.js"></script>
</head>
<body>
<div id="header" class="wrap">
	<div id="logo"><a href="${pageContext.request.contextPath}/main/mainAction"><img src="../images/logo.gif" /></a>
	</div>
	<div class="help"><a href="<%=request.getContextPath() %>/user/logout">Logout</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li class="current"><a href="#">HomePage</a></li>
			<li><a href="<%=request.getContextPath() %>/user/checkMyInfo?Id=${s_user.id }">Information</a></li>
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
				<dd><a href="<%=request.getContextPath() %>/user/checkMyOrder?Id=${s_user.id }">Order Management</a></dd>
			</dl>
		</div>
	</div>
	<div class="main">
		<h2>Management HomePage</h2>
		<div id="welcome" class="manage">
			<div class="shadow">
				<em class="corner lb"></em>
				<em class="corner rt"></em>
				<div class="box">
					<div class="msg">
						<p>Welcome to Information Management HomePage</p>
					</div>
				</div>
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
