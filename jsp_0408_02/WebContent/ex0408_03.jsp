<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="m01" class="com.javalec.ex.Member" scope="page" />
<jsp:setProperty property="*" name="m01" /> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>

		<h2>회원정보</h2>
		이름 : <%=m01.getM_name() %><br>
		아이디 : <%=m01.getM_id() %><br>
		패스워드 : <%=m01.getM_pw() %><br>
		성별 : <%=m01.getM_gender() %><br>
		주소 : <%=m01.getM_address() %><br>
		
				
	</body>
</html>