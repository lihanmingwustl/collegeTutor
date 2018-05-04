//购买按钮相关操作
$(function(){
	$(".list_r_list_button").click(function(){
		var href = $(this).find("a").attr("href");
		var v_flag = false;//如果没接到数据，设为true则跳转，执行拦截器
		var info = $(this).next(".mycartinfo");
		info.html("");
		info.html("<img src='../images/my/ajax_loader.gif' />");
		$.ajax({
			type:"GET",
			url:href,
			success:function(data){
				if(data.flag){
					info.html("<a href='../cart/cart'>Purchase success, click here to view shopping cart</a>");
				}else if(data.flag==undefined){
				info.html("<a href='../user/tologinAction'>You are not logged in, click here to jump to the login page</a>");
				}else{
					info.html("Sorry, the system is busy, buy a failure");
				}
			}
		});
		return false;
	});
	
});