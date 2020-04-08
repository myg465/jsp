<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mem1" class="com.javalec.ex.J_member" scope="session" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			*{ margin:0; padding:0;}
			
			a{ font-size:12px; color:#666666; text-decoration: none;}
			
			#login_f,#login_after{ width: 332px; height: 120px; border: 1px solid #efefef; margin:30px auto; 
				padding:15px 25px; box-sizing: border-box;}
			
			#login_p{ font-size:12px; color:#888888; }
			
			#login_btn_a{ margin:0 auto;}
			
			#login_btn{ width:280px; height: 37px; margin-top:8px;}
			
			#login_box_end{ float:right;}
			
			#login_f_bottom{ margin-top:8px;}
			
			#m_welcome{ display: block; font-size: 15px; color:#666666;}
			
			#logout_a{ display: block; width:60px; height:20px; border:1px solid #606060; border-radius:5px; 
			text-align: center; margin-top:40px; margin-left:200px;}
			
			
		</style>
	</head>
	<body>
		<%= session.getAttribute("auth_User") %>
		
		
		
		<%
		String s_user = (String)session.getAttribute("auth_User");
	  	if(s_user==null){
		
		%>
		<div id="login_f">
		<p id="login_p">네이버를 더 안전하고 편리하게 이용하세요.</p>
		<a href="login.html" id="login_btn_a"><img alt="" src="img/sp_login_v180727.png" id="login_btn"></a><br>
		<div id="login_f_bottom">
		<a href="#" id="login_box_first">아이디,비밀번호 찾기</a><a href="form3.html" id="login_box_end">회원가입</a>
		</div>
		</div>	
		
		
		<% } else{
		%>
		
		<div id="login_after">
		<span id="m_welcome"><strong><%=session.getAttribute("nick_name") %></strong>님 환영합니다.</span>
		<a href="logout.jsp" id="logout_a">로그아웃</a>
		</div>
		
		
		<% 
		} 
		%>
		
		
	</body>
</html>