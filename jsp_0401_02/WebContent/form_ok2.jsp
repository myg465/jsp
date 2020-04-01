<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			table{ border: 1px solid #ccc; border-collapse: collapse;}
			tr,td{ border: 1px solid #dfdfdf;}
		</style>
		<%request.setCharacterEncoding("utf-8"); %>
	</head>
	<body>
		<h1>회원정보</h1>
		<table>
			<tr>
				<th>이름</th>
				<td><%=request.getParameter("name") %></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><%=request.getParameter("id") %></td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><%=request.getParameter("pw") %></td>
			</tr>
			<tr>
				<th>취미</th>
				<td><%=Arrays.toString(request.getParameterValues("hobby"))%></td>
			</tr>
			<tr>
				<th>전공</th>
				<td><%=request.getParameter("major") %></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><%=request.getParameter("address") %></td>
			</tr>
		
		</table>
	</body>
</html>