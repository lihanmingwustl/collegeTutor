<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<h2>
	Webmaster recommendation

</h2>
<div id=__bianjituijian/danpin>
	<div class=second_c_02>
	
	<s:iterator value="tutors">
		<div class=second_c_02_b1>
			<div class=second_c_02_b1_1>
				<a href="${pageContext.request.contextPath}/main/tutor_view?id=${id }" ><img src="${pageContext.request.contextPath}/productImages/${reg_pic }" width=70 border=0 /> </a>
			</div>
			<div class=second_c_02_b1_2>
				<h3>
					<a href="${pageContext.request.contextPath}/main/tutor_view?id=${id }" title='${nick_name }'>Tutor:${nick_name }</a>
				</h3>
				<h4>
					RealName：${real_name }&nbsp;&nbsp;&nbsp;&nbsp;
					<br />
					School：${school }
					<br />
					Subject：${course }&nbsp;&nbsp;&nbsp;&nbsp;RegisterTime：${reg_dt }
				</h4>
				<h6>
					Hourly wage：￥${salary }&nbsp;&nbsp;Discount：￥${dis_salary }
				</h6>
				<div class=line_xx></div>
			</div>
		</div>
		</s:iterator>
		
	</div>
</div>
