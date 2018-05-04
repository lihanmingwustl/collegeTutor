package com.tarena.dao;

import com.tarena.dao.impl.AdminDAOImpl;
import com.tarena.dao.impl.TutorDAOImpl;
import com.tarena.dao.impl.CategoryDAOImpl;
import com.tarena.dao.impl.OrderDAOImpl;
import com.tarena.dao.impl.ReceiveAddressDAOImpl;
import com.tarena.dao.impl.UserDAOImpl;

public class DAOFactory {
	public static UserDAO getUserDAO() {
		return new UserDAOImpl();
	}

	public static AdminDAO getAdminDAO() {
		return new AdminDAOImpl();
	}
	
	public static CategoryDAO getCategoryDAO() {
		return new CategoryDAOImpl();
	}

	public static RegInfoDAO getRegInfoDAO() {
		return new TutorDAOImpl();
	}

	public static OrderDAO getOrderDAO() {
		return new OrderDAOImpl();
	}

	public static ReceiveAddressDAO getReceiveAddressDAO() {
		return new ReceiveAddressDAOImpl();
	}
}
