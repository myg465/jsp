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
		String s_name1=request.getParameter("s_name1");
		String s_value1=request.getParameter("s_value1");
		String s_name2=request.getParameter("s_name2");
		String s_value2=request.getParameter("s_value2");
		
		session.setAttribute(s_name1, s_value1);
		session.setAttribute(s_name2, s_value2);
		
		%>
		
		<h2>섹션이 저장되었습니다.</h2>
		<a href="form3.jsp">섹션 확인하기</a>
		
		
		
	</body>
</html>