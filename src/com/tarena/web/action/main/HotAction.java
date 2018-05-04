package com.tarena.web.action.main;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tarena.dao.DAOFactory;
import com.tarena.entity.Tutor;
import com.tarena.entity.RegInfo;
import com.tarena.web.action.BaseAction;



public class HotAction extends BaseAction{
	private List<Tutor> tutors;
	
	public String execute() throws Exception{
		tutors = new ArrayList<Tutor>();
		List<RegInfo> rs =  DAOFactory.getRegInfoDAO().findByHot(3);
		for (RegInfo r : rs) {
			tutors.add((Tutor) r);
		}
		return "hot";
	}

	public List<Tutor> getTutors() {
		return tutors;
	}

	public void setTutors(List<Tutor> tutors) {
		this.tutors = tutors;
	}
	
}
