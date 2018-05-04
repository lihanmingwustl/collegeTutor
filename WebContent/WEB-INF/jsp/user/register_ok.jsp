<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@page import="com.tarena.entity.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>User Login</title>
		<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/page_bottom.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<%@include file="/common/head1.jsp"%>
		<div class="login_step">
			Registration step: 1.Fill in information > 2.Verify Email > 
			<span class="red_bold">3.Registered success</span>
		</div>


		<div class="login_success">
			<div class="login_bj">
				<div class="succ">
				</div>
				<h5>
					${s_user.nickname }，Welcome
				</h5>
				<h6>
					Please keep in mind your login email address：${s_user.email }
				</h6>

				<ul>
					<li class="nobj">
						Now,you can：
					</li>
					<li>
						Enter“
						<a href="#">My Info</a>”view your personal information.
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/main/mainAction">Browse and purchase goods</a>
					</li>
				</ul>
			</div>
		</div>

		<%@include file="/common/foot1.jsp"%>
	</body>
</html>

