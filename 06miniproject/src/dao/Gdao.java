package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.ResultSet;

import driverDB.DB;
import dto.General;
import dto.GeneralMemberStyle;


public class Gdao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	PreparedStatement pstmt2 = null;
	ResultSet rs = null;
	ArrayList<GeneralMemberStyle> ale = null;
	
	public int maxCheck() throws ClassNotFoundException, SQLException {
		DB db = new DB();
		conn = db.dbconn();
		pstmt = conn.prepareStatement("SELECT max(general_member_no) as max FROM general_member");
		rs = pstmt.executeQuery();
		int maxno = 0;
		if(rs.next()){
			maxno = rs.getInt("max") + 1;
		}
		return maxno;
		
	}
	
	public void gInsert(General g) throws ClassNotFoundException, SQLException {
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("INSERT INTO general_member (general_member_id, general_member_pw, general_member_name, general_member_email, general_member_phone, general_member_age, general_member_date) VALUES (?, ?, ?, ?, ?, ?, NOW())");
		
		pstmt.setString(1, g.getG_id());
		pstmt.setString(2, g.getG_pw());
		pstmt.setString(3, g.getG_name());
		pstmt.setString(4, g.getG_email());
		pstmt.setInt(5, g.getG_phone());
		pstmt.setString(6, g.getG_age());
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
		public General gSelectforUpdate(int no) throws ClassNotFoundException, SQLException {
			
			System.out.println("no : "+no);
			DB db = new DB();
			conn = db.dbconn();
			General g = null;
			
			pstmt = conn.prepareStatement("select * from general_member where general_member_no=?");
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				g = new General();
				g.setG_no(rs.getInt("g_no"));
				g.setG_id(rs.getString("g_id"));
				g.setG_pw(rs.getString("g_pw"));
				g.setG_name(rs.getString("g_name"));
				g.setG_email(rs.getString("g_email"));
				g.setG_phone(rs.getInt("g_phone"));
				g.setG_age(rs.getString("g_age"));
				
				
			}
			rs.close();
			pstmt.close();
			conn.close();
			return g;
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
		public void gDelete1(String g_no) throws ClassNotFoundException, SQLException {
			DB db = new DB();
			conn = db.dbconn();
			
			pstmt = conn.prepareStatement("DELETE FROM general_member_style WHERE general_member_style_no=?");

			
			pstmt.setString(1, g_no);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
}
		
		public void insertStyle(int no, String style1, String style2) throws ClassNotFoundException, SQLException{
			DB db = new DB();
			conn = db.dbconn();
			
			pstmt = conn.prepareStatement("INSERT INTO general_member_style (general_member_no, general_member_style) VALUES (?,?), (?,?)");
			
			pstmt.setInt(1, no);
			pstmt.setString(2, style1);
			pstmt.setInt(3, no);
			pstmt.setString(4, style2);
			
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		}
		public ArrayList<GeneralMemberStyle> selectStyleNo(int no) throws SQLException, ClassNotFoundException{
			DB db = new DB();
			conn = db.dbconn();
			ale = new ArrayList<GeneralMemberStyle>();
			pstmt = conn.prepareStatement("SELECT general_member_style_no, general_member_no, general_member_style FROM general_member_style WHERE general_member_no=?");
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			GeneralMemberStyle ms = null;
			
			while(rs.next()) {
				ms = new GeneralMemberStyle();
				ms.setG_member_style_no(rs.getInt("style_no"));
				ms.setG_member_style(rs.getString("style"));
				
				
			}
			pstmt.close();
			conn.close();
			
			ale.add(ms);
			
			return ale;
		}
		}


