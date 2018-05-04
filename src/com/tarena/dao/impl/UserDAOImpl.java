package com.tarena.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Statement;
import com.tarena.dao.UserDAO;
import com.tarena.entity.User;
import com.tarena.util.DBConnection;

public class UserDAOImpl implements UserDAO {

	private static final String INSERT = "insert into d_user(email,nickname,password,user_integral,is_email_verify,email_verify_code,last_login_time,last_login_ip,telephone) values(?,?,?,?,?,?,?,?,?)";
	private static final String FINDBYEMAIL = "select * from d_user where email=?";
	private static final String FINDBYID = "select * from d_user where id=?";
	private static final String FINDALL = "select * from d_user";
	private static final String UPDATE = "update d_user set email=?,nickname=?,password=?,user_integral=?,is_email_verify=?,email_verify_code=?,last_login_time=?,last_login_ip=?,telephone=? where id=?";
	private static final String DELBYID = "delete from d_user where id=?";
	
	public User findByEmail(String email) throws Exception {
		PreparedStatement prep = null;
		Connection conn = null;
		User u = null;
		ResultSet rst = null;
		try {
			conn = DBConnection.getConnection();
			prep = conn.prepareStatement(FINDBYEMAIL);
			prep.setString(1, email);
			rst = prep.executeQuery();
			if (rst.next()) {
				u = new User();
				u.setEmail(rst.getString("email"));
				u.setEmail_verify_code(rst.getString("email_verify_code"));
				u.setId(rst.getInt("id"));
				u.setLast_login_ip(rst.getString("last_login_ip"));
				u.setLast_login_time(rst.getLong("last_login_time"));
				u.setNickname(rst.getString("nickname"));
				u.setPassword(rst.getString("password"));
				u.setUser_integral(rst.getInt("user_integral"));
				u.setTelephone(rst.getString("telephone"));
				String is_email_verify = rst.getString("is_email_verify");
				if (is_email_verify.equals("T")) {
					u.setEmail_verify(true);
				} else {
					u.setEmail_verify(false);
				}

			}

		} finally {
			DBConnection.close(prep, conn);
		}
		return u;
	}

	public User findById(int id) throws Exception {
		PreparedStatement prep = null;
		Connection conn = null;
		User u = null;
		try {
			conn = DBConnection.getConnection();
			prep = conn.prepareStatement(FINDBYID);
			prep.setInt(1, id);
			ResultSet rst = prep.executeQuery();
			if (rst.next()) {
				u = new User();
				u.setEmail(rst.getString("email"));
				u.setEmail_verify_code(rst.getString("email_verify_code"));
				u.setId(rst.getInt("id"));
				u.setLast_login_ip(rst.getString("last_login_ip"));
				u.setLast_login_time(rst.getLong("last_login_time"));
				u.setNickname(rst.getString("nickname"));
				u.setPassword(rst.getString("password"));
				u.setUser_integral(rst.getInt("user_integral"));
				u.setTelephone(rst.getString("telephone"));
				String is_email_verify = rst.getString("is_email_verify");
				if (is_email_verify.equals("T")) {
					u.setEmail_verify(true);
				} else {
					u.setEmail_verify(false);
				}

			}

		} finally {
			DBConnection.close(prep, conn);
		}
		return u;
	}
	
	public int delById(int id) throws Exception {
		PreparedStatement prep = null;
		Connection conn = null;
		int result = -1;
		try {
			conn = DBConnection.getConnection();
			prep = conn.prepareStatement(DELBYID);
			prep.setInt(1, id);
			result = prep.executeUpdate();
		} finally {
			DBConnection.close(prep, conn);
		}
		return result;
	}

	public void save(User user) throws Exception {
		PreparedStatement prep = null;
		Connection conn = null;
		try {
			conn = DBConnection.getConnection();
			prep = conn.prepareStatement(INSERT,
					Statement.RETURN_GENERATED_KEYS);
			prep.setString(1, user.getEmail());
			prep.setString(2, user.getNickname());
			prep.setString(3, user.getPassword());
			prep.setInt(4, user.getUser_integral());
			if (user.isEmail_verify()) {
				prep.setString(5, "T");
			} else {
				prep.setString(5, "F");
			}
			prep.setString(6, user.getEmail_verify_code());
			prep.setLong(7, user.getLast_login_time());
			prep.setString(8, user.getLast_login_ip());
			prep.setString(9,user.getTelephone());

			prep.executeUpdate();
			ResultSet rst = prep.getGeneratedKeys();
			rst.next();
			int id = rst.getInt(1);
			user.setId(id);
		} finally {
			DBConnection.close(prep, conn);
		}
	}

	public void update(User u) throws Exception {
		PreparedStatement prep = null;
		Connection conn = null;
		try {
			conn = DBConnection.getConnection();
			prep = conn.prepareStatement(UPDATE);
			prep.setString(1, u.getEmail());
			prep.setString(2, u.getNickname());
			prep.setString(3, u.getPassword());
			prep.setInt(4, u.getUser_integral());
			if (u.isEmail_verify()) {
				prep.setString(5, "T");
			} else {
				prep.setString(5, "F");
			}
			prep.setString(6, u.getEmail_verify_code());
			prep.setLong(7, u.getLast_login_time());
			prep.setString(8, u.getLast_login_ip());
			prep.setString(9,u.getTelephone());
			prep.setInt(10, u.getId());

			prep.executeUpdate();
		} finally {
			DBConnection.close(prep, conn);
		}
	}

	@Override
	public List<User> findAll() throws Exception {
		// TODO Auto-generated method stub
		PreparedStatement prep = null;
		Connection conn = null;
		ResultSet rst = null;
		List<User> us = new ArrayList<User>();
		User u = null;
		try {
			conn = DBConnection.getConnection();
			prep = conn.prepareStatement(FINDALL);
			rst = prep.executeQuery();
			while (rst.next()) {
				u = new User();
				u.setEmail(rst.getString("email"));
				u.setEmail_verify_code(rst.getString("email_verify_code"));
				u.setId(rst.getInt("id"));
				u.setLast_login_ip(rst.getString("last_login_ip"));
				u.setLast_login_time(rst.getLong("last_login_time"));
				u.setNickname(rst.getString("nickname"));
				u.setPassword(rst.getString("password"));
				u.setUser_integral(rst.getInt("user_integral"));
				u.setTelephone(rst.getString("telephone"));
				String is_email_verify = rst.getString("is_email_verify");
				if (is_email_verify.equals("T")) {
					u.setEmail_verify(true);
				} else {
					u.setEmail_verify(false);
				}
				us.add(u);
			}

		} finally {
			DBConnection.close(prep, conn);
		}
		return us;
	}

}
