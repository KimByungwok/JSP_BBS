<%@page import="com.jsp.db.AccountDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! String id,pw,name,phone1,phone2,phone3; %>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공!</title>
</head>
<body>
<form name = "f1" action = "login.jsp" method = "post">
	<h1>GNB</h1><a href = "login.jsp">로그인하기</a><hr>	
</form>

<%
id = (String) session.getAttribute("id");
pw = (String) session.getAttribute("pw");
name = (String) session.getAttribute("name");
	%>
	
	<%=name %> 님 반갑습니다 <br>
	<a href="modify.jsp">회원정보수정</a>
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><hr>

</body>
</html>