<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c1" uri="http://www.hynu.com.cn/mytag" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>The College Tutors</title>
		<script type="text/javascript" src="../js/prototype-1.6.0.3.js">
		</script>
		<link href="${pageContext.request.contextPath}/css/book.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/second.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/secBook_Show.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/list.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/book.list.js"></script>
	</head>
	<body>
		&nbsp;

		<!-- 头部开始 -->
		<%@include file="/common/head.jsp"%>
		<!-- 头部结束 -->

		<div style="width: 962px; margin: auto;">
			<a href="#"><img src="${pageContext.request.contextPath}/images/default/book_banner_081203.jpg" border="0" /> </a>
		</div>
		<div class='your_position'>
			Your current position:&nbsp;
			<a href="${pageContext.request.contextPath}/main/mainAction">Classification</a> &gt;&gt;
			<font style='color: #cc3300'><strong></strong> </font>
		</div>

		<div class="book">

			<!--左栏开始-->
			<div id="left" class="book_left">
				<div id="__fenleiliulan">
					<div class=second_l_border2>
						<h2>
							Classified browsing
						</h2>
						<ul>
							<li>
								<div>
									<div class=second_fenlei>
										&middot;All&nbsp;(${totalPnum })
									</div>
								</div>
							</li>
							<div class="clear"></div>
							
							<!--2级分类开始-->
							<s:iterator value="cats" var="c">
							<li>
								<div>
									<div class=second_fenlei>
										&middot;
									</div>
									<s:if test="c2==#c.id">
									<div class=second_fenlei3>
										<a>${c.name }&nbsp;(${c.pnum })</a>
									</div>
									</s:if>
									<s:else>
									<div class=second_fenlei>
										<a href="tutorlistAction?c1=${c1 }&c2=${c.id}">${c.name }&nbsp;(${c.pnum })</a>
									</div>
									</s:else>
								</div>
							</li>
						    <div class="clear"></div>
						    </s:iterator>
							<!--2级分类结束-->
							
							<li>
								<div></div>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<!--左栏结束-->

			<!--中栏开始-->
			<div class="book_center">

				<!--图书列表开始-->
				<div id="divRight" class="list_right">

					<div id="book_list" class="list_r_title">
						<div class="list_r_title_text">
							Sort By
						</div>
						<select onchange='' name='select_order' size='1'
							class='list_r_title_ml'>
							<option value="">
								According to the on-line time desc
							</option>
						</select>
						<div id="divTopPageNavi" class="list_r_title_text3">

							<!--分页导航开始-->
							<s:if test="page>1">
							<div class='list_r_title_text3a'>
								<a name=link_page_next
									href="tutorlist.action?c1=${c1 }&c2=${c2}&page=${page-1}">
								<img src='${pageContext.request.contextPath}/images/page_up.gif' /> </a>
							</div>
							</s:if>
							<s:else>
							<div class='list_r_title_text3a'>
								<img src='${pageContext.request.contextPath}/images/page_up_gray.gif' />
							</div>
							</s:else>
							
							<div class='list_r_title_text3b'>
								NO.${page }/Total${maxPage }
							</div>
							
							<s:if test="page < maxPage">
							<div class='list_r_title_text3a'>
								<a name=link_page_next
									href="booklistAction?c1=${c1 }&c2=${c2}&page=${page+1}">
									<img src='${pageContext.request.contextPath}/images/page_down.gif' /> </a>
							</div>
							</s:if>
			
							<s:else>
							<div class='list_r_title_text3a'>
								<img src='${pageContext.request.contextPath}/images/page_down_gray.gif' />
							</div>
							</s:else>

							<!--分页导航结束-->
						</div>
					</div>
					
					<!--商品条目开始-->
						
						<div class="list_r_line"></div>
						<s:iterator value="tutors" var="t">
						<div class="clear"></div>
						
						<div class="list_r_list">
							<span class="list_r_list_book"><a name="link_prd_img" href='tutor_view?id=${t.id }'>
								<img src="${pageContext.request.contextPath}/productImages/${t.reg_pic }" /> </a> </span>
							<h2>
								<a name="link_prd_name" href='tutor_view?id=${t.id }'>${t.nick_name }</a>
							</h2>
							<h4 class="list_r_list_h4">
								RealName:&nbsp;&nbsp;${t.real_name }</a>
							</h4>
							<h4>
								School:&nbsp;&nbsp;${t.school }</a>
							</h4>
							<h4>
								Subject:&nbsp;&nbsp;${t.course }</a>
							</h4>
							<h4>
								RegisterTime:&nbsp;&nbsp;${t.reg_dt }
							</h4>
							<h5>
									${t.p_summary }
							</h5>
							<div class="clear"></div>
							<h6>
								<span class="del">Hourly wage：￥${t.salary}</span>
								<span class="red">&nbsp;&nbsp;Discount：￥${t.dis_salary}&nbsp;&nbsp;</span>
								Save：￥<c1:retainTwo/>
							</h6>
							<span class="list_r_list_button"> 
							<a href="<%=request.getContextPath() %>/cart/cartBuy?id=${t.id }"> 
							<img src='${pageContext.request.contextPath}/images/buttom_goumai.gif' /> </a></span>
							<span id="cartinfo" class="mycartinfo"></span>
						</div>
						<div class="clear"></div>
						</s:iterator>
					
						<!--商品条目结束-->

					<div class="clear"></div>
					<div id="divBottomPageNavi" class="fanye_bottom">
					</div>

				</div>
				<!--图书列表结束-->

			</div>
			<!--中栏结束-->
			<div class="clear"></div>
		</div>

		<!--页尾开始 -->
		<%@include file="/common/foot.jsp"%>
		<!--页尾结束 -->
	</body>
</html>
