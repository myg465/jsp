<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>naver페이지에서 로그아웃을 하였습니다.</h2>
		<%
		Cookie[] cookies = request.getCookies();
		for(int i=0;i<cookies.length;i++){
			cookies[i].setMaxAge(0);
		}
		
		%>
		<a href="cookie_test.jsp">쿠키확인</a>
	
	</body>
</html>