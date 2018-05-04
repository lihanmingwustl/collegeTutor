package com.tarena.web.action.cart;

import com.tarena.entity.RegInfo;

public class CartItem {
	private RegInfo pro;
	private int num = 1;
	private int tutor_id;
	private boolean delete = false;// false购买，true删除

	public RegInfo getPro() {
		return pro;
	}

	public void setPro(RegInfo pro) {
		this.pro = pro;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public boolean isDelete() {
		return delete;
	}

	public void setDelete(boolean delete) {
		this.delete = delete;
	}

	public int getTutor_id() {
		return tutor_id;
	}

	public void setTutor_id(int tutor_id) {
		this.tutor_id = tutor_id;
	}

	
}
