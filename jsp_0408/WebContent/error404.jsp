<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<% response.setStatus(200); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>페이지 오류</title>
		<style type="text/css">
		
			*{ margin:0; padding:0; }
			div{ width:800px; margin: 50px auto; }
			img{ width:700px;}
		
		</style>
	</head>
	<body>
		<div>
			<p>404페이지오류</p>
			<img alt="에러404페이지" src="img/error404.jpg">
			<%--<%=exception.getMessage() --%>
		</div>
	</body>
</html>