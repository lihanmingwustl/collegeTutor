package com.tarena.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.jsp.tagext.TryCatchFinally;

import com.mysql.jdbc.Statement;
import com.tarena.dao.RegInfoDAO;
import com.tarena.entity.Tutor;
import com.tarena.entity.RegInfo;
import com.tarena.util.DBConnection;

public class TutorDAOImpl implements RegInfoDAO {

	private final static String FIND_BY_CAT_ID = "select ri.*,tu.* "
			+ "from d_category_product dcp "
			+ "join reg_info ri on (dcp.product_id=ri.id) "
			+ "join tutor tu on (ri.id=tu.id) "
			+ "where dcp.cat_id=? limit ?,?";

	private final static String FIND_BY_ID = "select p.*,b.* "
			+ "from reg_info p " + "join tutor b " + "on p.id=b.id "
			+ "where p.id=?";
	
	private final static String FIND_BY_NAME = "select p.*,b.* "
			+ "from reg_info p " + "join tutor b " + "on p.id=b.id "
			+ "where p.nick_name =?";

	private final static String FIND_ALL = "select p.*,b.* "
			+ "from reg_info p " + "join tutor b " + "on p.id=b.id ";
	
	private final static String FIND_BY_HOT = "select sum(count) as num,p.*,b.* "
			+ "from d_order o "
			+ "join reg_info p "
			+ "ON o.tutor_id=p.id "
			+ "JOIN tutor b "
			+ "ON o.tutor_id=b.id "
			+ "GROUP BY tutor_id " + "ORDER BY num desc LIMIT 0,?";

	private final static String FIND_BY_NEW = "SELECT p.*,b.* "
			+ "FROM reg_info p " + "JOIN tutor b " + "ON p.id=b.id "
			+ "ORDER BY p.add_time DESC " + "LIMIT 0,?";
	private final static String FIND_BY_NEW_HOT = "select sum(count) as num,p.*,b.* "
			+ "from d_order i "
			+ "join reg_info p "
			+ "ON i.tutor_id=p.id "
			+ "JOIN tutor b "
			+ "ON i.tutor_id=b.id "
			+ "WHERE p.add_time>? "
			+ "GROUP BY tutor_id "
			+ "ORDER BY num desc LIMIT 0,?";
	
	private static final String UPDATE = "update tutor set real_name=?,school=?,age=?,gender=?,major=?,telephone=?,p_summary=? where id=?";

	private static final String INSERTTUTOR = "insert into tutor(real_name,school,reg_time,gender,age,major,telephone,p_summary) values(?,?,?,?,?,?,?,?)";
	
	private static final String INSERTREG = "insert into reg_info(nick_name,password,add_time,salary,dis_salary,course,has_deleted,reg_pic) values(?,?,?,?,?,?,?,?)";
	
	private static final String INSERTCP = "insert into d_category_product(product_id,cat_id) values(?,?)";
	
	
	public List<RegInfo> findByCatId(int cid, int begin, int size)
			throws Exception {
		List<RegInfo> pros = new ArrayList<RegInfo>();
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet rs = null;
		try {
			prep = DBConnection.getConnection()
					.prepareStatement(FIND_BY_CAT_ID);
			prep.setInt(1, cid);
			prep.setInt(2, begin);
			prep.setInt(3, size);
			rs = prep.executeQuery();

			while (rs.next()) {
				Tutor tutor = new Tutor();
				tutor.setId(rs.getInt("id"));
				tutor.setNick_name(rs.getString("nick_name"));
				tutor.setSalary(rs.getDouble("salary"));
				tutor.setDis_salary(rs.getDouble("dis_salary"));
				tutor.setReg_pic(rs.getString("reg_pic"));
				tutor.setAdd_time(rs.getLong("add_time"));
				tutor.setReal_name(rs.getString("real_name"));
				tutor.setSchool(rs.getString("school"));
				tutor.setReg_time(rs.getLong("reg_time"));
				tutor.setP_summary(rs.getString("p_summary"));

				tutor.setPassword(rs.getString("password"));
				tutor.setHas_deleted(rs.getInt("has_deleted"));
				tutor.setTelephone(rs.getString("telephone"));
				tutor.setCourse(rs.getString("course"));
				tutor.setGender(rs.getString("gender"));
				tutor.setAge(rs.getString("age"));
				tutor.setMajor(rs.getString("major"));

				pros.add(tutor);
			}

		} finally {
			DBConnection.close(rs, prep, conn);
		}
		return pros;
	}

