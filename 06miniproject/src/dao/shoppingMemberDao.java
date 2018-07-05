package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import driverDB.DB;
import dto.ShoppingMember;

public class shoppingMemberDao {
	
	
/*	public int maxCheck() throws ClassNotFoundException, SQLException {
		System.out.println("maxCheck.java");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("");
		return 0;
		
	}*/
	
/*	public void insertStyle (int no, String style1, String style2) throws ClassNotFoundException, SQLException {
		System.out.println("insertStyle.java");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("INSERT INTO shopping_member_style (shopping_member_no, shopping_member_style) VALUES (?, ?), (?, ?)");
		pstmt.setInt(1, no);
		pstmt.setString(2, style1);
		pstmt.setInt(3, no);
		pstmt.setString(4, style2);
	}*/
	
	public ShoppingMember sSelectforUpdate (String shopping_member_id) throws ClassNotFoundException, SQLException {
		System.out.println("sSelectforUpdate.java");
		
		ShoppingMember sm = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		DB db = new DB();
		conn = db.dbconn();
		
		
		pstmt = conn.prepareStatement("SELECT * FROM shopping_member WHERE shopping_member_id=?");
		pstmt.setString(1, shopping_member_id);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			sm = new ShoppingMember();
			sm.setShopping_member_id(rs.getString("shopping_member_id"));
			sm.setShopping_member_pw(rs.getString("shopping_member_pw"));
			sm.setShopping_member_name(rs.getString("shopping_member_name"));
			sm.setShopping_name(rs.getString("shopping_name"));
			sm.setShopping_member_phone(rs.getInt("shopping_member_phone"));
			sm.setShopping_addr(rs.getString("shopping_addr"));
			
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		
		return sm;
		
	}
	
	public void sMdaoDelete (String shopping_member_id) throws ClassNotFoundException, SQLException {
		System.out.println("sMdaoDelete.java");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("DELETE FROM shopping_Member WHERE shopping_member_id=?");
		pstmt.setString(1, shopping_member_id);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();

		
	}
	
	
	public void sMdaoUpdate(ShoppingMember sm) throws ClassNotFoundException, SQLException {
		System.out.println("sMdaoUpdate.java");
		System.out.println(sm+"<-sm.java");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
	
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("UPDATE shopping_member SET shopping_member_pw=?, shopping_member_name=?, shopping_name=?, shopping_member_phone=?, shopping_addr=?  WHERE shopping_member_id=?");
		pstmt.setString(1, sm.getShopping_member_pw());
		pstmt.setString(2, sm.getShopping_member_name());
		pstmt.setString(3, sm.getShopping_name());
		pstmt.setInt(4, sm.getShopping_member_phone());
		pstmt.setString(5, sm.getShopping_addr());
		pstmt.setString(6, sm.getShopping_member_id());
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	
		
	}
	
	public void sMdaoInsert(ShoppingMember sm) throws ClassNotFoundException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("INSERT INTO shopping_member (shopping_member_id, shopping_member_pw, shopping_member_name, shopping_name, shopping_member_phone, shopping_member_date, shopping_addr, shopping_approval) VALUES (?, ?, ?, ?, ?, NOW(), ?, 'X')");
		pstmt.setString(1, sm.getShopping_member_id());
		pstmt.setString(2, sm.getShopping_member_pw());
		pstmt.setString(3, sm.getShopping_member_name());
		pstmt.setString(4, sm.getShopping_name());
		pstmt.setInt(5, sm.getShopping_member_phone());
		pstmt.setString(6, sm.getShopping_addr());
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	}
}
