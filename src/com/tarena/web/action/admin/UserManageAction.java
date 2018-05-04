package com.tarena.web.action.admin;

import java.util.List;

import com.tarena.dao.DAOFactory;
import com.tarena.entity.User;
import com.tarena.web.action.BaseAction;

public class UserManageAction extends BaseAction {

	private List<User> us;
	private User user;
	private int Id;
	private String result;
	
	public String showUserList() throws Exception{
		us =  DAOFactory.getUserDAO().findAll();
		return "success";
	}

	public String modUserInfo() throws Exception{
		user =  DAOFactory.getUserDAO().findById(Id);
		return "success";
	}
	
	public String updateUserInfo() throws Exception{

		String name = new String(user.getNickname().getBytes("iso-8859-1"),"utf-8");

		User user_t =  DAOFactory.getUserDAO().findById(user.getId());
		user_t.setNickname(name);
		user_t.setTelephone(user.getTelephone());

		DAOFactory.getUserDAO().update(user_t);
		result = "success！";
		return "success";
	}
	
	public String delUser() throws Exception{
		int r =  DAOFactory.getUserDAO().delById(Id);
		if(r>0){
			result = "success！";
		}
		else{
			result = "failed！";
		}
		return "success";
	}
	
	public List<User> getUs() {
		return us;
	}

	public void setUs(List<User> us) {
		this.us = us;
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

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
}
