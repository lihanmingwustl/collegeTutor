package com.tarena.web.action.admin;

import com.tarena.web.action.BaseAction;

public class AdminLogoutAction extends BaseAction {
	public String execute(){
		session.clear();
		return "success";
	}
}
