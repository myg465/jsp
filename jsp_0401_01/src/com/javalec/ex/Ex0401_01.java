package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex01")
public class Ex0401_01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	//주소로 바로 접근시 doget화면이 열림
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String name=request.getParameter("name");
		
		
		
		System.out.println("doGet으로 열림");
		//html문서로 작성이 된다는 것을 선언
		response.setContentType("text/html; charset=utf-8");
		//html화면으로 출력을 해주는 객체
		PrintWriter writer=response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>servlet 페이지 입니다.</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>doGet 로그인 페이지</h1>");
		writer.println("<p>id : "+id+"</p>");
		writer.println("<p>pw : "+pw+"</p>");
		writer.println("<p>name : "+name+"</p>");
		writer.println("<p>로그인하기 위해서 Form태그로 화면을 작성함</p>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String name=request.getParameter("name");
		
		
		
		System.out.println("doPost으로 열림");
		//html문서로 작성이 된다는 것을 선언
		response.setContentType("text/html; charset=utf-8");
		//html화면으로 출력을 해주는 객체
		PrintWriter writer=response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>servlet 페이지 입니다.</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>dopost 로그인 페이지</h1>");
		writer.println("<p>id : "+id+"</p>");
		writer.println("<p>pw : "+pw+"</p>");
		writer.println("<p>name : "+name+"</p>");
		writer.println("<p>로그인하기 위해서 Form태그로 화면을 작성함</p>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
	}

}
