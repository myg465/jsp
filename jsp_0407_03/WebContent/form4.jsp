<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
		
		Enumeration enum3=session.getAttributeNames();
		
		while(enum3.hasMoreElements()){
			String session_n=enum3.nextElement().toString();
			String session_v=session.getAttribute(session_n).toString();
			out.println("섹션 이름 : "+session_n+"<br>");
			out.println("섹션 값 : "+session_v+"<br>");
		}
		
		
		session.invalidate();
		
		
		
		%>
		
		<a href="form5.jsp">전체 지우기</a>
		
		
		
		
	</body>
</html>