package com.java.ex;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.cmd.Command;
import com.jsp.cmd.InsertCommand;

@WebServlet("*.do")
public class FrontCont extends HttpServlet {
 
    public FrontCont() {
    	super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request,response);
	}
	
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println("URI : "+uri);
		String ctxPath = request.getContextPath();
		System.out.println("ctxPath : "+ctxPath);
		String cmd = uri.substring(ctxPath.length());
		System.out.println("Command : " + cmd);
		
		if(cmd.equals("/insert.do")) {
			Command cmder = new InsertCommand();
			cmder.insert();
			System.out.println("insert");
			System.out.println("====================");
		}else if (cmd.equals("/update.do")) {
			System.out.println("update");
			System.out.println("====================");
		}else if (cmd.equals("/select.do")) {
			System.out.println("select");
			System.out.println("====================");
		}else if (cmd.equals("/delete.do")) {
			System.out.println("delete");
			System.out.println("====================");
		}
	}
}
