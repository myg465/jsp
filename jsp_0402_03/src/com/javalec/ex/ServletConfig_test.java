package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SC")
public class ServletConfig_test extends HttpServlet {
 private static final long serialVersionUID = 1L;
   
 @PostConstruct     
 private void postConstruct() {
  System.out.println("서블릿 최초 실행시 postConstruct 실행 - init()보다 먼저 실행");
 }
 
 @Override
 public void init() throws ServletException {
  System.out.println("서블릿 최초 실행시 init()메소드 한번 실행");
 }
 
 @Override
 public void destroy() {
        System.out.println("서블릿 종료시 destroy()메소드 한번 실행");
 }
 
 @PreDestroy
 private void preDestroy() {
  System.out.println("서블릿 종료시 preDestroy()메소드 한번 실행-destroy()보다 먼저 실행");

 }
 
 
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
  System.out.println("doGet()메소드 실행");
  
  response.setContentType("text/html; charset=utf-8");
  PrintWriter writer = response.getWriter();
  
  writer.println("<html>");
  writer.println("<head></head>");
  writer.println("<body>");
  writer.println("<p>서블릿 생명주기 테스트</p>");
  writer.println("context-param파라미터 : "+getServletContext().getInitParameter("id")+"<br>");
  writer.println("context-param파라미터 : "+getServletContext().getInitParameter("pw"));
  writer.println("</body>");
  writer.println("</html>");
  
 }

 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

 }

}
