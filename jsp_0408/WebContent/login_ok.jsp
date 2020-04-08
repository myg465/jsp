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
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		//db에서 id,pw가지고 와서 비교
		if(id.equals("admin")&&pw.equals("1234")){
			//섹션추가
			session.setAttribute("auth_User", id);
			session.setAttribute("nick_name", "네이버닉네임");
			response.sendRedirect("naver_index1.jsp");
		}else{%>
		<script type="text/javascript">
			alert("아이디,패스워드가 잘못되었습니다. 다시 입력해 주세요.");
			history.back(-1); //뒤로가는 버튼
		</script>
		<%
		//response.sendRedirect("login.html");
		}
		
		%>
		
		
		%>
		
		
	</body>
</html>