	public List<RegInfo> findByHot(int num) throws Exception {
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet rs = null;
		List<RegInfo> pros = new ArrayList<RegInfo>();
		try {
			prep = DBConnection.getConnection().prepareStatement(FIND_BY_HOT);
			prep.setInt(1, num);
			rs = prep.executeQuery();
			while (rs.next()) {
				Tutor tutor = new Tutor();
				tutor.setId(rs.getInt("id"));
				tutor.setNick_name(rs.getString("nick_name"));
				tutor.setSalary(rs.getDouble("salary"));
				tutor.setDis_salary(rs.getDouble("dis_salary"));
				tutor.setReg_pic(rs.getString("reg_pic"));
				tutor.setAdd_time(rs.getLong("add_time"));
				tutor.setReal_name(rs.getString("real_name"));
				tutor.setSchool(rs.getString("school"));
				tutor.setReg_time(rs.getLong("reg_time"));
				tutor.setP_summary(rs.getString("p_summary"));
				tutor.setPassword(rs.getString("password"));
				tutor.setHas_deleted(rs.getInt("has_deleted"));
				tutor.setTelephone(rs.getString("telephone"));
				tutor.setCourse(rs.getString("course"));
				tutor.setGender(rs.getString("gender"));
				tutor.setAge(rs.getString("age"));
				tutor.setMajor(rs.getString("major"));
				pros.add(tutor);
			}
		} finally {
			DBConnection.close(rs, prep, conn);
		}
		return pros;
	}

	public RegInfo findById(int id) throws Exception {
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet rs = null;
		Tutor tutor = null;
		try {
			prep = DBConnection.getConnection().prepareStatement(FIND_BY_ID);
			prep.setInt(1, id);
			rs = prep.executeQuery();
			if (rs.next()) {
				tutor = new Tutor();
				tutor.setId(rs.getInt("id"));
				tutor.setNick_name(rs.getString("nick_name"));
				tutor.setSalary(rs.getDouble("salary"));
				tutor.setDis_salary(rs.getDouble("dis_salary"));
				tutor.setReg_pic(rs.getString("reg_pic"));
				tutor.setAdd_time(rs.getLong("add_time"));
				tutor.setReal_name(rs.getString("real_name"));
				tutor.setSchool(rs.getString("school"));
				tutor.setReg_time(rs.getLong("reg_time"));
				tutor.setP_summary(rs.getString("p_summary"));
				tutor.setPassword(rs.getString("password"));
				tutor.setHas_deleted(rs.getInt("has_deleted"));
				tutor.setTelephone(rs.getString("telephone"));
				tutor.setCourse(rs.getString("course"));
				tutor.setGender(rs.getString("gender"));
				tutor.setAge(rs.getString("age"));
				tutor.setMajor(rs.getString("major"));
			}
		} finally {
			DBConnection.close(rs, prep, conn);
		}
		return tutor;
	}

	public List<RegInfo> findByNew(int num) throws Exception {
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet rs = null;
		List<RegInfo> pros = new ArrayList<RegInfo>();
		try {
			prep = DBConnection.getConnection().prepareStatement(FIND_BY_NEW);
			prep.setInt(1, num);
			rs = prep.executeQuery();
			while (rs.next()) {
				Tutor tutor = new Tutor();
				tutor.setId(rs.getInt("id"));
				tutor.setNick_name(rs.getString("nick_name"));
				tutor.setSalary(rs.getDouble("salary"));
				tutor.setDis_salary(rs.getDouble("dis_salary"));
				tutor.setReg_pic(rs.getString("reg_pic"));
				tutor.setAdd_time(rs.getLong("add_time"));
				tutor.setReal_name(rs.getString("real_name"));
				tutor.setSchool(rs.getString("school"));
				tutor.setReg_time(rs.getLong("reg_time"));
				tutor.setP_summary(rs.getString("p_summary"));

				tutor.setPassword(rs.getString("password"));
				tutor.setHas_deleted(rs.getInt("has_deleted"));
				tutor.setTelephone(rs.getString("telephone"));
				tutor.setCourse(rs.getString("course"));

				tutor.setGender(rs.getString("gender"));
				tutor.setAge(rs.getString("age"));
				tutor.setMajor(rs.getString("major"));
				pros.add(tutor);
			}
		} finally {
			DBConnection.close(rs, prep, conn);
		}
		return pros;
	}

