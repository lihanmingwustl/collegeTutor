<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Tutor Login</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/page_bottom.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/user.login_form.js"></script>

	</head>
	<body>


		<%@include file="/common/head1.jsp"%>

		<div class="enter_part">

			<%@include file="/common/introduce.jsp"%>

			<div class="enter_in">
				<div class="bj_top"></div>
				<div class="center">
					<div style="height: 30px; padding: 5px; color: red" id="divErrorMssage">
					
					</div>
					<div class="main">
						<h3>
							Tutor Login
						</h3>

						<form method="post" action="tutorLogin" id="ctl00">
						
							<ul>
								<li>
									<span  style="width: 100px">Enter username：</span>
									<input type="text" name="tutor.nick_name" id="tutorName" class="textbox" />
								</li>
								<li>
									<span style="width: 100px">Password：</span>
									<input type="password" name="tutor.password" id="tutorPassword"
										class="textbox" />
								</li>
								<li>
									<input type="submit" id="btnTutorLogin" class="button_enter"
										value="Login" />


								</li>
							</ul>
							<span style="color:red" id="txtLoginErr">${login_err }</span>
							<input type="hidden" name="uri" value="${uri}" />
						</form>
					</div>
				</div>
			</div>
		</div>

		<%@include file="/common/foot1.jsp"%>

	</body>
</html>

