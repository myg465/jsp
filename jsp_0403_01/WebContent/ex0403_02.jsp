<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<%!
		int sum=0;
		float avg=0;
		
		public int s_sum(int a,int b, int c){
			return sum=a+b+c;
		}
		public float s_avg(int a,int b, int c){
			return avg=sum/3f;
		}
		
		%>
		
		<%
			int kor=Integer.parseInt(request.getParameter("kor"));
			int eng=Integer.parseInt(request.getParameter("eng"));
			int math=Integer.parseInt(request.getParameter("math"));
			
			int []arr={1,2,3};
			out.println(Arrays.toString(arr));
		%>
		<h2>학생성적 입력완료</h2>
		<table>
			<tr>
				<td>학번</td>
				<td>
				<%= request.getParameter("hak_num") %>
				</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>
				<%= request.getParameter("name") %>
				</td>
			</tr>
			<tr>
				<td>합계</td>
				<td>
					<% out.println(s_sum(kor,eng,math)); %>
				</td>
			</tr>
			<tr>
				<td>평균</td>
				<td>
					<% out.println(s_avg(kor,eng,math)); %>
				</td>
			</tr>
			
		</table>
	</body>
</html>