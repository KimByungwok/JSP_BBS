<%@page import="java.util.Enumeration"%>
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
	Object obj1 = session.getAttribute("mySessionName");
	String mySession = (String) obj1;
	out.println(mySession + "<br>");

	Object obj2 = session.getAttribute("myNum");
	Integer myNum = (Integer) obj2;
	out.println(myNum + "<br>");

	out.println("========================<br>");

	String sName;
	String sValue;
	Enumeration enumeration = session.getAttributeNames();
	while (enumeration.hasMoreElements()) {
		sName = enumeration.nextElement().toString();
		sValue = session.getAttribute(sName).toString();
		out.println("sName: " + sName + "<br>");
		out.println("sValue: " + sValue + "<br>");
	}
	out.println("======================<br>");

	String sessionID = session.getId();
	out.println("sessionID : " + sessionID + "<br>");
	int sessionInter = session.getMaxInactiveInterval();
	out.println("sessionInter : " + sessionInter + "<br>");

	out.println("=======================<br>");

	session.removeAttribute("mySessionName");
	Enumeration enumeration1 = session.getAttributeNames();
	while (enumeration1.hasMoreElements()) {
		sName = enumeration1.nextElement().toString();
		sValue = session.getAttribute(sName).toString();
		out.println("sName : " + sName + "<br>");
		out.println("sValue : " + sValue + "<br>");
	}

	out.println("=====================<br>");

	session.invalidate();
	if (request.isRequestedSessionIdValid()) {
		out.println("session valid");
	} else {
		out.println("session invalid");
	}
	%>
</body>
</html>