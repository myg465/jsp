<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>로그인성공</h1>
		<p>로그인아이디 : <%= request.getParameter("id")%></p>
		<p><%= request.getParameter("name")%>님 환영합니다.</p>
		
	</body>
</html>