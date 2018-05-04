<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="c1" uri="http://www.hynu.com.cn/mytag" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<HTML>
	<HEAD>
		<TITLE>The College Tutors </TITLE>
		<META http-equiv=Content-Type content="text/html; charset=utf-8">
		<LINK href="${pageContext.request.contextPath}/product_files/dangdang.css" type=text/css
			rel=Stylesheet>
		<LINK href="${pageContext.request.contextPath}/product_files/book1.css" type=text/css rel=stylesheet>
		<link href="${pageContext.request.contextPath}/css/book1.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/comm_answer.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/book.list.js"></script>

	</HEAD>
	<BODY>
		<%@include file="/common/head.jsp"%>
		
		<DIV id=tag_box style="DISPLAY: none; Z-INDEX: 10; POSITION: absolute"></DIV>
		<DIV id=div_shield></DIV>
		<DIV id=main>
			<DIV class=mainsearch></DIV>
			<DIV class=wrap>
				<!--left start-->
				<!--left end-->
				<DIV class=right>
					<DIV class=right_wai>
						<DIV class=shuming>
							<DIV class=shuming_left>		
								<SPAN class=black000><A name=top_bk></A>${tutor.nick_name}</SPAN>
							</DIV>

							<DIV class=empty_box></DIV>
						</DIV>
						<DIV class=book_left>
							<DIV class=book_pic>
								<IMG id=img_show_prd
										src="${pageContext.request.contextPath}/productImages/${tutor.reg_pic }">
								</A>
							</DIV>
							<INPUT id=hid_largepictureurl type=hidden>
						</DIV>
						<DIV class=book_right>
							<DIV id=author_>
								RealName： ${tutor.real_name }
							</DIV>
							<DIV id=publisher_>
								School： ${tutor.school }
							</DIV>
							<DIV id=publisher_>
								Major： ${tutor.major }
							</DIV>
							<DIV id=publisher_>
								Subject： ${tutor.course }
							</DIV>
							<UL>
								<LI>
									Register Time： ${tutor.reg_dt }
								</LI>
								<LI>
									Telephone ： ${tutor.telephone }
								</LI>
							</UL>

							<DIV class=jiage>
								<SPAN class=gray87>Hourly wage：<SPAN class=del id=originalPriceTag>￥${tutor.salary
										}</SPAN>
								</SPAN>
								<SPAN class=redc30>Discount：￥<B>${tutor.dis_salary }</B>
								</SPAN> Save：￥<c1:retainTwo/>
								<DIV class=pd_buy_num>
									<DIV class=clear></DIV>
								</DIV>
								<DIV class=goumai>
									<span class="list_r_list_button"> 
							<a href="<%=request.getContextPath() %>/cart/cartBuy?id= ${tutor.id }"> 
							<img src='${pageContext.request.contextPath}/images/buttom_goumai.gif' /> </a></span>
							<span id="cartinfo" class="mycartinfo"></span>
									<!--  <A id=favor title=收藏 href="#" name=wishlist_book>
<IMG id=imgfavor src="../product_files/bookz_save.gif"></A>
-->
								</DIV>
							

							</DIV>
						</DIV>
						<DIV id=dvTPUrls></DIV>
						<DIV id=__zhinengbiaozhu_bk>
							<DIV class=dashed></DIV>
							<H2 class=black14>
								
							
							<DIV class=dashed></DIV>
							<H2 class=black14>
								Tutor Introduce
							</H2>
							<DIV class=zhengwen>
								${tutor.p_summary }
							</DIV>
						</DIV>
						<A name=review_point></A>
					</DIV>
				</DIV>
				<DIV id=tag_box
					style="DISPLAY: none; Z-INDEX: 2; POSITION: absolute"></DIV>
				<DIV id=tag_box_pay
					style="DISPLAY: none; Z-INDEX: 2; POSITION: absolute"></DIV>
				<DIV id=div_shield></DIV>
				<!--页尾 开始 -->
				<DIV class=public_footer_add_s></DIV>
				<!--09.3.10new-->
				<!--页尾 end -->
				<!--页尾开始 -->
				<%@include file="/common/foot.jsp"%>
				<!--页尾结束 -->
	</BODY>
</HTML>
