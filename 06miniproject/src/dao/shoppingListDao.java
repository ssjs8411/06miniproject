// 18.7.4 ÃÖÁö¼ö
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import driverDB.DB;
import dto.ShoppingMember;

public class shoppingListDao {
	
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
