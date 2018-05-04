<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Tutor HomePage</title>
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/function-manage.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/function.js"></script>
</head>
<body>
<div id="header" class="wrap">
	<div id="logo"><img src="../images/logo.gif" />
	</div>
	<div class="help"><a href="<%=request.getContextPath() %>/tutor/tutorLogout">Logout</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li class="current"><a href="#">Home Page</a></li>
			<li><a href="<%=request.getContextPath() %>/tutor/checkMyInfo?Id=${s_tutor.id }">Information</a></li>
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
		<h2>Information Management HomePage</h2>
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
