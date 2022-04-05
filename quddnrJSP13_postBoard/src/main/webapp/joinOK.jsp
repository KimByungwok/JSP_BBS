<%@page import="java.sql.DriverManager"%>
<%@page import="com.jsp.db.AccountDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form name = "f1" action = "login.jsp" method = "post">
	<h1>GNB</h1><a href = "login.jsp">로그인하기</a><hr>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><hr>	
	</form>
	
	<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	
	
	%>
	
</body>
</html>