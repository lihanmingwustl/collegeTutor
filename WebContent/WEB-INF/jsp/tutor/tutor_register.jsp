<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Register Page</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/page_bottom.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.min.js"></script>
		<script type="text/javascript">
		$(function(){
 			$("#RegisterCheck").click(function(){
 				
 				if($("#Username").val()==""||$("#Username").val()==""){
 					alert("Username cannot be empty");
 					return false;
 				}
 				if($("#Realname").val()==""||$("#Realname").val()==""){
 					alert("Realname cannot be empty");
 					return false;
 				}
 				if($("#School").val()==""||$("#School").val()==""){
 					alert("School cannot be empty");
 					return false;
 				}
 				if($("#Major").val()==""||$("#Major").val()==""){
 					alert("Major cannot be empty");
 					return false;
 				}
 				if($("#Gender").val()==""||$("#Gender").val()==""){
 					alert("Gender cannot be empty");
 					return false;
 				}
 				if($("#Age").val()==""||$("#Age").val()==""){
 					alert("Age cannot be empty");
 					return false;
 				}
 				if($("#Salary").val()==""||$("#Salary").val()==""){
 					alert("Hourly wage cannot be empty");
 					return false;
 				}
 				if($("#Telephone").val()==""||$("#Telephone").val()==""){
 					alert("Telephone cannot be empty");
 					return false;
 				}
 				if($("#Password").val()==""||$("#Password").val()==""){
 					alert("Password cannot be empty");
 					return false;
 				}
 				if($("#rePassword").val()==""||$("#rePassword").val()==""){
 					alert("RePassword cannot be empty");
 					return false;
 				}
 				if($("#rePassword").val()!=$("#Password").val()){
 					alert("Two passwords are not the same");
 					return false;
 				}
 					
 				if($("#introduce").val()==""||$("#introduce").val()==""){
 					alert("Self introduce cannot be empty");
 					return false;
 				}
  			});
		});
</script>
	</head>
	<body>


		<%@include file="/common/head1.jsp"%>
		<div id="register" class="wrap">
	<div class="shadow">
		<em class="corner lb"></em>
		<em class="corner rt"></em>
		<div class="box">
			<h1>Welcome to register</h1>
			<ul class="steps clearfix">
				<li class="current"><em></em>Fill in the registration information</li>
				<li class="last"><em></em>Registration Successful</li>
			</ul>
			<form id="regForm" method="post" action="tutorRegister" onsubmit="return checkForm(this);">
				<table>
					<tr>
						<td class="field">Username：</td>
						<td><input class="text" type="text" id="Username" name="tutor.nick_name" /><spanid="spanUn"></span></td>
					</tr>
					<tr>
						<td class="field">Realname：</td>
						<td><input class="text" type="text" id="Realname" name="tutor.real_name" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span id="spanRn"></span></td>
					</tr>
					<tr>
						<td class="field">School：</td>
						<td><input class="text" type="text" id="School" name="tutor.school" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span id="spanSchool"></span></td>
					</tr>
					<tr>
						<td class="field">Major：</td>
						<td><input class="text" type="text" id="Major" name="tutor.major" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span id="spanMajor"></span></td>
					</tr>
					<tr>
						<td class="field">Gender：</td>
						<td><input class="text" type="text" id="Gender" name="tutor.gender" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><spanid="spanGender"></span></td>
					</tr>
					<tr>
						<td class="field">Teaching subject：</td>
						<td>
							<select name="Cid">
								<option value="9" selected="selected">Chinese in primary school</option>
								<option value="10">Math in primary school</option>
								<option value="11">English in primary school</option>
								<option value="12">Moral and social</option>
								<option value="13">PE in primary school</option>
								
								<option value="14">Chinese in junior middle school</option>
								<option value="15">Math in junior middle school</option>
								<option value="16">English in junior middle school</option>
								<option value="17">Biology in junior middle school</option>
								<option value="18">History in junior middle school</option>
								<option value="19">Geography in junior middle school</option>
								<option value="20">Politics in junior middle school</option>
								<option value="21">Physics in junior middle school</option>
								<option value="22">Chemistry in junior middle school</option>
								
								<option value="23">Chinese in senior middle school</option>
								<option value="24">Math in senior middle school</option>
								<option value="25">English in senior middle school</option>
								<option value="26">Biology in senior middle school</option>
								<option value="27">History in senior middle school</option>
								<option value="28">Geography in senior middle school</option>
								<option value="29">Politics in senior middle school</option>
								<option value="30">Physics in senior middle school</option>
								<option value="31">Chemistry in senior middle school</option>
								
							</select>
						</td>
					</tr>
					<tr>
						<td class="field">Photo：</td>
						<td>
							<select name="tutor.reg_pic">
								<option value="1.jpg" selected="selected">1.jpg</option>
								<option value="2.jpg">2.jpg</option>
								<option value="3.jpg">3.jpg</option>
								<option value="4.jpg">4.jpg</option>
								<option value="5.jpg">5.jpg</option>
								<option value="6.jpg">6.jpg</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class="field">Age：</td>
						<td><input class="text" type="text" id="Age" name="tutor.age" /><span id="spanAge"></span></td>
					</tr>
					<tr>
						<td class="field">Wage(￥)：</td>
						<td><input class="text" type="text" id="Salary" name="tutor.salary" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span id="spanSalary"></span></td>
					</tr>
					<tr>
						<td class="field">Telephone：</td>
						<td><input class="text" type="text" id="Telephone" name="tutor.telephone" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span id="spanTel"></span></td>
					</tr>
					<tr>
						<td class="field">Password：</td>
						<td><input class="text" type="password" id="Password" id="tutor.passWord" name="tutor.password" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span id="spanPw"></span></td>
					</tr>
					<tr>
						<td class="field">Confirmpwd：</td>
						<td><input class="text" type="password" id="rePassword" name="rePassWord" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><span id="spanRPw"></span></td>
					</tr>
					<tr>
						<td class="field">Introduce：</td>
						<td><textarea id="introduce" name="tutor.p_summary" style="width: 230px" cols="60" rows="3" ></textarea><span id="spanIntroduce"></span></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-green"><input type="submit" id="RegisterCheck" name="submit" value="Register" /></label></td>
					</tr>
				</table>
			</form>
		</div>
	</div>

</div>
		<%@include file="/common/foot1.jsp"%>

	</body>
</html>