	public List<RegInfo> findByNewHot(int num, long time) throws Exception {
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet rs = null;
		List<RegInfo> pros = new ArrayList<RegInfo>();
		try {
			prep = DBConnection.getConnection().prepareStatement(
					FIND_BY_NEW_HOT);
			prep.setLong(1, System.currentTimeMillis() - time);
			prep.setInt(2, num);
			rs = prep.executeQuery();
			while (rs.next()) {
				Tutor tutor = new Tutor();
				tutor.setId(rs.getInt("id"));
				tutor.setNick_name(rs.getString("nick_name"));
				tutor.setSalary(rs.getDouble("salary"));
				tutor.setDis_salary(rs.getDouble("dis_salary"));
				tutor.setReg_pic(rs.getString("reg_pic"));
				tutor.setAdd_time(rs.getLong("add_time"));
				tutor.setReal_name(rs.getString("real_name"));
				tutor.setSchool(rs.getString("school"));
				tutor.setReg_time(rs.getLong("reg_time"));
				tutor.setP_summary(rs.getString("p_summary"));

				tutor.setPassword(rs.getString("password"));
				tutor.setHas_deleted(rs.getInt("has_deleted"));
				tutor.setTelephone(rs.getString("telephone"));
				tutor.setCourse(rs.getString("course"));

				tutor.setGender(rs.getString("gender"));
				tutor.setAge(rs.getString("age"));
				tutor.setMajor(rs.getString("major"));

				pros.add(tutor);
			}
		} finally {
			DBConnection.close(rs, prep, conn);
		}
		return pros;
	}

	@Override
	public List<RegInfo> findAll() throws Exception {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet rs = null;
		List<RegInfo> pros = new ArrayList<RegInfo>();
		try {
			prep = DBConnection.getConnection().prepareStatement(FIND_ALL);
			rs = prep.executeQuery();
			while (rs.next()) {
				Tutor tutor = new Tutor();
				tutor.setId(rs.getInt("id"));
				tutor.setNick_name(rs.getString("nick_name"));
				tutor.setSalary(rs.getDouble("salary"));
				tutor.setDis_salary(rs.getDouble("dis_salary"));
				tutor.setReg_pic(rs.getString("reg_pic"));
				tutor.setAdd_time(rs.getLong("add_time"));
				tutor.setReal_name(rs.getString("real_name"));
				tutor.setSchool(rs.getString("school"));
				tutor.setReg_time(rs.getLong("reg_time"));
				tutor.setP_summary(rs.getString("p_summary"));

				tutor.setPassword(rs.getString("password"));
				tutor.setHas_deleted(rs.getInt("has_deleted"));
				tutor.setTelephone(rs.getString("telephone"));
				tutor.setCourse(rs.getString("course"));

				tutor.setGender(rs.getString("gender"));
				tutor.setAge(rs.getString("age"));
				tutor.setMajor(rs.getString("major"));
				pros.add(tutor);
			}
		} finally {
			DBConnection.close(rs, prep, conn);
		}
		return pros;
	}

