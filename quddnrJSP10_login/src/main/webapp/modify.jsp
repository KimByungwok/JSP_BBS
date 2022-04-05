<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!Connection conn;
	Statement stmt;
	ResultSet resultSet;

	String id, pw, name, phone1, phone2, phone3;%>
<%
id = (String) session.getAttribute("id");
name = (String) session.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="ModifyOk" method="post">
		ID : <input type="text" name="id" size="10" value=<%=id%>
			readonly="readonly"><br> PW : <input type="text"
			name="pw" size="10"><br> 이름 : <input type="text"
			name="name" size="10" value=<%=name%>><br> 전화번호 : <select
			name="phone1">
			<option value="010">010</option>
			<option value="011">011</option>
			<option value="019">019</option>
		</select> <input type="text" name="phone2" size="5" value=<%=phone2%>>-
		<input type="text" name="phone3" size="5" value=<%=phone3%>><br>
		<button type="submit">수정하기</button>
		<button type="button" onclick="location.href='loginResult.jsp'">돌아가기</button>
	</form>


	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</body>
</html>