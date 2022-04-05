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
	String age = request.getParameter("age");
	%>
	<h1>당신의 나이는 <%= age %> 살 이군요<br><br>
	19금을 보시던지 맘대로 하세요~</h1>
	
</body>
</html>