	@Override
	public RegInfo findByName(String name) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet rs = null;
		Tutor tutor = null;
		try {
			prep = DBConnection.getConnection().prepareStatement(FIND_BY_NAME);
			prep.setString(1, name);
			rs = prep.executeQuery();
			if (rs.next()) {
				tutor = new Tutor();
				tutor.setId(rs.getInt("id"));
				tutor.setNick_name(rs.getString("nick_name"));
				tutor.setSalary(rs.getDouble("salary"));
				tutor.setDis_salary(rs.getDouble("dis_salary"));
				tutor.setReg_pic(rs.getString("reg_pic"));
				tutor.setAdd_time(rs.getLong("add_time"));
				tutor.setReal_name(rs.getString("real_name"));
				tutor.setSchool(rs.getString("school"));
				tutor.setReg_time(rs.getLong("reg_time"));
				tutor.setP_summary(rs.getString("p_summary"));

				tutor.setPassword(rs.getString("password"));
				tutor.setHas_deleted(rs.getInt("has_deleted"));
				tutor.setTelephone(rs.getString("telephone"));
				tutor.setCourse(rs.getString("course"));

				tutor.setGender(rs.getString("gender"));
				tutor.setAge(rs.getString("age"));
				tutor.setMajor(rs.getString("major"));
			}
		} finally {
			DBConnection.close(rs, prep, conn);
		}
		return tutor;
	}

	@Override
	public void update(Tutor t) throws Exception {
		PreparedStatement prep = null;
		Connection conn = null;
		try {
			conn = DBConnection.getConnection();
			prep = conn.prepareStatement(UPDATE);
			prep.setString(1, t.getReal_name());
			prep.setString(2, t.getSchool());
			prep.setString(3, t.getAge());
			prep.setString(4, t.getGender());
			prep.setString(5, t.getMajor());
			prep.setString(6, t.getTelephone());
			prep.setString(7, t.getP_summary());
			prep.setInt(8, t.getId());

			prep.executeUpdate();
		} finally {
			DBConnection.close(prep, conn);
		}
	}


	
	public int inserTutor(Tutor t) throws Exception{
		PreparedStatement prep = null;
		Connection conn = null;
		int id = -1;
		try {
			conn = DBConnection.getConnection();
			prep = conn.prepareStatement(INSERTTUTOR,
					Statement.RETURN_GENERATED_KEYS);
			prep.setString(1, t.getReal_name());
			prep.setString(2, t.getSchool());
			prep.setLong(3, t.getReg_time());
			prep.setString(4, t.getGender());
			prep.setString(5, t.getAge());
			prep.setString(6, t.getMajor());
			prep.setString(7, t.getTelephone());
			prep.setString(8,t.getP_summary());

			prep.executeUpdate();
			ResultSet rst = prep.getGeneratedKeys();
			rst.next();
			id = rst.getInt(1);
		} finally {
			DBConnection.close(prep, conn);
		}
		return id;
	}
		

	public int inserReginfo(Tutor t) throws Exception{
		PreparedStatement prep = null;
		Connection conn = null;
		int id = -1;
		try {
			conn = DBConnection.getConnection();
			prep = conn.prepareStatement(INSERTREG,
					Statement.RETURN_GENERATED_KEYS);
			prep.setString(1, t.getNick_name());
			prep.setString(2, t.getPassword());
			prep.setLong(3, t.getAdd_time());
			prep.setDouble(4, t.getSalary());
			prep.setDouble(5, t.getDis_salary());
			prep.setString(6, t.getCourse());
			prep.setInt(7, t.getHas_deleted());
			prep.setString(8,t.getReg_pic());

			prep.executeUpdate();
			ResultSet rst = prep.getGeneratedKeys();
			rst.next();
			id = rst.getInt(1);
		} finally {
			DBConnection.close(prep, conn);
		}
		return id;
		
	}
	
	public void inserC_P(int Pid,int Cid) throws Exception{
		
		
		PreparedStatement prep = null;
		Connection conn = null;
		try {
			conn = DBConnection.getConnection();
			prep = conn.prepareStatement(INSERTCP);
			prep.setInt(1, Pid);
			prep.setInt(2, Cid);

			prep.executeUpdate();
		} finally {
			DBConnection.close(prep, conn);
		}
	}
	
	@Override
	public void insert(Tutor t,int Cid) throws Exception {
		int tid,rid;
		tid = inserTutor(t);
		rid = inserReginfo(t);
		if(tid!=-1 && tid==rid ){
			inserC_P(tid,Cid);
		}
	}

}
