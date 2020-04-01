package com.javalec.ex;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/F_ok")
public class Form_ok extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Form_ok() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//method=get로 설정되있을 경우 실행됨, 주소로 바로 접근해도 실행됨
		System.out.println("doget로 실행됨");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//method=post로 설정되있을경우 실행됨
		System.out.println("doPost로 실행됨");
		
		doGet(request, response);
	}

}
