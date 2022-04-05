package com.jsp.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/form01")
public class form01 extends HttpServlet {
	public void init(ServletConfig config) throws ServletException {

	}

	public void destroy() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("doGet() 메서드 실행");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String firstNum = request.getParameter("firstNum");
		String secondNum = request.getParameter("secondNum");
		String ThirdNum = request.getParameter("ThirdNum");

		String[] hobby = request.getParameterValues("hobby");
		String sex = request.getParameter("sex");

		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();

		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>");
		writer.println("Post 방식입니다");
		writer.println("<hr>");
		writer.println("ID : " + id + "<br>");
		writer.println("PW : " + pw + "<br>");
		writer.println("이름 : " + name + "<br>");
		writer.println("전화번호 : " + firstNum +"-"+ secondNum+"-" + ThirdNum + "<br>");
		writer.println("취미 : " + Arrays.toString(hobby)+"<br>");
		writer.println("성별 : " + sex + "<br>");
		writer.println("</h1>");
		writer.println("</body>");
		writer.println("</html>");

		writer.close();
	}

}
