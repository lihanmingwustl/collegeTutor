package com.tarena.web.action.tutor;

import java.util.List;

import com.tarena.dao.DAOFactory;
import com.tarena.entity.ItemOrder;
import com.tarena.entity.Tutor;
import com.tarena.web.action.BaseAction;

public class TutorInfoAction extends BaseAction {

	private Tutor tu;
	private int Id;
	private List <ItemOrder> ios_t;
	private String result;
	

	public String checkMyInfo() throws Exception{
		tu =  (Tutor)DAOFactory.getRegInfoDAO().findById(Id);
		return "success";
	}
	
	public String updateTutorInfo() throws Exception{

		Tutor tutor_t =  (Tutor)DAOFactory.getRegInfoDAO().findById(tu.getId());
		String realName = new String(tu.getReal_name().getBytes("iso-8859-1"),"utf-8");
		String school = new String(tu.getSchool().getBytes("iso-8859-1"),"utf-8");
		String gender = new String(tu.getGender().getBytes("iso-8859-1"),"utf-8");
		String major = new String(tu.getMajor().getBytes("iso-8859-1"),"utf-8");
		String p_summary = new String(tu.getP_summary().getBytes("iso-8859-1"),"utf-8");
		tutor_t.setReal_name(realName);
		tutor_t.setSchool(school);
		tutor_t.setAge(tu.getAge());
		tutor_t.setGender(gender);
		tutor_t.setMajor(major);
		tutor_t.setTelephone(tu.getTelephone());
		tutor_t.setP_summary(p_summary);
		
		DAOFactory.getRegInfoDAO().update(tutor_t);
		result = "家教信息更新成功！";
		return "success";
	}
	
	public String delTutor() throws Exception{
		int r =  DAOFactory.getUserDAO().delById(Id);
		if(r>0){
			result = "用户信息删除成功！";
		}
		else{
			result = "用户信息删除失败！";
		}
		return "success";
	}
	
	public String checkMyOrder() throws Exception{

		ios_t =  DAOFactory.getOrderDAO().findAllOrderByTutorId(Id);
		return "success";
	}

	public Tutor getTu() {
		return tu;
	}

	public void setTu(Tutor tu) {
		this.tu = tu;
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

	public List<ItemOrder> getIos_t() {
		return ios_t;
	}

	public void setIos_t(List<ItemOrder> ios_t) {
		this.ios_t = ios_t;
	}
	
	
}
