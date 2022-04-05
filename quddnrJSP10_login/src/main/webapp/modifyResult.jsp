<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>modifyRssult.jsp 파일</h1>
	<%= session.getAttribute("name") %> 님의 회원정보를 수정하였습니다.
	<a href="logout.jsp">로그아웃</a> &nbsp;&nbsp; <a href ="modify.jsp">회원정보수정</a>
</body>
</html>