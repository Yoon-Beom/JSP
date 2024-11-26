package com.magic.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.magic.dto.EmployeesVO;

public class EmployeesDAO {
	private Connection conn;
	private PreparedStatement pstmt; 
	private ResultSet rs;
	
	private EmployeesDAO() {
		
	}
	
	private static EmployeesDAO instance = new EmployeesDAO();
	
	public static EmployeesDAO getInstance() {
		return instance;
	}
	
	Connection getConnection() {
		conn = null;
		Context init = null;
		
		try {
			init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:/comp/env/jdbc/shopping");					
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
	public int userCheck(String userid, String pwd, String lev) {
		int result = -1;
		conn = null;
		pstmt = null;
		rs = null;
		
		String sql = "select * from employees where id=?";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(pwd.equals(rs.getString("pass"))) {
					if(lev.equals(rs.getString("lev"))) {
						result = 2;	// 관리자 로그인 성공
						if(lev.equals("B")) {
							result = 3; // 일반 회원 로그인 성공
						}
					} else {
						result = 1;
					}
				} else {
					result = 0;
				}
			} else {
				result = -1; // 아이디 불일치
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) { rs.close(); }
				if(pstmt != null) { pstmt.close(); }
				if(conn != null) { conn.close(); }
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	public EmployeesVO getMember(String id) {
		EmployeesVO member = null;
		String sql = "select * from employees where id=?";
		conn = null;
		pstmt = null;
		rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				member = new EmployeesVO();
				member.setId(rs.getString("id"));
				member.setPass(rs.getString("pass"));
				member.setName(rs.getString("name"));
				member.setLev(rs.getString("lev"));
				member.setPhone(rs.getString("phone"));
				member.setEnter(rs.getDate("enter"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) { rs.close(); }
				if(pstmt != null) { pstmt.close(); }
				if(conn != null) { conn.close(); }
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return member;
	}
	
	public int updateMember(EmployeesVO evo) {
		int result = -1;
		String sql = "update employees pass=?, name=?, lev=?, gender=?, phone=? set where id=?";
		
		conn = null;
		pstmt = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, evo.getPass());
			pstmt.setString(2, evo.getName());
			pstmt.setString(3, evo.getLev());
			pstmt.setInt(4, evo.getGender());
			pstmt.setString(5, evo.getPhone());
			pstmt.setString(6, evo.getId());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) { pstmt.close(); }
				if(conn != null) { conn.close(); }
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	public int insertMember(EmployeesVO evo) {
		int result = -1;
		String sql = "insert into employees values(?,?,?,?,sysdate,?,?)";
		conn = null;
		pstmt = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, evo.getId());
			pstmt.setString(2, evo.getPass());
			pstmt.setString(3, evo.getName());
			pstmt.setString(4, evo.getLev());
			pstmt.setInt(5, evo.getGender());
			pstmt.setString(6, evo.getPhone());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) { pstmt.close(); }
				if(conn != null) { conn.close(); }
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
}
