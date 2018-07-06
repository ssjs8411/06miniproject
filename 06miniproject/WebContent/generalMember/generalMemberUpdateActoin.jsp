<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "dao.Gdao" %>
<!DOCTYPE html>
<% 	request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="g" class="dto.General"/>
<jsp:setProperty name="g" property="*"/>
<%
Gdao dao = new Gdao();
dao.gUpdate(g);
dao.gSelectforUpdate(0);
%>