<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="mem1" class="com.javalec.ex.J_member" scope="session" />
<jsp:setProperty property="*" name="mem1" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 확인</title>
</head>
<body>
	이름 : <%= mem1.getJ_name() %><br>
	닉네임 : <%= mem1.getJ_nickname() %><br>
	아이디 : <%= mem1.getJ_id() %><br>
	패스워드 : <%= mem1.getJ_pw() %><br>
	성별 : <%= mem1.getJ_gender() %><br>
	직업 : <%= mem1.getJ_job() %><br>
	취미 : <%= Arrays.toString(mem1.getJ_hobby()) %><br>
	
	
	<br>
	<a href="index.jsp">메인이동</a>
	
</body>
</html>