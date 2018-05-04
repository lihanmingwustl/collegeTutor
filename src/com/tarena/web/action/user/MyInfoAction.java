package com.tarena.web.action.user;

import java.util.List;

import com.tarena.dao.DAOFactory;
import com.tarena.entity.User;
import com.tarena.entity.ItemOrder;
import com.tarena.web.action.BaseAction;

public class MyInfoAction extends BaseAction{

	private User user;
	private int Id;
	private List <ItemOrder> ios;
	private String result;
	
	public String execute() throws Exception{
		
		return "success";
	}
	
	public String checkMyInfo() throws Exception{
		user =  DAOFactory.getUserDAO().findById(Id);
		return "success";
	}

	public String checkMyOrder() throws Exception{
		ios =  DAOFactory.getOrderDAO().findAllOrderByUserId(Id);
		return "success";
	}
	public String updateUserInfo() throws Exception{

		String name = new String(user.getNickname().getBytes("iso-8859-1"),"utf-8");

		User user_t =  DAOFactory.getUserDAO().findById(user.getId());
		user_t.setTelephone(user.getTelephone());

		DAOFactory.getUserDAO().update(user_t);
		result = "用户信息更新成功！";
		return "success";
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
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
