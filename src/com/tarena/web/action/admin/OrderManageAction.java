package com.tarena.web.action.admin;

import java.util.List;

import com.tarena.dao.DAOFactory;
import com.tarena.entity.ItemOrder;
import com.tarena.web.action.BaseAction;

public class OrderManageAction extends BaseAction{

	private List <ItemOrder> ios;
	private String result;
	
	public String execute() throws Exception{
		ios =  DAOFactory.getOrderDAO().findAllOrder();
		return "success";
	}

	public List<ItemOrder> getIos() {
		return ios;
	}

	public void setIos(List<ItemOrder> ios) {
		this.ios = ios;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	
}
