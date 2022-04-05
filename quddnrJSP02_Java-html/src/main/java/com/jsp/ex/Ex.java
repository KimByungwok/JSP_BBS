package com.jsp.ex;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex")
public class Ex extends HttpServlet {
	@PostConstruct
	public void PostConstruct() {	//init이 실행되기 전에 해야할 일들 정의.
		System.out.println("PostConstruct() 메서드는 init() 메서드 실행 이전 정의");
	}
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init() 메서드 servlet이 생성될 때 처리해야 할 일들이 정의");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doGet() 메서드 실행");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doPost() 메서드 실행");
	}
	
	public void destroy() {
		System.out.println("destroy() 메서드 servlet 이 끝날 때 처리해야 할 일들을 정의");
	}
	@PreDestroy
	public void PreDestroy() {
		System.out.println("PreDestroy()메서드는 destroy()메서드 이후 처리할 일 정의");
	}

}








