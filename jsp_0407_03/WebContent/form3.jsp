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
		Enumeration enum2=session.getAttributeNames();
		
		while(enum2.hasMoreElements()){
			String session_n=enum2.nextElement().toString();
			String session_v=session.getAttribute(session_n).toString();
			out.println("섹션 이름 : "+session_n+"<br>");
			out.println("섹션 값 : "+session_v+"<br>");
			
			
		}
		
		String sessionId = session.getId();
		int sessionTime = session.getMaxInactiveInterval();
		
		out.println("섹션 고유번호 : "+sessionId+"<br>");
		out.println("섹션 유효시간 : "+sessionTime+"<br>");
		
		
		
		
		%>
		
		<form action="form3_1.jsp" name="form2" method="post">
			<p>지우고 싶은 섹션의 이름을 입력</p>
			<input type="text" name="del_name"><br>
			<input type="submit" value="전송">
		
		</form>
	</body>
</html>