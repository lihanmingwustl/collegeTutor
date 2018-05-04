<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>用户注册 - 当当网</title>
		<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/page_bottom.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<%@include file="/common/head1.jsp"%>
		<div class="login_step">
			Generate order steps: 1.Confirm hiring >2.Fill in the student address >
			<span class="red_bold">3.Employment order success</span>
		</div>


		<div class="login_success">
			<div class="login_bj">
				<div class="succ">
				</div>
				<h5>
					Order has been generated
				</h5>
				<h6>
					You have just generated the order number is: ${order.id}, the amount of total ${order.total_price}
				</h6>

				<ul>
					<li class="nobj">
						You can now:
					</li>
					<li>
						<a href="../main/mainAction">Continue to browse and buy goods</a>
					</li>
				</ul>
			</div>
		</div>

		<%@include file="/common/foot1.jsp"%>
	</body>
</html>

