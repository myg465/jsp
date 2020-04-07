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
		Cookie[]cookies=request.getCookies();
		for(int i=0;i<cookies.length;i++){
			String cookie_ch=cookies[i].getName();
			if(cookie_ch.equals("auth_User")){
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
				response.sendRedirect("index1.jsp");
			}
		}
		%>
		
		
	</body>
</html>