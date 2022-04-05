package com.jsp.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/Servletinit", 
initParams = {@WebInitParam(name = "id",value = "aaa"),
		@WebInitParam(name = "pw",value = "1234")})
public class Servletinit extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet() 메서드 실행");

		String id = getInitParameter("id");
		String pw = getInitParameter("pw");

		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();

		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>");
		writer.println("Get 방식입니다");
		writer.println("<hr>");
		writer.println(id);
		writer.println(pw);
		writer.println("</h1>");
		writer.println("</body>");
		writer.println("</html>");

		writer.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
