package com.tarena.dao.impl;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.tarena.dao.OrderDAO;
import com.tarena.entity.ItemOrder;
import com.tarena.entity.Order;

import com.tarena.web.action.cart.CartItem;
import com.tarena.util.DBConnection;
import com.tarena.web.action.cart.CartService;

public class OrderDAOImpl implements OrderDAO{

	private final static String SAVEORDER = "insert into d_order(user_id,tutor_id,status,count,order_time,order_desc,total_price,receive_name,full_address,postal_code,mobile,phone) "
			+ "values(?,?,?,?,?,?,?,?,?,?,?,?)";
	
	private final static String FIND_ALL_BY_USERID = "select p.nick_name,p.course,u.nickname,o.* from d_order o join reg_info p on o.tutor_id = p.id join d_user u on o.user_id = u.id where o.user_id =?";
	
	private final static String FIND_ALL_BY_TUTORID = "select p.nick_name,p.course,u.nickname,o.* from d_order o join d_user u on o.user_id = u.id join reg_info p on o.tutor_id = p.id where o.tutor_id =?";
	
	private final static String FIND_ALL_ORDER = "select p.nick_name,p.course,u.nickname,o.* from d_order o join d_user u on o.user_id = u.id join reg_info p on o.tutor_id = p.id";
	
	
	public void save(Order order, CartService cart) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet rs = null;
		int num = cart.getItems(false).size();
		try {

			conn = DBConnection.getConnection();
			for(int i=0;i<num;i++){
				CartItem ci = cart.getItems(false).get(i);
				prep = conn.prepareStatement(SAVEORDER);
				prep.setInt(1, order.getUser_id());
				prep.setInt(2, ci.getPro().getId());
				prep.setInt(3, order.getStatus());
				prep.setInt(4, ci.getNum());
				prep.setLong(5, order.getOrder_time());
				prep.setString(6, order.getOrder_desc());
				if(order.getTotal_price()-Number2(ci.getNum()*ci.getPro().getDis_salary())>=0.001){
					prep.setDouble(7, Number2(ci.getNum()*ci.getPro().getDis_salary()));
				}
				else 
					prep.setDouble(7, order.getTotal_price());
				prep.setString(8, order.getReceive_name());
				prep.setString(9, order.getFull_address());
				prep.setString(10, order.getPostal_code());
				prep.setString(11, order.getMobile());
				prep.setString(12, order.getPhone());

				prep.executeUpdate();
			}

		} finally {
			DBConnection.close(rs, prep, conn);
		}
	}
	
	/**
	 * 将double型数字保留两位小数
	 * @param pDouble
	 * @return
	 */
	private double Number2(double pDouble) {
		BigDecimal bd = new BigDecimal(pDouble);
		BigDecimal bd1 = bd.setScale(2, bd.ROUND_HALF_UP);
		pDouble = bd1.doubleValue();

		return pDouble;
	}

	@Override
	public List<ItemOrder> findAllOrderByUserId(int id) throws Exception{
		// TODO Auto-generated method stub
		List<ItemOrder> ios = new ArrayList<ItemOrder>();
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet rs = null;
		try {
			prep = DBConnection.getConnection().prepareStatement(FIND_ALL_BY_USERID);
			prep.setInt(1, id);

			rs = prep.executeQuery();

			while (rs.next()) {
				ItemOrder itemOrder = new ItemOrder();
				itemOrder.setId(rs.getInt("id"));
				itemOrder.setTutor_nickname(rs.getString("nick_name"));
				itemOrder.setUser_name(rs.getString("nickname"));
				itemOrder.setCourse(rs.getString("course"));
				itemOrder.setUser_id(rs.getInt("user_id"));
				itemOrder.setStatus(rs.getInt("status"));
				itemOrder.setCount(rs.getInt("count"));
				itemOrder.setOrder_time(rs.getLong("order_time"));
				itemOrder.setOrder_desc(rs.getString("order_desc"));
				itemOrder.setTotal_price(rs.getDouble("total_price"));
				itemOrder.setReceive_name(rs.getString("receive_name"));
				itemOrder.setFull_address(rs.getString("full_address"));
				itemOrder.setPostal_code(rs.getString("postal_code"));
				itemOrder.setPhone(rs.getString("phone"));
				itemOrder.setMobile(rs.getString("mobile"));

				ios.add(itemOrder);
			}

		} finally {
			DBConnection.close(rs, prep, conn);
		}
		return ios;
	}

	@Override
	public List<ItemOrder> findAllOrderByTutorId(int id) throws Exception {
		// TODO Auto-generated method stub
		List<ItemOrder> ios = new ArrayList<ItemOrder>();
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet rs = null;
		try {
			prep = DBConnection.getConnection().prepareStatement(FIND_ALL_BY_TUTORID);
			prep.setInt(1, id);

			rs = prep.executeQuery();

			while (rs.next()) {
				ItemOrder itemOrder = new ItemOrder();
				itemOrder.setId(rs.getInt("id"));
				itemOrder.setTutor_nickname(rs.getString("nick_name"));
				itemOrder.setUser_name(rs.getString("nickname"));
				itemOrder.setCourse(rs.getString("course"));
				itemOrder.setUser_id(rs.getInt("user_id"));
				itemOrder.setStatus(rs.getInt("status"));
				itemOrder.setCount(rs.getInt("count"));
				itemOrder.setOrder_time(rs.getLong("order_time"));
				itemOrder.setOrder_desc(rs.getString("order_desc"));
				itemOrder.setTotal_price(rs.getDouble("total_price"));
				itemOrder.setReceive_name(rs.getString("receive_name"));
				itemOrder.setFull_address(rs.getString("full_address"));
				itemOrder.setPostal_code(rs.getString("postal_code"));
				itemOrder.setPhone(rs.getString("phone"));
				itemOrder.setMobile(rs.getString("mobile"));

				ios.add(itemOrder);
			}

		} finally {
			DBConnection.close(rs, prep, conn);
		}
		return ios;
	}

	@Override
	public List<ItemOrder> findAllOrder() throws Exception {
		// TODO Auto-generated method stub
		List<ItemOrder> ios = new ArrayList<ItemOrder>();
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet rs = null;
		try {
			prep = DBConnection.getConnection().prepareStatement(FIND_ALL_ORDER);

			rs = prep.executeQuery();

			while (rs.next()) {
				ItemOrder itemOrder = new ItemOrder();
				itemOrder.setId(rs.getInt("id"));
				itemOrder.setTutor_nickname(rs.getString("nick_name"));
				itemOrder.setUser_name(rs.getString("nickname"));
				itemOrder.setCourse(rs.getString("course"));
				itemOrder.setUser_id(rs.getInt("user_id"));
				itemOrder.setStatus(rs.getInt("status"));
				itemOrder.setCount(rs.getInt("count"));
				itemOrder.setOrder_time(rs.getLong("order_time"));
				itemOrder.setOrder_desc(rs.getString("order_desc"));
				itemOrder.setTotal_price(rs.getDouble("total_price"));
				itemOrder.setReceive_name(rs.getString("receive_name"));
				itemOrder.setFull_address(rs.getString("full_address"));
				itemOrder.setPostal_code(rs.getString("postal_code"));
				itemOrder.setPhone(rs.getString("phone"));
				itemOrder.setMobile(rs.getString("mobile"));

				ios.add(itemOrder);
			}

		} finally {
			DBConnection.close(rs, prep, conn);
		}
		return ios;
	}

}
