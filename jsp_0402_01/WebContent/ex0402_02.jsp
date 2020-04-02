<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			table{ width:600px; border-collapse: collapse; }
			tr,td{ border: 1px solid #efefef; height: 40px;}
			td{ padding-left:15px;}
			td:nth-child(1) { width:200px;}
			td:nth-child(2) { width:400px;}
		
		</style>
	</head>
	<body>
		<table>
			<tr>
				<th>이름</th>
				<td><%=request.getParameter("name") %></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><%=request.getParameter("id") %></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><%=request.getParameter("pw") %></td>
			</tr>
			<tr>
				<th>휴대폰번호</th>
				<td><%=request.getParameter("tel") %></td>
			</tr>
			<tr>
				<th>직업</th>
				<td>
					<%
					switch(request.getParameter("job")){
					case "salery":
						out.println("회사원");
						break;
					case "mart":
						out.println("자영업자");
						break;
					case "student":
						out.println("학생");
						break;
					case "wife":
						out.println("전업주부");
						break;
					case "extra":
						out.println("기타");
						break;
					}
					%>
				</td>
			</tr>
			<tr>
				<th>결혼여부</th>
				<td>
					<%
					switch(request.getParameter("marige")){
					case "yes":
						out.println("예");
						break;
					case "no":
						out.println("아니오");
						break;
					}
					%>
				
				</td>
			</tr>
			<tr>
				<th>관심사</th>
				<td>
					<%
					String[]interest=request.getParameterValues("interest");
					for(int i=0;i<interest.length;i++){
						switch(interest[i]){
						case "com":
							out.print("컴퓨터/인터넷");
						break;
						case "movie":
							out.print("영화/비디오");
						break;
						case "music":
							out.print("음악");
						break;
						case "shopping":
							out.print("쇼핑");
						break;
						case "game":
							out.print("게임");
						break;
						case "culture":
							out.print("문화/예술");
						break;
						case "cook":
							out.print("요리");
						break;
						case "interior":
							out.print("인테리어");
						break;
						case "leisure":
							out.print("레저/여가");
						break;
						case "diet":
							out.print("건강/다이어트");
						break;
						
						}
					}
					
					%>
				</td>
			</tr>
			
		
		
		</table>
	
	</body>
</html>