package com.tarena.dao;

import com.tarena.entity.Admin;

public interface AdminDAO {

	public Admin findByUsername(String username) throws Exception;
}
