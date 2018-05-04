<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>User Login</title>
		<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/page_bottom.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="../js/jquery-1.4.min.js"></script>
	<script type="text/javascript" src="../js/user.register.js"></script>
	</head>
	<body>
		<%@include file="/common/head1.jsp"%>
		<div class="login_step">
			Registration step:
			<span class="red_bold">1.Fill in information</span> > 2.Verify Email > 3.Registered success
		</div>
		<div class="fill_message">
			<form name="ctl00" method="post" action="regist.action" id="f">
				<s:token></s:token>

				<table class="tab_login" >
					<tr>
						<td valign="top" class="w1">
							Please fill in your Email address:
						</td>
						<td>
							<input name="user.email" type="text" id="txtEmail" class="text_input"/>
							<div class="text_left" id="emailValidMsg">
								<p>
									Please fill in the valid Email address, and you will receive the confirmation email in the next step.
								</p>
									<span id="email.info" style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							Set your nickname:
						</td>
						<td>
							<input name="user.nickname" type="text" id="txtNickName" class="text_input" />
							<div class="text_left" id="nickNameValidMsg">
								<p>
									Your nickname can be composed of small English letters and digits,
								</p>
								<p>
									The length of 4-20 characters.
								</p>
								<span id="name.info" style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							Password：
						</td>
						<td>
							<input name="user.password" type="password" id="txtPassword"
								class="text_input" />
							<div class="text_left" id="passwordValidMsg">
								<p>
									Your password can be written by the size of English letters, digits, 6 to 20 bit length。
								</p>
								<span id="password.info" style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							Confirm password：
						</td>
						<td>
							<input name="repwd" type="password" id="txtRepeatPass"
								class="text_input"/>
							<div class="text_left" id="repeatPassValidMsg">
							<span id="password1.info" style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							Verification code：
						</td>
						<td>
							<img class="yzm_img" id='imgVcode' src="checkCode.action" />
							<input name="checkCode" type="text" id="txtVerifyCode"
								class="yzm_input"/>
							<div class="text_left t1">
								<p class="t1">
									<span id="vcodeValidMsg">Please enter the four letters in the picture.。</span>
									
									<a href="#" id="checkCode">Can't see clearly? Change a picture</a>
									<span id="number.info" style="color:red"></span>
								</p>
							</div>
						</td>
					</tr>
				</table>

				<div class="login_in">

					<input id="btnClientRegister" class="button_1" name="submit"  type="submit" value="Register"/>
				</div>
			</form>
		</div>
		<%@include file="/common/foot1.jsp"%>
	</body>
</html>

