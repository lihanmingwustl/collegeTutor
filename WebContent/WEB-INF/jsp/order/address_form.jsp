<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Generate order</title>
		<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/page_bottom.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/order.address.js"></script>
		
		
		
	</head>
	<body>&nbsp; 
		<%@include file="/common/head1.jsp"%>
		<div class="login_step">
			Generate order steps: 1.Confirm hiring>
			<span class="red_bold"> 2.Fill in the student address</span> > 3.Employment order success
		</div>
		<div class="fill_message">
			<p>
				Select address：
				<select id="address">
					<option value="-1">
						Fill in the new address
					</option>
				</select>
			</p>
			<form name="ctl00" method="post" action="orderSubmit" id="f">
				<s:token></s:token>
				<input type="hidden" name="addr.id" id="addressId" value="-1"/>

				<table class="tab_login">
					<tr>
						<td valign="top" class="w1">
							StudentName：
						</td>
						<td>
							<input type="text" class="text_input" name="addr.receive_name"
								id="receiveName" />
							<div class="text_left" id="nameValidMsg">
								<p>
									Please fill in the valid student's name
								</p>
								<span style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							Student detailed address：
						</td>
						<td>
							<input type="text" name="addr.full_address" class="text_input"
								id="fullAddress" />
							<div class="text_left" id="addressValidMsg">
								<p>
									Please fill in the valid student detailed address
								</p>
								<span style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							zip code
						</td>
						<td>
							<input type="text" class="text_input" name="addr.postal_code"
								id="postalCode" />
							<div class="text_left" id="codeValidMsg">
								<p>
									Please fill in the effective student zip code
								</p>
								<span style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							Telephone
						</td>
						<td>
							<input type="text" class="text_input" name="addr.phone"
								id="phone" />
							<div class="text_left" id="phoneValidMsg">
								<p>
									Please fill in the effective student telephone.<span style="color:green">&nbsp;&nbsp;&nbsp;Optional</span>
								</p>
								
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							Mobile phone
						</td>
						<td>
							<input type="text" class="text_input" name="addr.mobile"
								id="mobile" />
							<div class="text_left" id="mobileValidMsg">
								<p>
									Please fill in the effective student Mobile phone<span style="color:green">&nbsp;&nbsp;&nbsp;Optional</span>
								</p>
								
							</div>
						</td>
					</tr>
				</table>

				<div class="login_in">

					<a href="confirm"><input id="btnClientRegister2" class="button_1" name="submit"
					type="button" value="Cancel" /></a>
			
				<input id="btnClientRegister" class="button_1" name="submit"
					type="submit" value="Next step" />
				</div>
			</form>
		</div>
		<%@include file="/common/foot1.jsp"%>
	</body>
</html>

		
		
		
		<!--




	</head>
	<body>&nbsp; 
		<%@include file="/common/head1.jsp"%>
		<div class="login_step">
			生成订单步骤: 1.确认聘用Tutor >
			<span class="red_bold"> 2.填写学生地址</span> > 3.聘用订单成功
		</div>
		<div class="fill_message">
			<p>
				选择地址：
				<select id="address">
					<option value="-1">
						填写新地址
					</option>
				</select>
			</p>
			<form name="ctl00" method="post" action="orderSubmit" id="f">
				<s:token></s:token>
				<input type="hidden" name="addr.id" id="addressId" value="-1"/>

				<table class="tab_login">
					<tr>
						<td valign="top" class="w1">
							学生姓名：
						</td>
						<td>
							<input type="text" class="text_input" name="addr.receive_name"
								id="receiveName" />
							<div class="text_left" id="nameValidMsg">
								<p>
									请填写有效的学生姓名
								</p>
								<span style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							学生详细地址：
						</td>
						<td>
							<input type="text" name="addr.full_address" class="text_input"
								id="fullAddress" />
							<div class="text_left" id="addressValidMsg">
								<p>
									请填写有效的学生详细地址
								</p>
								<span style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							邮政编码
						</td>
						<td>
							<input type="text" class="text_input" name="addr.postal_code"
								id="postalCode" />
							<div class="text_left" id="codeValidMsg">
								<p>
									请填写有效的学生的邮政编码
								</p>
								<span style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							电话
						</td>
						<td>
							<input type="text" class="text_input" name="addr.phone"
								id="phone" />
							<div class="text_left" id="phoneValidMsg">
								<p>
									请填写有效的学生联系电话<span style="color:green">&nbsp;&nbsp;&nbsp;选填项</span>
								</p>
								
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							手机
						</td>
						<td>
							<input type="text" class="text_input" name="addr.mobile"
								id="mobile" />
							<div class="text_left" id="mobileValidMsg">
								<p>
									请填写有效的学生的手机<span style="color:green">&nbsp;&nbsp;&nbsp;选填项</span>
								</p>
								
							</div>
						</td>
					</tr>
				</table>

				<div class="login_in">

					<a href="confirm"><input id="btnClientRegister2" class="button_1" name="submit"
					type="button" value="取消" /></a>
			
				<input id="btnClientRegister" class="button_1" name="submit"
					type="submit" value="下一步" />
				</div>
			</form>
		</div>
		<%@include file="/common/foot1.jsp"%>
	</body>
</html>

-->