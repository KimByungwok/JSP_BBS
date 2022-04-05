<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isErrorPage = "true" %>
    <%response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>이것은 에러페이지에 관한 errorPage.jsp 파일임.</h1>
	<%= exception.getMessage() %>
</body>
</html>