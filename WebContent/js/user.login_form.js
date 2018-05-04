//用户名和密码不能为空
$(function(){
	$("#btnSignCheck").click(function(){
		var err = $("#txtLoginErr");
		if($("#txtEamil").val()==""||$("#txtPassword").val()==""){
			err.text("Please fill in the email address and password");
			return false;
		}
	});
	$("#btnAdlogin").click(function(){
		var err = $("#txtAdLoginErr");
		if($("#userName").val()==""||$("#passWord").val()==""){
			err.text("Please fill in the user name and password");
			return false;
		}
	});
	$("#btnTutorLogin").click(function(){
		var err = $("#txtLoginErr");
		if($("#tutorName").val()==""||$("#tutorPassword").val()==""){
			err.text("Please fill in the user name and password");
			return false;
		}
	});
});