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
		//쿠키 저장하기
		String c_name=request.getParameter("c_name");
		String c_value=request.getParameter("c_value");
		Cookie cook1 =new Cookie(c_name,c_value);
		cook1.setMaxAge(60*30);
		response.addCookie(cook1);
		
		
		//쿠키 불러오기
		Cookie[] cook_read=request.getCookies();
		for(int i=0;i<cook_read.length;i++){
			out.println("<h2>모든 쿠키 출력</h2>");
			out.println("cookie이름 : "+cook_read[i].getName()+"<br>");
			out.println("cookie값 : "+cook_read[i].getValue()+"<br>");
		}
		
		
		
		%>
		
		<a href="form3.jsp">쿠키삭제후 읽기</a>
	</body>
</html>