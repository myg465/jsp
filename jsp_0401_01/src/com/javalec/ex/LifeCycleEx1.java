package com.javalec.ex;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LC1")
public class LifeCycleEx1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	
	@Override
	public void init() throws ServletException {
		
		System.out.println("init()메소드가 최초 1번 호출됨");
		System.out.println("객체 생성시 바로 실행되어야 할 명령어는 여기에 구현");
		
	}
	
	@Override
	public void destroy() {
		System.out.println("destory()메소드가 최초 1번 호출됨");
		System.out.println("객체 종료시 바로 실행 되어야 하는 명령어는 여기에 구현");
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()메소드가 요청마다 실행");
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	}
	
	@PostConstruct
	private void initPostConstruct() {
		System.out.println("선처리 실행");
		System.out.println("init()메소드보다 먼저 실행");
	}
	
	@PreDestroy
	private void destroyPreDestroy() {
		System.out.println("후처리 실행");
		System.out.println("Destroy()메소드 다음으로 실행");
	}

}
