<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>주류 및 담배를 판매할수 없습니다.</h2>
		<p>당신의 나이는
		<%=request.getParameter("age")%>
		세 입니다. 미성년자 입니다.
		</p>
	</body>
</html>