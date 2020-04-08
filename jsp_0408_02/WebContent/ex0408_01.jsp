<%@page import="com.javalec.ex.Student2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 객체선언  => Student2 stu = new Student2(); -->
<jsp:useBean id="stu" class="com.javalec.ex.Student2" scope="page" />
<jsp:useBean id="stu2" class="com.javalec.ex.Student2" scope="page" />
<jsp:useBean id="stu3" class="com.javalec.ex.Student2" scope="page" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
		<jsp:setProperty property="s_num" name="stu" value="1"/>
		<jsp:setProperty property="s_name" name="stu" value="홍길동"/>
		<jsp:setProperty property="s_age" name="stu" value="20"/>
		<jsp:setProperty property="s_grade" name="stu" value="1"/>
		
		<jsp:setProperty property="s_num" name="stu2" value="2" />
		<jsp:setProperty property="s_name" name="stu2" value="김유신" />
		<jsp:setProperty property="s_age" name="stu2" value="21" />
		<jsp:setProperty property="s_grade" name="stu2" value="2" />
		
		<jsp:setProperty property="s_num" name="stu3" value="3" />
		<jsp:setProperty property="s_name" name="stu3" value="강감찬" />
		<jsp:setProperty property="s_age" name="stu3" value="22" />
		<jsp:setProperty property="s_grade" name="stu3" value="3" />
		
		<h2>학생입력정보</h2>
		학번 : <jsp:getProperty property="s_num" name="stu" /><br>
		이름 : <jsp:getProperty property="s_name" name="stu" /><br>
		나이 : <jsp:getProperty property="s_age" name="stu" /><br>
		학년 : <jsp:getProperty property="s_grade" name="stu" /><br>
		-------------------------------------------------------<br>
		학번 : <jsp:getProperty property="s_num" name="stu2"/><br>
		이름 : <jsp:getProperty property="s_name" name="stu2"/><br>
		나이 : <jsp:getProperty property="s_age" name="stu2" /><br>
		학년 : <jsp:getProperty property="s_grade" name="stu2" /><br>
		-------------------------------------------------------<br>
		학번 : <jsp:getProperty property="s_num" name="stu3" /><br>
		이름 : <jsp:getProperty property="s_name" name="stu3" /><br>
		나이 : <jsp:getProperty property="s_age" name="stu3" /><br>
		학년 : <jsp:getProperty property="s_grade" name="stu3" /><br>
		
		<!-- 2, 김유신,21,2 / 3,강감찬,22,3 -->
	
		
		
		
	</body>
</html>