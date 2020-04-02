<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{ width:600px; font-size: 20px; border-collapse: collapse;}
	tr,td{ border: 1px solid #efefef;}
	td:nth-child(1) { width:200px;}
	td:nth-child(2) { width:400px;}
	
</style>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>
	<h1>회원가입</h1>
	<form action="" name="form" method="post" >
		<table>
			<tr>
				<td>아이디</td>
				<td><%=request.getParameter("id") %></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><%=request.getParameter("pw") %></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%=request.getParameter("name") %></td>
			</tr>
			<tr>
				<td>취미</td>
				<td>
				<%
				String[]hobby=request.getParameterValues("hobby");
				for(int i=0;i<hobby.length;i++){
					switch(hobby[i]){
					case "reading":
						out.print("독서 ");
						break;
					case "run":
						out.print("조깅 ");
						break;
					case "cook":
						out.print("요리 ");
						break;
					case "swim":
						out.print("수영 ");
						break;
					};
				};
				%>
				</td>
			</tr>
			<tr>
				<td>전공</td>
				<td>
				<%
				switch(request.getParameter("major")) {
				case "kor":
					out.println("국문학과");
					break;
				case "eng":
					out.println("영문학과");
					break;
				case "math":
					out.println("수학과");
					break;
				case "design":
					out.println("디자인학과");
					break;
				}
				
				%>
				</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>
				<%
				switch(request.getParameter("address")) {
				case "seoul":
					out.println("서울");
					break;
				case "gyeonggi":
					out.println("경기");
					break;
				case "busan":
					out.println("부산");
					break;
				case "incheon":
					out.println("인천");
					break;
				}
				%>
				</td>
			</tr>
			
			
		</table>
	
	
	
	</form>
	
</body>
</html>