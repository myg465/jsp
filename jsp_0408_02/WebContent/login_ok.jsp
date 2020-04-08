<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mem1" class="com.javalec.ex.J_member" scope="session" />
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
		
		if(id.equals(mem1.getJ_id())&&pw.equals(mem1.getJ_pw())){
			session.setAttribute("auth_User", mem1.getJ_id());
			session.setAttribute("nick_name", mem1.getJ_nickname());
			response.sendRedirect("index.jsp");
		}
		
		else{
		%>
			<script type="text/javascript">
				alert("아이디나 패스워드가 틀립니다.");
				history.back(-1);
			</script>
		<% 
			
		}
		
		
		%>
		
		
		
	</body>
</html>