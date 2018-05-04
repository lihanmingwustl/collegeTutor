package com.tarena.dao;

import java.util.List;

import com.tarena.entity.ItemOrder;
import com.tarena.entity.Order;
import com.tarena.web.action.cart.CartService;



public interface OrderDAO {
	public void save(Order order,CartService cart) throws Exception;
	
	public List <ItemOrder> findAllOrderByUserId(int id) throws Exception;
	
	public List <ItemOrder> findAllOrderByTutorId(int id) throws Exception;
	
	public List <ItemOrder> findAllOrder() throws Exception;
}
