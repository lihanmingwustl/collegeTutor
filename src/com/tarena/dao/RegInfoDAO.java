package com.tarena.dao;

import java.sql.SQLException;
import java.util.List;

import com.tarena.entity.RegInfo;
import com.tarena.entity.Tutor;


public interface RegInfoDAO {
	public List<RegInfo> findByCatId(int cid,int begin,int size) throws Exception;
	public RegInfo findById(int id) throws Exception;
	public RegInfo findByName(String name) throws Exception;
	
	public void update(Tutor t) throws Exception;
	
	public void insert(Tutor t,int Cid) throws Exception;
	
	/**
	 * 
	 * @return 取出全部家教信息
	 * @throws Exception
	 */
	public List<RegInfo> findAll() throws Exception;
	
	/**
	 * @param num 取出前num个数据（降序）
	 * @return 热卖商品
	 * @throws SQLException
	 */
	public List<RegInfo> findByHot(int num) throws Exception;
	
	/**
	 * @param num 取出前num个数据（降序）
	 * @return 最新商品（按上架时间）
	 * @throws SQLException
	 */
	public List<RegInfo> findByNew(int num) throws Exception;
	
	/**
	 * @param num 取出前num个数据（降序）
	 * @param time 多少时间内算新书
	 * @return 最新热卖商品
	 * @throws SQLException
	 */
	public List<RegInfo> findByNewHot(int num,long time) throws Exception;
}
