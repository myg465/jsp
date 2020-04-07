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
		String del_name=request.getParameter("del_name");
		session.removeAttribute(del_name);
		%>
		<jsp:forward page="form4.jsp"></jsp:forward>
		
		
		
		
	</body>
</html>