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
		Cookie co1=new Cookie("id","admin");
		
		session.setAttribute("auth_User","admin");
		session.setAttribute("naver_id", "admin");
		session.setAttribute("pw", 1234);
		session.setAttribute("nick_name", "goldstar");
		
		%>
		<h2>섹션이 저장 되었습니다.</h2>
		<a href="session_get.jsp">섹션 보기</a>
	</body>
</html>