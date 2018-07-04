// 18.7.4 최지수
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import driverDB.DB;
import dto.TotalMember;

public class LoginDao {
	
	public TotalMember loginsessionCheck(String loginId) throws ClassNotFoundException, SQLException {
		
		TotalMember t = new TotalMember();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("SELECT general_member_id, general_member_name FROM general_member WHERE general_member_id=?");
		pstmt.setString(1, loginId);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			
			t.setGeneral_member_id(rs.getString("general_member_id"));
			t.setGeneral_member_name(rs.getString("general_member_name"));
			
		}else {
			pstmt2 = conn.prepareStatement("SELECT shopping_member_id, shopping_member_name, shopping_name FROM shopping_member WHERE shopping_member_id=?");
			pstmt2.setString(1, loginId);
			
			rs2 = pstmt2.executeQuery();
			
			if(rs2.next()) {
				t.setShopping_member_id(rs2.getString("shopping_member_id"));
				t.setShopping_member_name(rs2.getString("shopping_member_name"));
				t.setShopping_name(rs2.getString("shopping_name"));
			}
		}
		
		return t;
		
	}

	public String loginCheck(String loginId, String loginPw) throws ClassNotFoundException, SQLException {
		
		String loginCheck = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("SELECT general_member_id, general_member_pw FROM general_member WHERE general_member_id=?");
		pstmt.setString(1, loginId);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			if(loginPw.equals(rs.getString("general_member_pw"))) {
				loginCheck = "로그인성공";
			}else {
				loginCheck = "비번불일치";
			}
		}else {
			pstmt2 = conn.prepareStatement("SELECT shopping_member_id, shopping_member_pw FROM shopping_member WHERE shopping_member_id=?");
			pstmt2.setString(1, loginId);
			
			rs2 = pstmt2.executeQuery();
			
			if(rs2.next()) {
				if(loginPw.equals(rs2.getString("shopping_member_pw"))) {
					loginCheck = "로그인성공";
				}else {
					loginCheck = "비번불일치";
				}
			}else {
				loginCheck = "아이디불일치";
			}
		}
		
		return loginCheck;
		
	}
}
