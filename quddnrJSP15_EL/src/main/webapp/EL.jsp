<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
    <jsp:useBean id = "stu" class="com.jsp.ex.Student"/>
    <jsp:setProperty name="stu" property="name" value="박남일"/>
    <jsp:setProperty name="stu" property="major" value="융소과"/>
    <jsp:setProperty name="stu" property="grade" value="5학년"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var = "varName" value="변수값"/>
	varName : <c:out value = "${varName}"/><br>
	<c:remove var = "varName"/>
	varName remove : <c:out value="${varName}"/>
	<hr>
	<c:catch var = "error">
		<%= 2/0 %>
	</c:catch><br>
	<c:out value="${error}"/>
	<hr>
	<c:if test="${(1+2) == 3 }">
		1+2=3; </c:if> <br>
	<c:if test="${(1+3) !=3}">
		1+2!=3</c:if>
	<hr>
	<c:forEach var = "fEach" begin="0" end = "30" step="3">
		${fEach}
	</c:forEach>
<hr>
	이름 : <jsp:getProperty property="name" name="stu"/><br>
	학과 : <jsp:getProperty property="major" name="stu"/><br>
	학번 : <jsp:getProperty property="grade" name="stu"/><br>
	<hr>
	이름 : ${stu.name}
	학과 : ${stu.major}
	학번 : ${stu.grade}
	
</body>
</html>