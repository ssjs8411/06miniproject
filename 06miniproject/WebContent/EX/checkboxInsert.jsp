<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<!DOCTYPE html>
<%
	
	String ex[] = request.getParameterValues("ex");
	
	
		out.println(ex[0] + "<br>");
		out.println(ex[1] + "<br>");
	
	public int maxCheck(){
		pstmt = conn.prepareStatement("SELECT max(ex_no) as max FROM ex");
		rs = pstmt.executeQuery();
		int maxno = null;
		if(rs.next()){
			maxno = rs.getInt("max") + 1;
		}
		return maxno; // -->> 최대값 +1값 리턴
	}
	// 호출 --> int maxno = maxCheck();
		
		public void insertStyle(int no, String style1, String style2){
			
			pstmt2 = conn.prepareStatement("INSERT INTO exex (ex_no, ex_check) VALUES (?,?), (?,?)");
			pstmt2.setInt(1, no);
			pstmt2.setString(2, style1);
			pstmt2.setInt(3, no);
			pstmt2.setString(4, style2);
		
		}
		
		
		// 호출 --> insertStyle(maxno, ex[0], ex[1]);
		
		
%>
