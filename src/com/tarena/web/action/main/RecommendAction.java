package com.tarena.web.action.main;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import com.tarena.dao.DAOFactory;
import com.tarena.dao.RegInfoDAO;
import com.tarena.entity.Tutor;
import com.tarena.web.action.BaseAction;


public class RecommendAction extends BaseAction{
	private List<Tutor> tutors=new ArrayList<Tutor>();
	
	public String execute() throws Exception{
		RegInfoDAO rDao = DAOFactory.getRegInfoDAO();
		//随机选择2本
		tutors.add((Tutor) rDao.findById(1));
		tutors.add((Tutor) rDao.findById(2));
		return "recommend";
	}

	public List<Tutor> getTutors() {
		return tutors;
	}

	public void setTutors(List<Tutor> tutors) {
		this.tutors = tutors;
	}
	
	
}
