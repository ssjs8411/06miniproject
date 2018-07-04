package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import driverDB.DB;
import dto.General;

public class Gdao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	public void gInsert(General g) throws ClassNotFoundException, SQLException {
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("insert into general_member values(?,?,?,?,?,?,?,now())");
		pstmt.setInt(1, g.getG_no());
		pstmt.setString(2, g.getG_id());
		pstmt.setString(3, g.getG_pw());
		pstmt.setString(4, g.getG_name());
		pstmt.setString(5, g.getG_email());
		pstmt.setInt(6, g.getG_phone());
		pstmt.setString(7, g.getG_age());
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		}
		
		public void gUpdate(General g) throws ClassNotFoundException, SQLException {
			DB db = new DB();
			conn = db.dbconn();
			
			pstmt = conn.prepareStatement("UPDATE general_member SET general_member_id=?,general_member_pw=?,general_member_name=?,general_member_email=?,general_member_phone=?,general_member_age=? WHERE general_member_no=?");

			pstmt.setString(1, g.getG_id());
			pstmt.setString(2, g.getG_pw());
			pstmt.setString(3, g.getG_name());
			pstmt.setString(4, g.getG_email());
			pstmt.setInt(5, g.getG_phone());
			pstmt.setString(6, g.getG_age());
			pstmt.setInt(7, g.getG_no());
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
			}
		public void gDelete(String g_no) throws ClassNotFoundException, SQLException {
			DB db = new DB();
			conn = db.dbconn();
			
			pstmt = conn.prepareStatement("DELETE FROM general_member WHERE general_member_no=?");

			
			pstmt.setString(1, g_no);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
}
}


