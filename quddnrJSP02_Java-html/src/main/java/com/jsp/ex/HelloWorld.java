package com.jsp.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HW")
public class HelloWorld extends HttpServlet {
								// 요청 처리 객체 				응답 처리 객체
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("doGet() 메서드 실행");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>Get 방식입니더</h1>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
System.out.println("doPost() 메서드 실행");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>Post 방식입니당</h1>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
		doGet(request, response);
	}

	//요청이 들어가면 무조건 request 
	// 응답을 받으면 무조건 response
	
}
