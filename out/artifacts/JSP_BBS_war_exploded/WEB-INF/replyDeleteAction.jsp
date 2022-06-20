<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="reply.ReplyDAO" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="reply" class="reply.ReplyDTO" scope="page"/>
<jsp:setProperty name="reply" property="replyContent"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
		int bbsID=0;
		if(request.getParameter("bbsID")!=null){
			bbsID=Integer.parseInt(request.getParameter("bbsID"));
		}
	
		String userID=null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		if(userID==null){
			PrintWriter script=response.getWriter();
			script.println("<script>");
			script.println("alert('로그인이 필요합니다.')");
			script.println("location.href='login.jsp'");
			script.println("</script>");	
		}
		
			else{
				ReplyDAO replyDAO=new ReplyDAO();
				int result = replyDAO.replydelete(userID,bbsID);
				if(result==-1){
					PrintWriter script= response.getWriter();
					script.println("<script>");
					script.println("alert('댓글삭제 권한이 없습니다.')");
					script.println("history.back()");
					script.println("</script>");
				}
				else{
					String url="view.jsp?bbsID="+bbsID;
					PrintWriter script= response.getWriter();
					script.println("<script>");
					script.println("alert('댓글이 삭제되었습니다.')");
					script.println("location.href='"+url+"'");
					script.println("</script>");
				}
			}
	%>
</body>
</html>