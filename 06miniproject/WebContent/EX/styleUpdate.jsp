<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("euc-kr");

	String style[] = null;
	
	if(request.getParameter("style")!=null){
		style = request.getParameterValues("style");
		out.println(style[0] + "<--style[0] <br>");
		out.println(style[1] + "<--style[1] <br>");
		
		// 스타일테이블 번호 출력 메서드
		public ArrayList<GeneralMemberStyle> selectStyleNo(int no){
		
		pstmt = conn.prepareStatement("SELECT 스타일NO, 멤버NO, 스타일 FROM table명  WHERE 멤버NO=?");
		pstmt.setInt(1, no);
		
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			멤버style e = new 멤버style();
			e.set스타일no(rs.getInt("스타일NO"));
			e.set스타일(rs.getString("스타일"));
			
			ale.add(e);
		}
		
		return ale;
		
		}
		
		ArrayList<GeneralMemberStyle> ale = exdao.selectStyleNo(멤버NO);
		
		// 스타일테이블 호출
		for(int i=0; i<ale.size(); i++){
			멤버style e = ale.get(i);
			
			updateStyle(e.get스타일NO(), style[i]);
		}
		
		
		
		
		//스타일 업데이트 메서드
				public void updateStyle(int no, String style){
			
			pstmt = conn.prepareStatement("UPDATE general_member_style SET general_member_style=? WHERE general_member_style_no=?");
			pstmt.setString(1, style);
			pstmt.setString(2, no);
			
			pstmt.executeUpdate();
		}
		
		
		// 호출
		updateStyle(no, style[0]);
	}

%>