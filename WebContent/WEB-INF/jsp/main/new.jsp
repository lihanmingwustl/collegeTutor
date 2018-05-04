<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<h2>
	<span class="more"><a href="#" target="_blank">More&gt;&gt;</a> </span>Newest on-line tutor
</h2>
<div class="book_c_04">

	<!--热销图书A开始-->
	<s:iterator value="tutors">
	<div class="second_d_wai">
		<div class="img">
			<a href="${pageContext.request.contextPath}/main/tutor_view?id=${id }"><img
					src="${pageContext.request.contextPath}/productImages/${reg_pic }" border=0 /> </a>
		</div>
		<div class="shuming">
			Tutor Name：<a href="${pageContext.request.contextPath}/main/tutor_view?id=${id }" >${nick_name }</a><a href="#" target="_blank"></a>
		</div>
		<div class="price">
			Subject：${course }
		</div>
		<div class="price">
			Discount：￥${dis_salary }
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	</s:iterator>
	<!--热销图书A结束-->

</div>
<div class="clear"></div>