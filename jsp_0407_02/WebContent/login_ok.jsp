<%@page import="sun.awt.RepaintArea"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
		 function ale(){
			 alert("아이디나 비밀번호가 다릅니다.");
		 }
		
		
		</script>
	</head>
	<body>
		<%
		//id,pw비교 쿠키에 저장
		String id=request.getParameter("n_id");
		String pw=request.getParameter("n_pw");
		// 나중에 db와 연동해서 id,pw를 체크하는 곳
		if(id.equals("admin")&&pw.equals("1234")){
			Cookie co1=new Cookie("auth_User",id);
			co1.setMaxAge(1800);//30분
			response.addCookie(co1);
			response.sendRedirect("index1.jsp");
		}
		else{
			response.sendRedirect("login.html");
		}
		
		
		
		
		%>
		
		
		
	</body>
</html>