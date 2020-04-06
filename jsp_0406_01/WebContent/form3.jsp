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
		Cookie[] cookies = request.getCookies();
		for(int i=0;i<cookies.length;i++){
			cookies[i].setMaxAge(0);
		}
		
		Cookie[] cook_read=request.getCookies();
		if(cook_read!=null){
		for(int i=0;i<cook_read.length;i++){
			out.println("<h2>모든 쿠키 출력</h2>");
			out.println("cookie이름 : "+cook_read[i].getName()+"<br>");
			out.println("cookie값 : "+cook_read[i].getValue()+"<br>");
		}
		}
		else{
			out.println("쿠키 정보가 없습니다.");
		}
		
		%>
		
</body>
</html>