package com.tarena.web.action.admin;

import java.util.List;

import com.tarena.dao.DAOFactory;
import com.tarena.entity.RegInfo;
import com.tarena.entity.Tutor;
import com.tarena.web.action.BaseAction;

public class TutorManageAction extends BaseAction {

	private List<RegInfo> ts;// 家教展示
	private Tutor tutor;
	private int Id;
	private String result;
	
	public String showTutorList() throws Exception{
		ts =  DAOFactory.getRegInfoDAO().findAll();
		return "success";
	}

	public String modTutorInfo() throws Exception{
		tutor =  (Tutor)DAOFactory.getRegInfoDAO().findById(Id);
		return "success";
	}
	
	public String updateTutorInfo() throws Exception{	

		Tutor tutor_t =  (Tutor)DAOFactory.getRegInfoDAO().findById(tutor.getId());
		String realName = new String(tutor.getReal_name().getBytes("iso-8859-1"),"utf-8");
		String school = new String(tutor.getSchool().getBytes("iso-8859-1"),"utf-8");
		String gender = new String(tutor.getGender().getBytes("iso-8859-1"),"utf-8");
		String major = new String(tutor.getMajor().getBytes("iso-8859-1"),"utf-8");
		String p_summary = new String(tutor.getP_summary().getBytes("iso-8859-1"),"utf-8");
		tutor_t.setReal_name(realName);
		tutor_t.setSchool(school);
		tutor_t.setAge(tutor.getAge());
		tutor_t.setGender(gender);
		tutor_t.setMajor(major);
		tutor_t.setTelephone(tutor.getTelephone());
		tutor_t.setP_summary(p_summary);
		

		DAOFactory.getRegInfoDAO().update(tutor_t);
		result = "success！";
		return "success";
		
	}
	
	public String delTutor() throws Exception{
		int r =  DAOFactory.getUserDAO().delById(Id);
		if(r>0){
			result = "success！";
		}
		else{
			result = "failed！";
		}
		return "success";
	}

	public List<RegInfo> getTs() {
		return ts;
	}

	public void setTs(List<RegInfo> ts) {
		this.ts = ts;
	}

	public Tutor getTutor() {
		return tutor;
	}

	public void setTutor(Tutor tutor) {
		this.tutor = tutor;
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
