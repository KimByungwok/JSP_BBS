<%@page import="java.io.ObjectInputStream.GetField"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
		String path = request.getRealPath("File"); // 실제 저장되는 위치
	
		int size = 1024 * 720 * 10;
		String file = "";
		String oriFile = ""; //실제 파일 이름과 서버에 저장되는 이름
	
		try {
			MultipartRequest multi = new MultipartRequest(request, path, size, "UTF-8", new DefaultFileRenamePolicy());
			
			Enumeration<?> files = multi.getFileNames();
			String str = (String) files.nextElement();
	
			file = multi.getFilesystemName(str);
			oriFile = multi.getOriginalFileName(str);
			
			System.out.println("파일 업로드");
		} catch (Exception e) {
			e.printStackTrace();
		}
		%>
	</body>
</html>