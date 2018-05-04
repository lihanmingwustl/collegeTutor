package com.tarena.web.action.admin;

import com.tarena.entity.Admin;
import com.tarena.dao.DAOFactory;
import com.tarena.dao.AdminDAO;
import com.tarena.util.Md5Code;
import com.tarena.web.action.BaseAction;

public class AdminLoginAction extends BaseAction {
	private Admin admin;
	public String execute() throws Exception{	
		//TODO 跳转到/admin/index.jsp产品浏览界面
		AdminDAO dao = DAOFactory.getAdminDAO();
		Admin ad = dao.findByUsername(admin.getUsername());
		
		if(ad==null || !ad.getPassword().equals(Md5Code.createMd5Code(admin.getPassword()))){
			request.setAttribute("login_err", "Wrong Username or Password");
			return "login";
		}
		
		session.put("admin", ad);
		
		return "success";
	}
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	
	public String backIndex() throws Exception{
//		if(session.get(admin)==null)
//			return "login";
		return "success";
	}
}
