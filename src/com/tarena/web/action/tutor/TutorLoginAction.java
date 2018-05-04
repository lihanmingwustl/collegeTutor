package com.tarena.web.action.tutor;

import com.tarena.dao.DAOFactory;
import com.tarena.dao.RegInfoDAO;
import com.tarena.dao.UserDAO;
import com.tarena.entity.Tutor;
import com.tarena.entity.User;
import com.tarena.util.Md5Code;
import com.tarena.web.action.BaseAction;

public class TutorLoginAction extends BaseAction {

	private Tutor tutor;
	private int id;
	public String execute() throws Exception{
		//TODO 验证email和密码是否正确,不正确返回login_form.jsp
		
		RegInfoDAO rDao = DAOFactory.getRegInfoDAO();
		Tutor t = (Tutor) rDao.findByName(tutor.getNick_name());
		if(t==null || !t.getPassword().equals(Md5Code.createMd5Code(tutor.getPassword()))){
			request.setAttribute("login_err", "Wrong Username or Password");
			return "login";
		}
			
		//TODO 将user信息写入session
		session.put("s_tutor", t);

		//TODO 跳转到/main/main.jsp产品浏览界面
		return "success";
	}
	public Tutor getTutor() {
		return tutor;
	}
	public void setTutor(Tutor tutor) {
		this.tutor = tutor;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String backIndex() throws Exception{

		return "success";
	}
	
}
