<%@page import="com.java.ex.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<jsp:useBean id="std1" class="com.java.ex.Student" />
		
		<jsp:setProperty value="박남일" property="name" name="std1"/>
		<jsp:setProperty value="25" property="age" name="std1"/>
		<jsp:setProperty value="융소과" property="major" name="std1"/>
		<jsp:setProperty value="C반" property="classNum" name="std1"/>
		
		<h1>
		이름 : <jsp:getProperty property="name" name="std1"/><br>
		나이 : <jsp:getProperty property="age" name="std1"/><br>
		학과 : <jsp:getProperty property="major" name="std1"/><br>
		반 : <jsp:getProperty property="classNum" name="std1"/>
		</h1> <hr>
		
		<%
			Student std2 = new Student();
			std2.setName("김병욱");
			std2.setAge("19");
			std2.setMajor("컴공");
			std2.setClassNum("사회 맞춤형");
			
			out.println("이름 : "+ std2.getName()+"<br>");
			out.println("나이 : "+ std2.getAge()+"<br>");
			out.println("학과 : "+ std2.getMajor()+"<br>");
			out.println("반 : "+ std2.getClassNum()+"<br>");
		%>
	</body>
</html>