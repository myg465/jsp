<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Arrays"%>
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
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String id=request.getParameter("id");
		String pw=request.getParameter("password");
		String[]hobby=request.getParameterValues("hobby");
		String major=request.getParameter("major");
		String address=request.getParameter("address");
		
		%>
		<table>
			<tr>
				<td>이름</td>
				<td><%=name%></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><%=id%></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><%=pw%></td>
			</tr>
			<tr>
				<td>취미</td>
				<td><%=Arrays.toString(hobby)%></td>
			</tr>
			<tr>
				<td>전공</td>
				<td><%=major%></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><%=address%></td>
			</tr>
		
		</table>
		<%  //Enumeration은 Iterator의 구버전
			Enumeration enumeration = request.getParameterNames();		
			//현재 읽어올 네임이 있는지 확인
			int i=0;
			while(enumeration.hasMoreElements()){
				i++;
				String enum_Name=enumeration.nextElement().toString();
				out.println("form "+i+"번째 변수 이름 : "+enum_Name+"<br>");
			}
		
		
		%>
		
	</body>
</html>