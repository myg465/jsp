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
		//해당되는 섹션의 1개 지울때 사용
		session.removeAttribute("auth_User");
		//모든 섹션을 지울때 사용
		session.invalidate();
		response.sendRedirect("naver_index1.jsp");
		
		%>
	</body>
</html>