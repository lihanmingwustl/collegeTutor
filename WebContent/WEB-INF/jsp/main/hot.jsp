<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<h2>
	<span class="more"><a href="#" target="_blank">More&gt;&gt;</a> </span>Tutor Hot-Board
</h2>
<div class="book_c_04">

	<!--热销图书A开始-->
	<s:if test="tutors.size()==0">
		<div style=' font-size:16px;height:105px;line-height:105px;overflow:hidden;text-align:center'>There is no data in this column.Coming soon！</div>
	</s:if>
	<s:else>
		<s:iterator value="tutors">
		<div class="second_d_wai">
			<div class="img">
				<a href="${pageContext.request.contextPath}/main/tutor_view?id=${id }"><img
						src="${pageContext.request.contextPath}/productImages/${reg_pic }" border=0 /> </a>
			</div>
			<div class="shuming">
				<a href="${pageContext.request.contextPath}/main/tutor_view?id=${id }">${nick_name }</a><a href="#" target="_blank"></a>
			</div>
			<div class="price">
				Hourly wage：￥${salary }
			</div>
			<div class="price">
				Discount：￥${dis_salary }
			</div>
		</div>
		<div class="book_c_xy_long"></div>
		</s:iterator>
	</s:else>
	<!--热销图书A结束-->

</div>
<div class="clear"></div>