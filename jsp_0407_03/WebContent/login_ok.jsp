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
		String id=request.getParameter("n_id");
		String pw=request.getParameter("n_pw");
		
		if(id.equals("admin")&&pw.equals("1234")){
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);
			session.setAttribute("nick_name", "trick");
			response.sendRedirect("index.jsp");
		}
		else if(id.equals("choi")&&pw.equals("1212")){
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);
			session.setAttribute("nick_name", "choi");
			response.sendRedirect("index.jsp");
		}
		else{
		%>
			<script type="text/javascript"> alert("아이디나 패스워드가 틀립니다.");</script>
		<% 
			response.sendRedirect("login.html");
		}
		
		
		%>
		
		
		
	</body>
</html>