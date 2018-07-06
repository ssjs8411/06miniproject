// 18.7.4 최지수
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import driverDB.DB;
import dto.ShoppingMember;

public class shoppingListDao {
	
	public void deleteRequestApproval(int no) throws ClassNotFoundException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("UPDATE shopping_approval SET shopping_approval='삭제요청' WHERE shopping_member_no=?");
		pstmt.setInt(1, no);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	}
	
	public void deleteApproval(int no) throws ClassNotFoundException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("DELETE FROM shopping_approval WHERE shopping_approval_no=?");
		pstmt.setInt(1, no);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	}
	
	public void updateApproval(int no) throws ClassNotFoundException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("UPDATE shopping_approval SET shopping_approval='등록' WHERE shopping_approval_no=?");
		pstmt.setInt(1, no);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
	}
	
	public ArrayList<ShoppingMember> requestShoppingList(String approval) throws ClassNotFoundException, SQLException{
		
		ArrayList<ShoppingMember> alsm = new ArrayList<ShoppingMember>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("SELECT shopping_approval_no, shopping_member_no, shopping_approval FROM shopping_approval WHERE shopping_approval=?");
		pstmt.setString(1, approval);
		
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			ShoppingMember sm = new ShoppingMember();
			sm.setShopping_approval_no(rs.getInt("shopping_approval_no"));
			sm.setShopping_member_no(rs.getInt("shopping_member_no"));
			sm.setShopping_approval(rs.getString("shopping_approval"));
			
			alsm.add(sm);
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		
		return alsm;
		
	}
	
	public ShoppingMember approvalList(int shopping_member_no) throws ClassNotFoundException, SQLException {
		
		ShoppingMember sm = new ShoppingMember();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("SELECT shopping_approval_no, shopping_member_no, shopping_approval FROM shopping_approval WHERE shopping_member_no=?");
		pstmt.setInt(1, shopping_member_no);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			sm.setShopping_member_no(rs.getInt("shopping_member_no"));
			sm.setShopping_approval(rs.getString("shopping_approval"));
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		
		return sm;
		
	}
	
	public void requestApprovalShopping(int shopping_member_no) throws ClassNotFoundException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("INSERT INTO shopping_approval (shopping_member_no) VALUES (?)");
		pstmt.setInt(1, shopping_member_no);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
				
	}
	
	public ArrayList<ShoppingMember> selectShoppingStyle4(String style) throws ClassNotFoundException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ShoppingMember> alsm = new ArrayList<ShoppingMember>();
		System.out.println(style+"<-javastyle");
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("SELECT shopping_member.shopping_name, shopping_member.shopping_member_phone, shopping_member.shopping_addr FROM shopping_member JOIN shopping_member_style ON shopping_member.shopping_member_no = shopping_member_style.shopping_member_no WHERE shopping_member_style.shopping_member_style=? AND shopping_member.shopping_approval='O'");
		pstmt.setString(1, style);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			ShoppingMember sm = new ShoppingMember();
			sm.setShopping_name(rs.getString("shopping_name"));
			sm.setShopping_member_phone(rs.getInt("shopping_member_phone"));
			sm.setShopping_addr(rs.getString("shopping_addr"));
			
			alsm.add(sm);
		}
		System.out.println(alsm + "<--java");
		
		rs.close();
		pstmt.close();
		conn.close();
		
		return alsm;
		
	}
	
	public ArrayList<ShoppingMember> selectShoppingStyle3(String style) throws ClassNotFoundException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ShoppingMember> alsm = new ArrayList<ShoppingMember>();
		System.out.println(style+"<-javastyle");
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("SELECT shopping_member.shopping_name, shopping_member.shopping_member_phone, shopping_member.shopping_addr FROM shopping_member JOIN shopping_member_style ON shopping_member.shopping_member_no = shopping_member_style.shopping_member_no WHERE shopping_member_style.shopping_member_style=? AND shopping_member.shopping_approval='O'");
		pstmt.setString(1, style);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			ShoppingMember sm = new ShoppingMember();
			sm.setShopping_name(rs.getString("shopping_name"));
			sm.setShopping_member_phone(rs.getInt("shopping_member_phone"));
			sm.setShopping_addr(rs.getString("shopping_addr"));
			
			alsm.add(sm);
		}
		System.out.println(alsm + "<--java");
		
		rs.close();
		pstmt.close();
		conn.close();
		
		return alsm;
		
	}
	
	public ArrayList<ShoppingMember> selectShoppingStyle2(String style) throws ClassNotFoundException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ShoppingMember> alsm = new ArrayList<ShoppingMember>();
		System.out.println(style+"<-javastyle");
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("SELECT shopping_member.shopping_name, shopping_member.shopping_member_phone, shopping_member.shopping_addr FROM shopping_member JOIN shopping_member_style ON shopping_member.shopping_member_no = shopping_member_style.shopping_member_no WHERE shopping_member_style.shopping_member_style=? AND shopping_member.shopping_approval='O'");
		pstmt.setString(1, style);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			ShoppingMember sm = new ShoppingMember();
			sm.setShopping_name(rs.getString("shopping_name"));
			sm.setShopping_member_phone(rs.getInt("shopping_member_phone"));
			sm.setShopping_addr(rs.getString("shopping_addr"));
			
			alsm.add(sm);
		}
		System.out.println(alsm + "<--java");
		
		rs.close();
		pstmt.close();
		conn.close();
		
		return alsm;
		
	}
	
	public ArrayList<ShoppingMember> selectShoppingStyle1(String style) throws ClassNotFoundException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ShoppingMember> alsm = new ArrayList<ShoppingMember>();
		System.out.println(style+"<-javastyle");
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("SELECT shopping_member.shopping_name, shopping_member.shopping_member_phone, shopping_member.shopping_addr FROM shopping_member JOIN shopping_member_style ON shopping_member.shopping_member_no = shopping_member_style.shopping_member_no WHERE shopping_member_style.shopping_member_style=? AND shopping_member.shopping_approval='O'");
		pstmt.setString(1, style);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			ShoppingMember sm = new ShoppingMember();
			sm.setShopping_name(rs.getString("shopping_name"));
			sm.setShopping_member_phone(rs.getInt("shopping_member_phone"));
			sm.setShopping_addr(rs.getString("shopping_addr"));
			
			alsm.add(sm);
		}
		System.out.println(alsm + "<--java");
		
		rs.close();
		pstmt.close();
		conn.close();
		
		return alsm;
		
	}

	public ArrayList<ShoppingMember> selectShoppingStyle(String style) throws ClassNotFoundException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ShoppingMember> alsm = new ArrayList<ShoppingMember>();
		System.out.println(style+"<-javastyle");
		DB db = new DB();
		conn = db.dbconn();
		
		pstmt = conn.prepareStatement("SELECT shopping_member.shopping_name, shopping_member.shopping_member_phone, shopping_member.shopping_addr FROM shopping_member JOIN shopping_member_style ON shopping_member.shopping_member_no = shopping_member_style.shopping_member_no WHERE shopping_member_style.shopping_member_style=? AND shopping_member.shopping_approval='O'");
		pstmt.setString(1, style);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			ShoppingMember sm = new ShoppingMember();
			sm.setShopping_name(rs.getString("shopping_name"));
			sm.setShopping_member_phone(rs.getInt("shopping_member_phone"));
			sm.setShopping_addr(rs.getString("shopping_addr"));
			
			alsm.add(sm);
		}
		System.out.println(alsm + "<--java");
		
		rs.close();
		pstmt.close();
		conn.close();
		
		return alsm;
		
	}
}
