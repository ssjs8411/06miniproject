<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("euc-kr");

	String style[] = null;
	
	if(request.getParameter("style")!=null){
		style = request.getParameterValues("style");
		out.println(style[0] + "<--style[0] <br>");
		out.println(style[1] + "<--style[1] <br>");
		
		// ��Ÿ�����̺� ��ȣ ��� �޼���
		public ArrayList<GeneralMemberStyle> selectStyleNo(int no){
		
		pstmt = conn.prepareStatement("SELECT ��Ÿ��NO, ���NO, ��Ÿ�� FROM table��  WHERE ���NO=?");
		pstmt.setInt(1, no);
		
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			���style e = new ���style();
			e.set��Ÿ��no(rs.getInt("��Ÿ��NO"));
			e.set��Ÿ��(rs.getString("��Ÿ��"));
			
			ale.add(e);
		}
		
		return ale;
		
		}
		
		ArrayList<GeneralMemberStyle> ale = exdao.selectStyleNo(���NO);
		
		// ��Ÿ�����̺� ȣ��
		for(int i=0; i<ale.size(); i++){
			���style e = ale.get(i);
			
			updateStyle(e.get��Ÿ��NO(), style[i]);
		}
		
		
		
		
		//��Ÿ�� ������Ʈ �޼���
				public void updateStyle(int no, String style){
			
			pstmt = conn.prepareStatement("UPDATE general_member_style SET general_member_style=? WHERE general_member_style_no=?");
			pstmt.setString(1, style);
			pstmt.setString(2, no);
			
			pstmt.executeUpdate();
		}
		
		
		// ȣ��
		updateStyle(no, style[0]);
	}

%>