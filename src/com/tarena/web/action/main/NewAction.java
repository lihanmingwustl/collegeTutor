package com.tarena.web.action.main;

import java.util.ArrayList;
import java.util.List;

import com.tarena.dao.DAOFactory;
import com.tarena.entity.Tutor;
import com.tarena.entity.RegInfo;
import com.tarena.web.action.BaseAction;



public class NewAction extends BaseAction{
	private List<Tutor> tutors = new ArrayList<Tutor>();
	
	public String execute() throws Exception{
		for(RegInfo r : DAOFactory.getRegInfoDAO().findByNew(3)){
			tutors.add((Tutor) r);
		}
		return "new";
	}

	public List<Tutor> getTutors() {
		return tutors;
	}

	public void setTutors(List<Tutor> tutors) {
		this.tutors = tutors;
	}
	
	
}
