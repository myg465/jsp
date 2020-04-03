<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			function check(){
				var pw_ch=/^[0-9]{1,}$/;
				var name_ch=/^[가-힣]{1,}$/;
				if(form.id.value==""){
					alert("아이디를 입력하세요.");
					form.id.focus();
					return false;
				}
				if(!(pw_ch.test(form.pw.value))){
					alert("비밀번호는 숫자만 입력하세요.");
					form.pw.value="";
					form.pw.focus();
					return false;
				}
				if(!(name_ch.test(form.name.value))){
					alert("이름은 한글만 입력하세요.");
					form.name.value="";
					form.name.focus();
					return false;
				}
				return true;
			}
		
		</script>
		
	</head>
	<body>
		<%
		if(!(request.getParameter("id")==null)){
			out.println(request.getParameter("id")+"가 잘못 입력되었습니다.<br> 다시한번 확인해 주세요.<br>");
		}
		
		%>
	
		<h2>로그인</h2>
		<form action="login_check.jsp" name="form" method="post" onsubmit="return check()">
			<label for="id">아이디</label>
			<input type="text" name="id" id="id"><br>
			<label for="pw">패스워드</label>
			<input type="password" name="pw" id="pw"><br>
			<label for="name">이름</label>
			<input type="text" name="name" id="name"><br>
			<input type="submit" value="로그인">
			<input type="reset" value="취소">
		
		</form>
	</body>
</html>