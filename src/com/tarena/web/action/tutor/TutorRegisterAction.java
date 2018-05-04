package com.tarena.web.action.tutor;

import com.tarena.dao.DAOFactory;
import com.tarena.entity.Tutor;
import com.tarena.util.Md5Code;
import com.tarena.web.action.BaseAction;

public class TutorRegisterAction extends BaseAction {

	private Tutor tutor;
	private int Cid;


	public String execute() throws Exception{

		String pwd = Md5Code.createMd5Code(tutor.getPassword());
		tutor.setPassword(pwd);
		System.out.println("Cid:"+Cid);
		switch(Cid) { 
			case 9 :tutor.setCourse("Chinese in primary school"); break;  
			case 10:tutor.setCourse("Math in primary school"); break; 
			case 11:tutor.setCourse("English in primary school"); break;  
			case 12:tutor.setCourse("Moral and social"); break;
			case 13:tutor.setCourse("PE in primary school"); break;  
			case 14:tutor.setCourse("Chinese in junior middle school"); break;
			case 15:tutor.setCourse("Math in junior middle school"); break;  
			case 16:tutor.setCourse("English in junior middle school"); break;
			case 17:tutor.setCourse("Biology in junior middle school"); break;  
			case 18:tutor.setCourse("History in junior middle school"); break;
			case 19:tutor.setCourse("Geography in junior middle school"); break;  
			case 20:tutor.setCourse("Politics in junior middle school"); break;
			case 21:tutor.setCourse("Physics in junior middle school"); break;  
			case 22:tutor.setCourse("Chemistry in junior middle school"); break;
			case 23:tutor.setCourse("Chinese in senior middle school"); break;  
			case 24:tutor.setCourse("Math in senior middle school"); break;
			case 25:tutor.setCourse("English in senior middle school"); break;  
			case 26:tutor.setCourse("Biology in senior middle school"); break;
			case 27:tutor.setCourse("History in senior middle school"); break;  
			case 28:tutor.setCourse("Geography in senior middle school"); break;
			case 29:tutor.setCourse("Politics in senior middle school"); break;  
			case 30:tutor.setCourse("Physics in senior middle school"); break;
			case 31:tutor.setCourse("Chemistry in senior middle school"); break;  
	
			default:tutor.setCourse("Chinese in primary school"); 
		} 
		tutor.setAdd_time(System.currentTimeMillis());
		tutor.setReg_time(System.currentTimeMillis());
		tutor.setHas_deleted(0);
		tutor.setDis_salary(tutor.getSalary()*0.8);
		
		DAOFactory.getRegInfoDAO().insert(tutor, Cid);
		
		return "success";
	}


	public Tutor getTutor() {
		return tutor;
	}


	public void setTutor(Tutor tutor) {
		this.tutor = tutor;
	}


	public int getCid() {
		return Cid;
	}


	public void setCid(int cid) {
		Cid = cid;
	}
	
}
