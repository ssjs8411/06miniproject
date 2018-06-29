<!-- 18.6.29 최지수 -->
<!-- 드라이버로딩, DB연결 호출 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%@ page import = "driverDB.DB" %>
<%@ page import = "java.sql.Connection" %>

<!DOCTYPE html>

<%
	Connection conn = null;

	DB db = new DB();
	conn = db.dbconn();
	
	System.out.println("01 드라이버로딩 및 DB연결");
%>