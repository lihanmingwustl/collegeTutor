package com.tarena.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.tarena.dao.AdminDAO;
import com.tarena.entity.Admin;
import com.tarena.util.DBConnection;

public class AdminDAOImpl implements AdminDAO {

	private static final String FINDBYUNAME = "select * from admin where username=?";

	@Override
	public Admin findByUsername(String username) throws Exception {
		// TODO Auto-generated method stub
		PreparedStatement prep = null;
		Connection conn = null;
		Admin ad = null;
		ResultSet rst = null;
		try {
			conn = DBConnection.getConnection();
			prep = conn.prepareStatement(FINDBYUNAME);
			prep.setString(1, username);
			rst = prep.executeQuery();
			if (rst.next()) {
				ad = new Admin();
				ad.setId(rst.getInt("id"));
				ad.setUsername (rst.getString("username"));
				ad.setPassword(rst.getString("password"));
			}
		} finally {
			DBConnection.close(prep, conn);
		}
		return ad;
	}

}
