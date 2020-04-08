<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> <%--post로 값을 받을때 인코딩 설정 --%>
  
<jsp:useBean id="stu01" class="com.javalec.ex.Student2" scope="page" /> <%--Bean설정(객체선언) --%>

<jsp:setProperty name="stu01" property="*" /> <%--form의 값을 Bean에 넣기 --%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>

	<h2>약식표현</h2>
	
		학번 : <%=stu01.getS_num() %><br>
		이름 : <%=stu01.getS_name() %><br>
		나이 : <%=stu01.getS_age() %><br>
		학년 : <%=stu01.getS_grade() %><br>
	
	 
	</body>
</html>