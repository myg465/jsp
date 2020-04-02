package com.javalec.ex;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class ContextLister_test implements ServletContextListener {

 
 @Override
 public void contextInitialized(ServletContextEvent sce) {
  System.out.println("웹어플리케이션이 처음 시작 할때 실행 됩니다.");
 }
 
 @Override
 public void contextDestroyed(ServletContextEvent sce) {
  System.out.println("웹어플리케이션이 종료 될때 실행 됩니다.");
 }
 
}
