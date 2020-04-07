<%@page import="java.util.Enumeration"%>
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
		<%! String nick_name; %>
		
		<%
		
		Enumeration enum3=session.getAttributeNames();
		if(session.getAttribute("id")!=null){
		while(enum3.hasMoreElements()){
			String id_ch=enum3.nextElement().toString();
			String id_val=session.getAttribute(id_ch).toString();
			
			if(id_val.equals(session.getValue("id").toString())){
				nick_name=session.getValue("nick_name").toString();
				break;
			}
			else{
				nick_name=null;
			}
		}
		}
		String log_ch=(String)session.getAttribute("id");
		boolean check=log_ch==null?false:true;
		
		if(check){
		%>
		
		
		<span><%=nick_name %>님 환영합니다.</span>
		<a href="logout.jsp">로그아웃</a>
		
		
		<% } else{
		%>
		
		
		<div id="login_f">
		<p id="login_p">네이버를 더 안전하고 편리하게 이용하세요.</p>
		<a href="login.html" id="login_btn">로그인</a><br>
		<div>
		<a href="#" id="login_box_first">아이디,비밀번호 찾기</a><a href="#" id="login_box_end">회원가입</a>
		</div>
		</div>	
		
		<% 
		} 
		%>
		
		
	</body>
</html>