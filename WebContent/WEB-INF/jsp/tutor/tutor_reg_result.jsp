<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Tutor Register</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

		<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/user.login_form.js"></script>

	</head>
	<body>

		<div id="register" class="wrap">
	<div class="shadow">
		<em class="corner lb"></em>
		<em class="corner rt"></em>
		<div class="box">
			<h1>Welcome to register</h1>
			<ul class="steps clearfix">
				<li class="finished"><em></em>Fill in the registration information</li>
				<li class="last-current"><em></em>Registration Successful</li>
			</ul>
			<div class="msg">
				<p>Congratulations: successful registration!</p>
				<p>Is entering the home page...</p>
				<script type="text/javascript">
					setTimeout("location.href='<%=request.getContextPath() %>/tutor/totutorloginAction'", 3000);
				</script>
			</div>
		</div>
	</div>
</div>
	<div class="clear"></div>
</div>
		<%@include file="/common/foot1.jsp"%>

	</body>
</html>

