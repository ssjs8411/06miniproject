<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@ page import = "dao.Gdao" %>
<!DOCTYPE html>
<% 	request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="g" class="dto.General"/>
<jsp:setProperty name="g" property="*"/>
<%
String style[] = request.getParameterValues("g_style");

Gdao dao = new Gdao();
int maxno = dao.maxCheck();
System.out.println(maxno);
if(maxno != 0){
	dao.gInsert(g);
	dao.insertStyle(maxno, style[0], style[1]);
}

%>