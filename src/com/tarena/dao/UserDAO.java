package com.tarena.dao;

import java.util.List;

import com.tarena.entity.User;
public interface UserDAO {
	public void save(User u) throws Exception;
	public User findByEmail(String email) throws Exception;
	public User findById(int id) throws Exception;
	public void update(User u) throws Exception;
	public List<User> findAll() throws Exception;
	public int delById(int id) throws Exception;
}
