package com.tarena.util.tag;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import org.apache.struts2.ServletActionContext;

import com.tarena.entity.Tutor;
import com.tarena.entity.RegInfo;
import com.tarena.web.action.cart.CartItem;

public class RetainTwoNumTag extends SimpleTagSupport{
	private double salary;
	private double dis_salary;

	public void doTag()throws JspException,IOException{
		PageContext ctxt= (PageContext)getJspContext();
		JspWriter out = ctxt.getOut();
		HttpServletRequest request = ServletActionContext.getRequest();
		RegInfo ri = new RegInfo();
		if(request.getAttribute("b")!=null){
			ri = (Tutor)request.getAttribute("b");
		}else if(request.getAttribute("ci")!=null){
			CartItem ci = (CartItem)request.getAttribute("ci");
			ri = ci.getPro();
		}else if(request.getAttribute("Tutor")!=null){
			ri = (Tutor)request.getAttribute("Tutor");
		}else if(request.getAttribute("i")!=null){
			CartItem ci = (CartItem)request.getAttribute("i");
			ri = ci.getPro();
			dis_salary = ri.getDis_salary();
			double cPrice = Number2(dis_salary*ci.getNum());
			out.println(cPrice);
			return;
		}
		
		salary = ri.getSalary();
		dis_salary = ri.getDis_salary();
		double savePrice = salary - dis_salary;
		savePrice = Number2(savePrice);
		out.println(savePrice);
	}
	
	/**
	 * 将double型数字保留两位小数
	 * @param pDouble
	 * @return
	 */
	private double Number2(double pDouble) {
		BigDecimal bd = new BigDecimal(pDouble);
		BigDecimal bd1 = bd.setScale(2, bd.ROUND_HALF_UP);
		pDouble = bd1.doubleValue();

		return pDouble;
	}

}
