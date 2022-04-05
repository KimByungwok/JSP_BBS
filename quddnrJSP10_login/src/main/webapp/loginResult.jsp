<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! String id,pw,name,phone1,phone2,phone3; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>loginResult.jsp 파일임</h1>
	
	<%
		id = (String) session.getAttribute("id");
		pw = (String) session.getAttribute("pw");
		name = (String) session.getAttribute("name");
		phone1 = (String) session.getAttribute("phone1");
		phone2 = (String) session.getAttribute("phone2");
		phone3 = (String) session.getAttribute("phone3");
	%>
	<%=name %> 님 안녕? <br>
	<a href="modify.jsp">회원정보수정</a>
</body>
</html>