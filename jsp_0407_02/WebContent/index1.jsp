<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			*{ margin:0; padding:0;}
			
			#login_f{ width: 332px; height: 120px; border: 1px solid #efefef; margin:30px auto; 
				padding:15px 25px;}
			
			#login_p{ font-size:12px; color:#888888; }
			
			#login_btn{ display:block; width:280px; height:37px; text-align: center;}
			
		</style>
	</head>
	<body>
		<%!String auth_User; %>
	
		<%
		Cookie[]cookies=request.getCookies();
		for(int i=0;i<cookies.length;i++){
			String cookie_ch = cookies[i].getName();
			if(cookie_ch.equals("auth_User")){
				auth_User=cookies[i].getValue(); //id:admin저장
			}
			else{
				auth_User=null;
			}
		}
		
		if(auth_User==null){
		%>
		<div id="login_f">
		<p id="login_p">네이버를 더 안전하고 편리하게 이용하세요.</p>
		<a href="login.html" id="login_btn">로그인</a><br>
		<div>
		<a href="#" id="login_box_first">아이디,비밀번호 찾기</a><a href="#" id="login_box_end">회원가입</a>
		</div>
		</div>	
		<% 	
		}else{%>
		
		
		
		<span><%=auth_User %>님</span>
		<a href="logout.jsp">로그아웃</a>
		
		
		<%
		}
		%>
		
	
		
		
		
		
		
		
	</body>
</html>