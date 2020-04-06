<%@page import="jsp_0406_01.Student"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>학생입력저장</title>
		<style type="text/css">
			h1{ display:block; width:200px; border: 1px dashed #dfdfdf; margin:50px auto; text-align: center;}
			table { width:500px; margin:0 auto; border-collapse: collapse; color:#606060;}
			th,td{ border: 1px solid #efefef; }
			td{ text-align: center;}
			#button_wrap{width:190px;  margin:70px auto; }
			button{ height: 30px; background-color: #707070; color:#fff; font-size: 14px; margin:0 auto;}
			#button_wrap>a:nth-child(1){ margin-right:8px;}
		
		</style>
	</head>
	<body>
<%!  ArrayList<Student> list=new ArrayList<Student>(); %>
	
<%-- 회원 추가 --%>	
	
<% 	
	request.setCharacterEncoding("utf-8");
	String s_num=request.getParameter("s_num");
	String s_name=request.getParameter("s_name");
	int s_kor=Integer.parseInt(request.getParameter("s_kor"));
	int s_eng=Integer.parseInt(request.getParameter("s_eng"));
	int s_math=Integer.parseInt(request.getParameter("s_math"));
	
	list.add(new Student(s_num,s_name,s_kor,s_eng,s_math));
%>
	<h1>학생성적처리</h1>
<%--회원정보 출력 --%>
		<table>
			<tr>
				<th>학번</th>
				<th>이름</th>
				<th>국어</th>
				<th>영어</th>
				<th>수학</th>
				<th>합계</th>
				<th>평균</th>
				<th>등수</th>
				
			</tr>

<%
	for(int i=0;i<list.size();i++){
		Student s1=(Student)list.get(i);
%>		
			<tr>
				<td><a href="stu_modify.jsp?s_num=<%= s1.getS_num()%>&s_name=<%= s1.getS_name()%>&s_kor=<%= s1.getS_kor()%>
				&s_eng=<%= s1.getS_eng()%>&s_math=<%= s1.getS_math()%>"><%= s1.getS_num()%></a></td>
				<td><%= s1.getS_name()%></td>
				<td><%= s1.getS_kor()%></td>
				<td><%= s1.getS_eng()%></td>
				<td><%= s1.getS_math()%></td>
				<td><%= s1.getS_total()%></td>
				<td><%= s1.getS_avg()%></td>
				<td><%= s1.getRank()%></td>
				
			</tr>
<% 		
	}
%>
		</table>
		<div id="button_wrap">
		<a href="stu_inform.html"><button>회원추가</button></a><a href="stu_list.html"><button>처음 화면으로</button></a>
		</div>

		
		
	</body>
</html>