package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/F_login")
public class Form_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter writer=response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>doget페이지 입니다.</title>");
		writer.println("</head>");
		writer.println("<h1>doget페이지 입니다.</h1>");
		writer.println("<p>로그인 되었습니다.</p>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter writer=response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>dopost페이지 입니다.</title>");
		writer.println("</head>");
		writer.println("<h1>doget페이지 입니다.</h1>");
		writer.println("<p>로그인 되었습니다.</p>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
	}

}
