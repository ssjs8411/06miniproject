<!-- 18.6.29 ������ -->
<!-- ����̹��ε�, DB���� ȣ�� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%@ page import = "driverDB.DB" %>
<%@ page import = "java.sql.Connection" %>

<!DOCTYPE html>

<%
	Connection conn = null;

	DB db = new DB();
	conn = db.dbconn();
	
	System.out.println("01 ����̹��ε� �� DB����");
%>