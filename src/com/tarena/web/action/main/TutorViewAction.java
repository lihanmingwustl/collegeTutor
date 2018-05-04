package com.tarena.web.action.main;

import java.sql.SQLException;

import com.tarena.dao.DAOFactory;
import com.tarena.dao.RegInfoDAO;
import com.tarena.entity.Tutor;
import com.tarena.web.action.BaseAction;


public class TutorViewAction extends BaseAction{
	private Tutor tutor;
	private int id;
	
	public String execute() throws Exception{
		//通过dao获取书本信息
		RegInfoDAO rDao = DAOFactory.getRegInfoDAO();
		tutor = (Tutor) rDao.findById(id);
		return "tutorview";
	}

	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public Tutor getTutor() {
		return tutor;
	}

	public void setTutor(Tutor tutor) {
		this.tutor = tutor;
	}
	
}
