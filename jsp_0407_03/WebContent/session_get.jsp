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
		Object obj1=session.getAttribute("auth_User");
		String auth_User=(String)obj1;
		out.println("session 값 : "+auth_User+"<br>");
		
		Object obj2=session.getAttribute("naver_id");
		String naver_id=(String)obj2;
		out.println("session 값 : "+naver_id+"<br>");
		
		Object obj3=session.getAttribute("pw");
		int pw=(int)obj3;
		out.println("session 값 : "+pw+"<br>");
		
		Object obj4=session.getAttribute("nick_name");
		String nick_name=(String)obj4;
		out.println("session 값 : "+nick_name+"<br>");
		
		out.println("-----------------------------------------<br>");
		
		String session_n;
		String session_v;
		
		Enumeration enum1 = session.getAttributeNames();
		while(enum1.hasMoreElements()){
			session_n = enum1.nextElement().toString();
			session_v = session.getAttribute(session_n).toString();
			out.println(" 섹션 : name - "+session_n+" ");
			out.println(" value - "+session_v+"<br>");
		}
		
		out.println("-----------------------------------------<br>");
		
		String sessionId = session.getId();
		out.println("섹션 고유번호 : "+sessionId+"<br>");
		
		out.println("-----------------------------------------<br>");
		
		int inter = session.getMaxInactiveInterval();
		out.println("섹션 유효시간 : "+inter+"<br>");
		
		session.removeAttribute("auth_User");
		
		
		%>
		<a href="session_del.jsp">섹션 지우기</a>
		
		
	</body>
</html>