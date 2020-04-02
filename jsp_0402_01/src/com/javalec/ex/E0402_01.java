package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/E01")
public class E0402_01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public E0402_01() {
    	
    	
    }
    
    //선처리
    @PostConstruct
    public void postConstruct() {
    	System.out.println("postConstruct()-init()메소드 보다 먼저 실행");
    }
    
    
    @PreDestroy
    public void preDestroy() {
    	System.out.println("preDestroy()-destroy()메소드보다 먼저 실행");
    }
    
    @Override
    public void init() throws ServletException {
    	System.out.println("Servlet생성시 최초1번 init()메소드 실행");
    	System.out.println("최초 실행시 servlet에서 처리해야 할 구문이 있다면 여기에 입력");
    }
    
    @Override
    public void destroy() {
    	System.out.println("Servlet종료시 최초1번 destroy()메소드 실행");
    	System.out.println("종료시 servlet에서 처리해야 할 구문이 있다면 여기에 입력");
    }
    
    
    //주소로 바로 접근하면 doGet실행, method="get" doGet 실행
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("콘솔창에 doget()프린트");
	
	actionDo(request, response);
	
	}

	//method="post" doPost실행
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("콘솔창으로 dopost()프린트");
		
	actionDo(request, response);
	
	}
	
	protected void actionDo(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		System.out.println("콘솔창으로 actionDo()프린트");
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String[]hobby = request.getParameterValues("hobby");
		String major = request.getParameter("major");
		String address = request.getParameter("address");
//		String hobby1 = null;
		String major1 = null;
		String address1 = null;
		
//		for(int i=0;i<hobby.length;i++) {
//			switch(hobby[i]) {
//			case "cook":
//				hobby1+="요리";
//				break;
//			case "reading":
//				hobby1+="독서";
//				break;
//			case "run":
//				hobby1+="조깅";
//				break;
//			case "swim":
//				hobby1+="수영";
//				break;
//			}
//		}
		
		switch(major) {
		case "kor":
			major1="국문학과";
			break;
		case "eng":
			major1="영문학과";
			break;
		case "math":
			major1="수학과";
			break;
		case "design":
			major1="디자인학과";
			break;
		}
		
		switch(address) {
		case "seoul":
			address1="서울";
			break;
		case "gyeonggi":
			address1="경기";
			break;
		case "busan":
			address1="부산";
			break;
		case "incheon":
			address1="인천";
			break;
		}
		
		//취미는 독서,요리 이런식으로 출력, 전공은 국어국문, 주소는 경기
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer=response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<style> p{font-size:20px; color:red;}</style>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<p>안녕하세요.</p><p>"+name+"님 반갑습니다.</p>");
		writer.println("<p>아이디 : "+id+"</p><p>패스워드 : "+pw+"</p>");
		//취미출력
		String hobby_sel="";
		writer.println("<p>취미 : ");
		for(int i=0;i<hobby.length;i++) {
			switch (hobby[i]) {
			case "reading" :
				hobby_sel="독서";
				break;
			case "cook" :
				hobby_sel="요리";
				break;
			case "run" :
				hobby_sel="조깅";
				break;
			case "swim" :
				hobby_sel="수영";
				break;

			}
			writer.print(hobby_sel+" ");
			
		}
		writer.println("</p>");
		
		
//		writer.println("<p>취미 : "+hobby1+"</p>");
		writer.println("<p>전공 : "+major1+"</p>");
		writer.println("<p>주소 : "+address1+"</p>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
	}

}
