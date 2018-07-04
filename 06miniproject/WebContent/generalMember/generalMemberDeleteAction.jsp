<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "dao.Gdao" %>
<!DOCTYPE html>
<% 
String g_no = request.getParameter("g_no");
Gdao dao = new Gdao();
dao.gDelete(g_no);
%>