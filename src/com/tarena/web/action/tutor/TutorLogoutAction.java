package com.tarena.web.action.tutor;

import com.tarena.web.action.BaseAction;

public class TutorLogoutAction extends BaseAction {
	public String execute(){
		session.clear();
		return "success";
	}

}
