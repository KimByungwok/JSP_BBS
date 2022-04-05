<%@page import="com.jsp.db.AccountDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.jsp.db.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
		AccountDAO accountDAO = new AccountDAO();
		ArrayList<AccountDTO> dtos = accountDAO.accountSelect();
	
		for (int i = 0; i < dtos.size(); i++) {
			AccountDTO dto = dtos.get(i);
			
			String id = dto.getM_id();
			String pw = dto.getM_pw();
			String name = dto.getM_name();
			String phone = dto.getM_phone1()+"-"+dto.getM_phone2()+"-"+dto.getM_phone3();
			
			out.println("ID : "+id+"<br>");
			out.println("PW : "+pw+"<br>");
			out.println("이름 : "+name+"<br>");
			out.println("전화번호 : "+phone+"<br>");
			
			out.println("==============================<br>");
		}
		%>
	</body>
</html>