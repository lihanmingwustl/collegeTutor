<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>User Register</title>
		<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/page_bottom.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<%@include file="/common/head1.jsp"%>

		<div class="login_step">
			Registration step: 1.Fill in information >
			<span class="red_bold">2.Verify Email</span> > 3.Registered success
		</div>
		<form action="verify" method="post">
			<s:token></s:token>
			<div class="validate_email">
				<h2>
					Thank you for registering! Now follow the steps below to complete your registration!
				</h2>
				<div class="look_email">
					<h4>
						Step 1: check your email address
					</h4>
					<div class="mess reduce_h">
						We send you a confirmation email, the email address is:
						<a href="${pageContext.request.contextPath}/emailcode.jsp" target="_blank" ><span class="red"><span id="lblEmail">${s_user.email }</span></a>
						</span>
						<span class="t1"> 
						Please login to your Email.
					</div>
					<h4>
						Step 2: enter the verification code
					</h4>
					<div class="mess">
						<span class="write_in">Enter your verification code in the message：</span>
						<input name="code" type="text" id="validatecode" class="yzm_text" 
						value="${s_user.email_verify_code}-${s_user.id }" />
						<input class="finsh" type="submit" value="Finish" id="Button1" />
						<span id="errorMsg" class="no_right">${verify_err }</span>
					</div>
				</div>
			</div>
		</form>
		<%@include file="/common/foot1.jsp"%>
	</body>
</html>

