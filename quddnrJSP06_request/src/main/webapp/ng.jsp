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
	<h1>당신의 나이는 <%= age %> 살이네?<br><br>
	어허 애기는 19금 보면 안돼</h1>
</body>
</html>