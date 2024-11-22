package com.guri.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.guri.dto.MemberVO;

public class MemberDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public MemberDAO() {
		
	}
	
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	public Connection getConnection() throws Exception {
		conn = null;
		Context init = new InitialContext();
		Context env = (Context)init.lookup("java:/comp/env");
		DataSource ds = (DataSource)env.lookup("jdbc/myoracle");
		conn = ds.getConnection();
		return conn;
	}
	
	// 사용자 인증 시 사용하는 메서드
	public int userCheck(String userid, String pwd) {
		int result = -1;
		
		String sql = "select pwd from member where userid=?";
		
		conn = null;
		pstmt = null;
		rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString("pwd") != null && rs.getString("pwd").equals(pwd)) {
					result = 1; // 아이디와 비번이 일치 할 때
				} else {
					result = 0; // 비번이 틀릴 때
				}
			} else {
				result = -1;
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
	
	// 아이디로 회원 정보를 가져오는 메서드
	public MemberVO getMember(String userid) {
		MemberVO mvo = null;
		
		String sql = "select * from member where userid=?";
		
		conn = null;
		pstmt = null;
		rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mvo = new MemberVO();
				mvo.setName(rs.getString("name"));
				mvo.setUserid(rs.getString("userid"));
				mvo.setPwd(rs.getString("pwd"));
				mvo.setEmail(rs.getString("email"));
				mvo.setPhone(rs.getString("phone"));
				mvo.setAdmin(rs.getInt("admin"));
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
		
		return mvo;
	}
}
