package com.tarena.web.action.main;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tarena.dao.DAOFactory;
import com.tarena.entity.RegInfo;
import com.tarena.entity.Tutor;
import com.tarena.web.action.BaseAction;



public class NewHotAction extends BaseAction{
	private List<Tutor> Tutors = new ArrayList<Tutor>();

	public String execute() throws Exception{
		long time = 1000L*60*60*24*30*100;//由于数据库测试数据偏旧，所以给的值略大
		for(RegInfo r : DAOFactory.getRegInfoDAO().findByNewHot(3, time)){
			Tutors.add((Tutor) r);
		}
		return "newhot";
	}

	public List<Tutor> getTutors() {
		return Tutors;
	}

	public void setTutors(List<Tutor> Tutors) {
		this.Tutors = Tutors;
	}
	
	
}
