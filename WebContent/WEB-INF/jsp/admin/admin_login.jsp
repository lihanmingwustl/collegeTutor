<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>Background login</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/page_bottom.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/function.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/user.login_form.js"></script>
</head>
<body>
<%@include file="/common/head1.jsp"%>
<div id="header" class="wrap">
	<div class="help"><a href="${pageContext.request.contextPath}/main/mainAction">Back home</a></div>
</div>
<div id="register" class="wrap">
	<div class="shadow">
		<em class="corner lb"></em>
		<em class="corner rt"></em>
		<div class="box">
			<h1>Welcome to the background management system</h1>
			<form id="loginForm" method="post" action="adminlogin" onsubmit="return checkForm(this)">
				<table>
					<tr>
						<td class="field">UserName：</td>
						<td><input class="text" type="text" id="userName"name="admin.username" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span></span></td>
					</tr>
					<tr>
						<td class="field">Password：</td>
						<td><input class="text" type="password" id="passWord" name="admin.password" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span></span></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-green"><input type="submit" name="submit" id="btnAdlogin" value="Login" /></label></td>
					</tr>
				</table>
				<span style="color:red" id="txtAdLoginErr">${login_err }</span>
							<input type="hidden" name="uri" value="${uri}" />
			</form>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; BUPT
</div>
</body>
</html>
